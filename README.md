# Stockholm - Encryption Program

This project is for educational purposes only. You should never use this type of program for malicious purposes.

## Requirements

- Work in a **Linux** environment.
- The program must be executed within a **virtual machine** or **Docker container** using the distribution of your choice.
- The program should be able to encrypt and decrypt files in a folder called `infection` in the user's **HOME directory**.

## Features

### Available Options

- **`–help` or `-h`**: Displays the help message with available options.
- **`–version` or `-v`**: Displays the version of the program.
- **`–reverse` or `-r`**: Followed by the encryption key, this option will reverse the encryption (decrypt files).
- **`–silent` or `-s`**: Run the program without displaying any output (silent mode).
  
### Program Behavior

- The program will only act on files with extensions affected by the **Wannacry** ransomware (you will need to research these extensions).
- It will **encrypt** the files inside the `infection` folder in the **HOME** directory of the user.
- Encrypted files will be **renamed** with a `.ft` extension.
- If the file already has the `.ft` extension, it will not be renamed.
- The program can also **decrypt** files using the same encryption key.

### Encryption

- The program uses **AES** (Advanced Encryption Standard) encryption, which is widely recognized as secure.
- The encryption key must be **at least 16 characters** long.
  
### Error Handling

- The program will handle errors gracefully and will not stop unexpectedly under any circumstances.

## Setup Instructions

### Prerequisites

Ensure that you have the following installed:
- **Linux system** (or a virtual machine/Docker container running a Linux distro).
- **Python** or any other language that you prefer to implement this program (Python is commonly used for such tasks, but feel free to choose your preferred language).
- **OpenSSL** or **libsodium** library for encryption (whichever is chosen for encryption).

### Directory Structure

```bash
/ (root of your project)
  ├── infection/          # Folder where files will be encrypted or decrypted
  ├── stockholm/          # Program source code
  ├── Makefile            # Makefile for compilation
  └── README.md           # This README file
```

### How to Run

1. **Clone the repository**:
    ```bash
    git clone https://your-repository-url.git
    cd stockholm
    ```

2. **Build the project** (if applicable):
    - If you're using **Python**, no build step is required. However, if you're using a different language, the **Makefile** will handle the build process:
      ```bash
      make
      ```

3. **Run the program**:

    - To **encrypt** the files:
      ```bash
      ./stockholm --encrypt --key <your_encryption_key>
      ```

    - To **decrypt** the files (reverse operation):
      ```bash
      ./stockholm --reverse --key <your_encryption_key>
      ```

    - To display **help**:
      ```bash
      ./stockholm --help
      ```

    - To display the **version** of the program:
      ```bash
      ./stockholm --version
      ```

    - To run in **silent mode** (without any output):
      ```bash
      ./stockholm --silent
      ```

### File Format

- The program will only encrypt files that match the extensions affected by the **Wannacry** ransomware. You will need to research which extensions are affected and implement the check for these extensions.

### Example of Usage:

1. **Encrypt files**:
    - Files with specific extensions in the `infection` folder will be encrypted and renamed with `.ft` extension.
    ```bash
    ./stockholm --encrypt --key mysecretkey123
    ```

2. **Decrypt files**:
    - Files encrypted with the previous key can be decrypted back to their original state.
    ```bash
    ./stockholm --reverse --key mysecretkey123
    ```

---

## Notes on Encryption Library Choice

For this project, the **AES encryption algorithm** was chosen for its strong security and widespread usage. You may also use libraries such as **OpenSSL** or **libsodium**, but AES is widely regarded as secure and efficient for file encryption tasks.

## Makefile Example

```Makefile
CC=gcc
CFLAGS=-Wall -g

# Build target
all: stockholm

stockholm: stockholm.c
	$(CC) $(CFLAGS) -o stockholm stockholm.c

# Clean build artifacts
clean:
	rm -f stockholm
```

## Conclusion

This program is designed for educational purposes, providing a safe, encrypted environment to learn about encryption techniques, handling errors, and working with Linux systems. 

Do not use this program for malicious purposes. Ensure that you work within a controlled environment (such as a virtual machine or Docker container).

---

**Note**: Replace `<your_encryption_key>` with a secure key, and ensure your system has the necessary encryption libraries for this project to work.


