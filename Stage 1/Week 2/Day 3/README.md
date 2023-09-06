# Web Server & Reverse Proxy

## 1. Buat 1 VM Tambahan untuk Nginx saja
<img width="710" alt="Screenshot 2023-09-06 at 18 42 13" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/2ddeff42-2dd8-44ee-9c42-48be43e65c9d">
Berikut 1 VM Tambahan, Disini saya menggunakan Multipass

## 2. Jalankan Aplikasi Wayshub menggunakan PM2
<img width="728" alt="Screenshot 2023-09-06 at 18 38 31" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/dc49b283-da96-4f81-b8c5-4b8c9a966dd3">
Menjalankan NodeJS pada direktori wayshub-frontend menggunakan PM2 dengan menjalankan perintah:

```shell
pm2 start npm --name "wayshub-frontend" -- start
```

## 3. Buatlah Reverse Proxy dengan directory /etc/nginx/dumbways

### 3.1 Masuk ke Direktori Nginx
<img width="730" alt="Screenshot 2023-09-06 at 18 12 45" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/77b9cb1a-ec2c-47da-a64a-0c8a3b6c8583">
Pertama, kita perlu masuk ke dalam direktori Nginx dengan menjalankan perintah:

```shell
cd /etc/nginx/
```

### 3.2 Membuat Direktori Dumbways
<img width="730" alt="Screenshot 2023-09-06 at 18 12 59" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/337406d4-b615-4a54-be0f-9b3388c88861">
Lalu setelah masuk ke direktori Nginx, kita buat folder dumbways dengan menjalankan perintah:

```shell
sudo mkdir dumbways
```

### 3.3 Masuk ke Direktori Dumbways
<img width="730" alt="Screenshot 2023-09-06 at 18 13 18" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/45b29690-786e-4255-bcdf-6160e517a8cc">
Setelah folder terbuat, kita masuk ke dalam folder tersebut dengan menjalankan perintah:

```shell
cd dumbways/
```

### 3.4 Membuat Config Reverse Proxy
<img width="730" alt="Screenshot 2023-09-06 at 18 13 25" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/7c693323-bd0a-4e6d-a4da-2f2a34bb3098">
Lalu, kita buat config Reverse Proxy yang akan kita terapkan dengan menjalankan perintah:

```shell
sudo nano my.reserve-proxy.conf
```
<br>
<img width="730" alt="Screenshot 2023-09-06 at 18 13 49" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/16de395c-7dfa-4b8a-8bd4-d56ac7b1adce">
Setelah masuk masukan perintah seperti diatas:

```nginx
server { 
    server_name calvin.xyz; 
  
    location / { 
             proxy_pass http://127.0.0.1:3000;
    }
}
```

### 3.5 Mengubah Config Nginx
<img width="730" alt="Screenshot 2023-09-06 at 18 16 32" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/8e54b9e8-640f-404a-b6bd-da708d4eb370">
Lalu, kembali pada direktori Nginx, Setelah itu kita perlu menambahkan Virtual Host Dumbways agar konfigurasi reverse-proxy yang terdapat didalamnya dapat terbaca dengan menjalankan perintah:

```shell
sudo nano nginx.conf
```

Setelah masuk cari baris <b>Virtual Host Configs</b> setelah itu tambahkan baris berikut:

```shell
include /etc/nginx/dumbways/*;
```

### 3.6 Pengecekan Nginx
<img width="730" alt="Screenshot 2023-09-06 at 18 16 49" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/a60ef2c1-93f1-475e-bef3-a3a717fc80fa">
Kita perlu melakukan pengecekan apakah konfigurasi reverse-proxy yang kita buat sesuai dengan aturan dengan menjalankan perintah:

```shell
sudo nginx -t
```

Dan jika sudah benar akan muncul baris seperti diatas

### 3.7 Restart Service Nginx
<img width="730" alt="Screenshot 2023-09-06 at 18 17 02" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/8279b146-a7a3-4966-b62c-c281a4444bbf">
Agar konfigurasi dapat berjalan dan terbaca kita perlu me-restart service Nginx-nya dengan menjalankan perintah:


```shell
sudo systemctl restart nginx
```

### 3.8 Membuat Virtual Hosts pada Device Lokal
<img width="730" alt="Screenshot 2023-09-06 at 18 30 48" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/d539b6bc-8d82-4a28-ad7c-d4db942cc0d2">
Karena saya disini menggunakan sistem operasi MacOS, kita hanya perlu masuk ke terminal setelah itu masukan perintah seperti diatas::

```shell
sudo nano /etc/hosts
```

Setelah masuk dalam file, Masukkan baris konfigurasi dibawah ::1

```shell
192.168.43.170 calvin.xyz
```
<sup>192.168.43.170 merupakan IP Server pada VM UTM</sup>

## 4. Dengan Nginx, Pastikan Wayshub Bisa Diakses ke Domain yang Diinginkan
<img width="1440" alt="Screenshot 2023-09-06 at 18 31 55" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/6aef541c-fb06-4bdd-b6a1-1d66b19aca52">
Berikut gambaran bahwa Wayshub dapat diakses menggunakan url yang telah didaftarkan. Disini saya mendaftarkan url <i><b>calvin.xyz</i></b>
