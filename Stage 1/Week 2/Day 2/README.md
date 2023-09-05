# Manage Server in Terminal

## 1. Penjelasan Text Manipulation beserta Step by Step
### 1.1 Cat
#### 1.1.1
<img width="1440" alt="1" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/e05f081a-3a7e-4385-9932-5fa8a6cc2632">
Untuk membuat suatu file baru dengan langsung memasuk-kan teks tanpa perlu menggunakan text editor dapat menjalankan perintah:

```shell
cat > cat1.txt
```

Lalu masuk-kan teks yang ingin disertakan pada file tersebut. Contoh 'Text Manipulation'. Setelah selesai tekan Control + D untuk menyimpan file

#### 1.1.2
<img width="1440" alt="2" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/aea32ef1-e57c-471d-9124-7431352ec2c6">
Untuk memindahkan isi dari file asal ke file tujuan dapat menjalankan perintah:

```shell
cat cat1.txt > cat2.txt
```

Jika file tujuan tidak ditemukan, perintah ini akan membuat file dengan nama 'cat2.txt', Sedangkan jika file tujuan memiliki nama yang sama maka isi dari file sebelumnya akan ditimpa.

#### 1.1.3
<img width="1440" alt="3" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/b09a07fe-14dd-4f03-9f70-2ce8f8b83617">
Untuk menambahkan isi pada file tersebut tanpa menimpa isi file dan menambahkannya pada garis baru dapat menjalankan perintah:

```shell
cat cat1.txt >> cat2.txt
```

#### 1.1.4
<img width="1440" alt="4" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/393c2a43-ba60-4d51-b3e6-d8d391bfd931">
Untuk menggabungkan beberapa file beserta isinya menjadi satu dapat menjalankan perintah:

```shell
cat cat1.txt cat2.txt > cat3.txt
```

### 1.2 Sed
#### 1.2.1
<img width="1440" alt="Screenshot 2023-09-06 at 00 56 51" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/e40ccb08-ec25-46b8-aed6-c22e2e0cb3b2">
Untuk merubah kata <i>unix</i> menjadi <i>linux</i> pada suatu file dapat menjalankan perintah:

```shell
sed -i 's/unix/linux/' cat4.txt
```

Di sini, argumen "-i" berfungsi mengubah berkas secara langsung. "s" menentukan operasi substitusi. "/" adalah pemisah. "unix" adalah pola pencarian dan "linux" adalah string pengganti.
Secara default, perintah sed mengganti kemunculan pertama pola kata dalam setiap baris dan tidak akan mengganti kemunculan kata kedua, ketiga dst dalam baris tersebut.

#### 1.2.2
<img width="1440" alt="Screenshot 2023-09-06 at 00 58 10" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/fab2ee8f-b2cf-4399-ba1b-9682b34d6daa">
Untuk merubah kata <i>unix</i> yang muncul pada sebuah pola dalam sebuah garis dapat menjalankan perintah:

```shell
sed -i 's/unix/chromeos/2' cat4.txt
```

Gunakan /1, /2, dst untuk mengganti kata yang muncul berdasarkan urutan kata yang akan muncul dari sebuah pola.

#### 1.2.3
<img width="1440" alt="Screenshot 2023-09-06 at 00 59 19" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/2ee28abe-be12-4eea-8cc2-9be145fe0554">
Untuk merubah kata <i>linux</i> menjadi <i>centos</i> secara global pada suatu file dapat menjalankan perintah:

```shell
sed -i 's/linux/centos/g' cat4.txt
```

### 1.3 Grep
#### 1.3.1
<img width="1440" alt="Screenshot 2023-09-06 at 01 00 55" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/ae45e890-99b8-4526-9ad4-6d8337bbd044">
Untuk mencari kata <i>centos</i> pada suatu file dapat menjalankan perintah:

```shell
grep centos cat4.txt
```

#### 1.3.2
<img width="1440" alt="Screenshot 2023-09-06 at 01 01 37" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/cc75a0bf-c6a2-4354-8dfc-adc29bd26d36">
Untuk mencari kata <i>Manipulation</i> pada setiap file yang terdapat dalam direktori dapat menjalankan perintah:

```shell
grep Manipulation *
```

### 1.4 Sort
#### 1.4.1
<img width="1440" alt="Screenshot 2023-09-06 at 01 02 30" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/b82db513-2a0a-4809-bb42-7899f3b2f4cd">
Untuk mengurutkan setiap isi berdasarkan alfabet pertama pada tiap baris yang terdapat pada suatu file dapat menjalankan perintah:

```shell
sort cat4.txt
```

#### 1.4.2
<img width="1440" alt="Screenshot 2023-09-06 at 01 03 20" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/f1aa4fc8-7969-4ea3-8eb4-63316a6d4ec8">
Untuk mengurutkan setiap isi berdasarkan alfabat pertama pada tiap baris yang terdapat pada suatu file secara berkebalikan dapat menjalankan perintah:

```shell
sort -r cat4.txt
```

### 1.5 Echo
#### 1.5.1
<img width="1440" alt="Screenshot 2023-09-06 at 01 05 11" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/30e08e2f-7d49-4efa-aa77-c7f153aa8a92">
Untuk mencetak kata <i>Hello Calvin</i> pada suatu file dapat menjalankan perintah:

```shell
echo "Hello Calvin" > cat1.txt
```

#### 1.5.2
<img width="1440" alt="Screenshot 2023-09-06 at 01 08 52" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/ac63a1eb-771d-4446-a6b2-c195e3251387">
Untuk mencetak kata <i>Calvin Novryan Rahaditya</i> pada garis baru pada suatu file dapat menjalankan perintah:

```shell
echo "Calvin Novryan Rahaditya >> cat1.txt
```

## 2. Penjelasan Tool HTOP

### 2.1 Instalasi Package HTOP
<img width="1440" alt="Screenshot 2023-09-06 at 01 11 06" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/86c6fada-5a1c-4818-9eee-861ebba38500">
Untuk meng-install package <b>HTOP</b> dapat menjalankan perintah:

```shell
sudo apt install htop -y
```
<sup>Argumen "-y" berarti Yes pada saat Prompt Instalasi</sup>

### 2.2 Jalankan HTOP
<img width="1440" alt="Screenshot 2023-09-06 at 01 12 57" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/3fc38763-8bf3-4dd9-9cdc-03bd0c06553d">
Untuk menjalankan aplikasi <b>HTOP</b> dapat menjalankan perintah:

```shell
htop
```

### 2.3 Tampilan HTOP
<img width="1440" alt="Screenshot 2023-09-06 at 01 11 54" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/bcbbc0b1-3365-48fd-bcc8-91957a0336ca">
<b>HTOP</b> memiliki tiga bagian utama yaitu:
1. Header, Terdapat informasi mengenai CPU, Memory, Swap, Tasks, Load Average dan Uptime
2. Daftar PID
3. Footer, Terdapat berbagai opsi seperti Help, Setup, Search, Filter dll

## 3. Buatlah BASH Script untuk instalasi NGINX
### 3.1 Buat File Script
<img width="1440" alt="Screenshot 2023-09-06 at 01 19 32" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/d35df259-5ec8-4e95-a55c-8ffc2cf7cc95">
Pertama buatlah file dengan nama <b>install_nginx.sh</b> dengan menjalankan perintah:

```shell
nano install_nginx.sh
```

### 3.2 Isi File Script
<img width="1440" alt="Screenshot 2023-09-06 at 01 18 23" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/7c26c5a9-aa11-4ff4-a9a7-0bd2ddff6806">
Lalu masukan perintah berikut pada text editor:

```shell
#!/usr/bin/env bash

sudo apt update
sudo apt install nginx -y
sudo ufw allow 'Nginx Full'
sudo ufw status
sudo systemctl status nginx
```

Terdapat 6 perintah yang dimasukan pada Script diatas secara berurutan yaitu, Update Repository, Install Nginx, UFW Open Port Nginx Full, Cek Status UFW, Cek Status Nginx 

### 3.3 Jalankan Script
<img width="1440" alt="Screenshot 2023-09-06 at 01 19 50" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/2faffb63-5166-4ca8-b5bb-0ffb64a30ea2">
Setelah itu jalankan BASH Script dengan menjalankan perintah:

```shell
sh install_nginx.sh
```
