# Localtunnel

## 1. wayshub-frontend bisa diakses melalui Localtunnel

### 1.1 Instalasi package Localtunnel
<img width="1440" alt="Screenshot 2023-08-30 at 15 17 34" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/8c6d2edf-1b6f-4b17-b173-5ed1cf342e49">
Langkah pertama, Install package Localtunnel menggunakan npm dengan menjalankan perintah:

```node
npm install -g localtunnel
```

### 1.2 Instalasi service Nginx
<img width="1438" alt="Screenshot 2023-08-30 at 15 23 15" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/7eee4a8f-1fc9-4f4f-9f15-8b704909f6d6">
Setelah itu, Kita install service Nginx dengan menjalankan perintah:

```node
sudo apt install nginx
```

### 1.3 Verifikasi instalasi service Nginx
<img width="1440" alt="Screenshot 2023-08-30 at 15 27 10" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/a8a9b14d-7f91-4842-a22e-802640dfb35f">
Jika service Nginx sudah ter-install, Kita perlu memverifikasi bahwa service Nginx sudah berjalan dengan benar dengan membuka IP server kita di web browser:

```node
192.168.100.11*
```
<sup>Sesuaikan dengan IP yang terdaftar di server*</sup>
<br>

### 1.4 Menjalankan Localtunnel diatas port NodeJS
<img width="1440" alt="Screenshot 2023-08-30 at 15 30 50" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/a55145b2-cd7b-4594-8fe4-4220272fda15">
Setelah Nginx dipastikan sudah berjalan dengan baik, Langkah selanjutnya adalah menjalankan Localtunnel-nya dengan menjalankan perintah:

```node
lt --port 3000
```
Disini saya mengisi port 3000 karena wayshub-frontend (NodeJS) berjalan pada port 3000 lalu saya mendapatkan link:

```node
https://cool-planets-nail.loca.lt
```

### 1.5 Membuka Localtunnel yang telah berjalan
<img width="1440" alt="Screenshot 2023-08-30 at 15 40 36" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/a999152c-6a48-4b28-8c0c-f5e1e5e33b3a">
Selanjutnya, kita membuka link yang tertulis di terminal dan akan terbuka tampilan seperti diatas lalu masukan IP Public yang kita miliki pada Endpoint IP setelah itu klik **Click to Submit**

```node
https://ipv4.icanhazip.com/
```
<sup>Berikut link untuk mengetahui IP Public lokal device yang digunakan</sup>


### 1.6 Localtunnel berjalan dengan baik
<img width="1440" alt="Screenshot 2023-08-30 at 15 44 19" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/5a079737-cdcc-4894-88bf-0d69a6414b77">
Jika berhasil, maka Localtunnel akan meredirect kita menuju wayshub-frontend. Ini menunjukan bahwa wayshub-frontend sudah dapat diakses oleh publik.

## 2. App python bisa diakses melalui localtunnel

### 2.1 Menjalankan Localtunnel diatas port Python
<img width="1438" alt="Screenshot 2023-08-30 at 15 51 07" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/91695145-c258-4c24-86b9-38ff2e1d9157">
Pertama-tama, saya menjalankan Localtunnel-nya dengan menjalankan perintah:

```python
lt --port 5000
```
Disini saya mengisi port 5000 karena Python berjalan pada port 5000 lalu saya mendapatkan link:

```python
https://fifty-pears-tell.loca.lt
```

### 2.2 Membuka Localtunnel yang telah berjalan
<img width="1440" alt="Screenshot 2023-08-30 at 15 55 04" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/36165c59-348d-44db-ac3b-79c0bd114239">
Selanjutnya, kita membuka link yang tertulis di terminal dan akan terbuka tampilan seperti diatas lalu masukan IP Public yang kita miliki pada Endpoint IP setelah itu klik <b>Click to Submit</b>

```node
https://ipv4.icanhazip.com/
```
<sup>Berikut link untuk mengetahui IP Public lokal device yang digunakan</sup>


### 2.3 Localtunnel berjalan dengan baik
<img width="1440" alt="Screenshot 2023-08-30 at 15 55 58" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/103000d3-1685-471f-b069-43aa11e39ee4">
Jika berhasil, maka Localtunnel akan meredirect kita menuju aplikasi Python yang berjalan. Ini menunjukan bahwa aplikasi Python sudah dapat diakses oleh publik.


