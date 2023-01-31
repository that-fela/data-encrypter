#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <filesystem>
#include <termios.h>
#include <unistd.h>

#include "FileHandling.hpp"
#include "../lib/AES.h"
#include "../lib/SHA512.h"

static Config config;

int getFileSize(std::string filename)
{
    std::ifstream in_file(filename, std::ios::binary);
    if (!in_file.is_open())
    {
        std::cout << "Error opening file" << std::endl;
        return -1;
    }
    in_file.seekg(0, std::ios::end);
    int file_size = in_file.tellg();
    in_file.close();

    return file_size;
}

int overWriteAndRemove(std::string filename, bool bRemove)
{
    int file_size = getFileSize(filename);

    std::ofstream file(filename, std::ios::out | std::ios::binary);
    if (!file.is_open())
    {
        std::cout << "Error opening file" << std::endl;
        return -1;
    }

    file.seekp(0, std::ios::beg);
    file << std::string(file_size, '\0');
    file.close();

    std::cout << "File(s) overwritten" << std::endl;

    if (bRemove)
    {
        remove(filename.c_str());
        std::cout << "File(s) removed" << std::endl;
    }

    return 0;
}

int updateConfig()
{
    std::ifstream file("config.cfg");
    if (!file.is_open())
    {
        std::cout << "Error opening config file" << std::endl;
        return -1;
    }

    std::string line;
    while (std::getline(file, line))
    {
        if (line.find("encryption_folder") != std::string::npos)
        {
            config.encryption_folder = line.substr(line.find("=") + 1);
        }
        else if (line.find("decryption_folder") != std::string::npos)
        {
            config.decryption_folder = line.substr(line.find("=") + 1);
        }
        else if (line.find("filesync_folder") != std::string::npos)
        {
            config.filesync_folder = line.substr(line.find("=") + 1);
        }
    }

    file.close();

    return 0;
}

std::string getPassword() {
    SHA512 sha;
    std::string password;

    termios oldt;
    tcgetattr(STDIN_FILENO, &oldt);
    termios newt = oldt;
    newt.c_lflag &= ~ECHO;
    tcsetattr(STDIN_FILENO, TCSANOW, &newt); // Hides

    std::cout << "Enter your password: ";
    // getline(std::cin, password);
    std::cin >> password;
    tcsetattr(STDIN_FILENO, TCSANOW, &oldt); // return to display
    std::cout << std::endl;
    
    return sha.hash(password);
}

std::vector<unsigned char> readFileAsBytes(std::string filename) {
    std::ifstream file(filename, std::ios::binary);
    if (!file.is_open())
    {
        std::cout << "Error opening file" << std::endl;
        exit(-1);
    }

    file.seekg(0, std::ios::end);
    int file_size = file.tellg();
    file.seekg(0, std::ios::beg);

    std::vector<unsigned char> bytes(file_size);
    file.read((char*)bytes.data(), file_size);

    file.close();

    return bytes;
}

int writeFileFromBytes(std::string filename, std::vector<unsigned char> bytes) {
    std::ofstream file(filename, std::ios::out | std::ios::binary);
    if (!file.is_open())
    {
        std::cout << "Error opening file" << std::endl;
        return -1;
    }

    file.write((char*)bytes.data(), bytes.size());
    file.close();

    return 0;
}

int encryptFile(std::string infile, std::string outfile, std::string password) {
    AES aes(AESKeyLength::AES_256);

    // get file size bytes
    std::vector<unsigned char> bytes = readFileAsBytes(infile);
    int padding = 0;
    if (bytes.size() % 16 == 0) {
        padding = 16;
        for (int i = 0; i < 16; i++) {
            bytes.insert(bytes.begin(), 0);
        }
    } else {
        while (bytes.size() % 16 != 0) {
            bytes.insert(bytes.begin(), 0);
            padding++;
        }
    }

    bytes[0] = padding;

    auto c = aes.EncryptECB(bytes, std::vector<unsigned char>(password.begin(), password.end()));

    writeFileFromBytes(outfile, c);

    return 0;
}

int decryptFile(std::string infile, std::string outfile, std::string password) {
    AES aes(AESKeyLength::AES_256);

    // get file size bytes
    std::vector<unsigned char> bytes = readFileAsBytes(infile);
    auto c = aes.DecryptECB(bytes, std::vector<unsigned char>(password.begin(), password.end()));

    int padding = c[0];
    for (int i = 0; i < padding; i++) {
        c.erase(c.begin());
    }

    writeFileFromBytes(outfile, c);

    return 0;
}

int encryptInFolder() {
    updateConfig();

    // find all files in folder
    std::vector<std::string> files;
    std::vector<std::string> filenames;
    for (const auto & entry : std::filesystem::directory_iterator(config.encryption_folder))
    {
        files.push_back(entry.path());
        filenames.push_back(entry.path().filename());
    }

    if (files.size() == 0) {
        std::cout << "No files found in folder" << std::endl;
        std::cin.get();
        return 1;
    }

    // encrypt each file
    std::string password = getPassword();
    for (int i = 0; i < files.size(); i++) {
        std::string outfile = config.filesync_folder + filenames[i] + ".pniz";
        encryptFile(files[i], outfile, password);
    }
    std::cout << "Files encrypted" << std::endl;

    // remove original file
    for (int i = 0; i < files.size(); i++) {
        overWriteAndRemove(files[i], true);
    }
    std::cout << "Original files removed" << std::endl;

    return 0;
}

int decryptInFolder() {
    updateConfig();

    // find all files in folder
    std::vector<std::string> files;
    std::vector<std::string> filenames;
    for (const auto & entry : std::filesystem::directory_iterator(config.filesync_folder))
    {
        files.push_back(entry.path());
        filenames.push_back(entry.path().filename());
    }

    if (files.size() == 0) {
        std::cout << "No files to decrypt" << std::endl;
        return 1;
    }

    std::cout << "Available Files:" << std::endl;
    for (int i = 0; i < files.size(); i++) {
        std::cout << i << ": " << filenames[i] << std::endl;
    }

    int file_num;
    while (true) {
        std::cout << "Enter file number to decrypt: ";
        std::cin >> file_num;
        if (file_num >= 0 && file_num < files.size()) {
            break;
        }
    }

    std::string outfile = config.decryption_folder + filenames[file_num].substr(0, filenames[file_num].size() - 5);
    std::cout << "Decrypting to: " << outfile << std::endl;
    try {
        decryptFile(files[file_num], outfile, getPassword());
    } catch (const std::exception& e) {
        std::cout << "Error decrypting file" << std::endl;
        std::cin.get();
        return 1;
    }

    std::string save;
    std::cout << "Save decrypted file? (y/N): ";
    std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n'); 
    std::getline(std::cin, save);
    if (save == "N" || save == "n" || save.empty()) {
        overWriteAndRemove(outfile, true);
    } else {
        std::cout << "Decrypted file saved" << std::endl;
    }

    return 0;
}