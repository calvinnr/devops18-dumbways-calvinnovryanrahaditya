# NodeJS BASH Script

## 1. Install nodeJS using BASH Script

### 1.1 Buat File Script
<img width="1440" alt="Screenshot 2023-09-06 at 02 25 04" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/0434135a-21b3-4392-a642-60f3602c06e1">
Pertama, Buat File Script dengan nama <b>NodeJS_BASH_Script.sh</b> dengan menjalankan perintah:

```shell
nano NodeJS_BASH_Script.sh
```

### 1.2 Isi File Script
<img width="1440" alt="Screenshot 2023-09-06 at 02 25 22" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/09df9a30-72d6-43bd-bdaf-a66a9e6817e8">
Lalu, Isi File Script dengan perintah berikut:

```shell
#!/usr/bin/env bash

sudo apt update
sudo apt install nodejs -y
node -v
sudo apt install npm -y
```

Terdapat 4 perintah pada Script diatas yaitu, Update Repository, Install NodeJS, Cek Versi NodeJS, Install NPM

### 1.3 Menjalankan Script
<img width="1440" alt="Screenshot 2023-09-06 at 02 30 24" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/f224f4db-23d3-4dce-bd2d-8198a631aaec">
Setelah itu jalankan Script dengan menjalankan perintah:

```shell
sh NodeJS_BASH_Script.sh
``` 
