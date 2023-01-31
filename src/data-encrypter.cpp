#include <iostream>
#include "FileHandling.hpp"

int main()
{
    while (true)
    {
        std::cout << "\nData Encrypter:" << std::endl;
        // std::cout << "1) Encrypt file" << std::endl;
        // std::cout << "2) Decrypt file" << std::endl;
        std::cout << "3) Encrypt all files in folder" << std::endl;
        std::cout << "4) View encrypted folder" << std::endl;
        std::cout << "0) Exit" << std::endl;
        std::cout << "> ";

        int choice;
        std::cin >> choice;

        switch (choice) {
            case 3:
            {
                encryptInFolder();
                break;
            }
            case 4:
            {
                decryptInFolder();
                break;
            }
            case 0:
            {
                std::cout << "Exiting..." << std::endl;
                exit(0);
                break;
            }
            default:
            {
                std::cout << "Invalid choice" << std::endl;
                break;
            }
        }
    }

    return 0;
}
