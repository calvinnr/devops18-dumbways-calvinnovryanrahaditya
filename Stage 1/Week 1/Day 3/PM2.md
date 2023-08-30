# PM2

## 1. Instalasi PM2 secara global

### 1.1 Install PM2
<img width="1440" alt="Screenshot 2023-08-30 at 16 05 04" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/08c4fa1a-bf03-4cae-b7ca-441e957c2472">
Pertama-tama kita perlu meng-install package PM2-nya terlebih dahulu dengan menjalankan perintah:

```node
npm install pm2 -g
```

## 2.1 Jalankan aplikasi NodeJS menggunakan PM2

### 2.1.1 Menjalankan NodeJS dengan PM2
<img width="1440" alt="Screenshot 2023-08-30 at 16 12 02" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/501840b2-652d-488f-8e58-9ef2b8e7ef80">
Setelah PM2 ter-install, lalu kita coba jalankan NodeJS menggunakan PM2 dengan menjalankan perintah:

```node
pm2 start index.js
```
Jika berhasil, maka akan muncul tampilan seperti diatas. Ini menandakan PM2 dapat menjalankan NodeJS dengan baik

## 2.2 Jalankan aplikasi Python menggunakan PM2

### 2.2.1 Menjalankan Python dengan PM2
<img width="1437" alt="Screenshot 2023-08-30 at 16 16 03" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/de6d0a8f-8a83-45bb-ac96-164e9c550a6d">
Kita coba jalankan Python menggunakan PM2 dengan menjalankan perintah:

```python
pm2 start index --interpreter=python
```
Jika berhasil, maka akan muncul tampilan seperti diatas. Ini menandakan PM2 dapat menjalankan Python dengan baik
