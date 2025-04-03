# Stockholm - Encryption Program

## Requirements
- The program must be executed within a **virtual machine** or **Docker container**.
- The program encrypt and decrypt files in a folder called `infection` in the user's **HOME directory**.

## Features
### Available Options
- **`–h`**: Displays the help message with available options.
- **`–v`**: Displays the version of the program.
- **`–r`**: Followed by the encryption key, this option will reverse the encryption (decrypt files).
- **`–s`**: Run the program without displaying any output (silent mode).
  
### Program Behavior
- The program will only act on files with extensions affected by the **Wannacry** ransomware. It will **encrypt** the files inside the `infection` folder.
- Encrypted files will be **renamed** with a `.ft` extension. If the file already has the `.ft` extension, it will not be renamed.
- The program can also **decrypt** files using the same encryption key.

### Encryption
- The program uses **AES** (Advanced Encryption Standard) encryption, which is widely recognized as secure. The encryption key is 16 characters long.
  
## Setup Instructions
### How to Run
1. **Example of Usage**:
     - Create the test files:
      ```bash
      make
      ```
    - To **encrypt** the files:
      ```bash
      python3 ./stockholm
      ```
    - To **decrypt** the files (reverse operation):
      ```bash
      python3 ./stockholm -r <your_encryption_key>
      ```
    - To display **help**:
      ```bash
      python3 ./stockholm -h
      ```
    - To display the **version** of the program:
      ```bash
      python3 ./stockholm -v
      ```
    - To run in **silent mode** (without any output):
      ```bash
      python3 ./stockholm -s
      ```


