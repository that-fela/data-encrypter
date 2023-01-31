#ifndef FileHandling_hpp
#define FileHandling_hpp

struct Config {
    std::string encryption_folder;
    std::string decryption_folder;
    std::string filesync_folder;
};

int overWriteAndRemove(std::string filename, bool bRemove = true);

int encryptFile(std::string infile, std::string outfile, std::string password);
int decryptFile(std::string infile, std::string outfile, std::string password);

int encryptInFolder();
int decryptInFolder();

#endif // FileHandling_hpp