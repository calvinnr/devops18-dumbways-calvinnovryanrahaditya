# Load Balancing

## 1. Menggunakan 2 Server, Jalankan Load Balancing yang Berfungsi dengan Baik

### 1.1 Masuk ke Direktori Dumbways
<img width="710" alt="Screenshot 2023-09-06 at 19 48 31" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/d811161c-27ac-4236-b932-ccb1624f6a41">
<br>
<img width="710" alt="Screenshot 2023-09-06 at 19 48 37" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/c2ef8295-38fb-40fc-931d-c5385d6949c6">
<br>
Pertama, kita masuk ke direktori Dumbways pada Nginx dengan menjalankan perintah:

```shell
cd /etc/nginx/dumbways
```

### 1.2 Menambahkan Config pada File Reverse Proxy
<img width="710" alt="Screenshot 2023-09-06 at 19 48 45" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/575f7200-8582-4058-afde-707e9464c0c6">
<br>
Setelah itu kita masuk ke filenya dengan menjalankan perintah:

```shell
sudo nano my.reverse-proxy.conf
```

Setelah masuk, kita masukan konfigurasi berikut:

```shell
upstream domain {
	server 192.168.43.170:3000;
	server 192.168.64.3:3000;
}
server {
    server_name calvin.xyz;

    location / {
             proxy_pass http://domain;
   }
}
```

### 1.3 Pengecekan Konfigurasi Nginx
<img width="710" alt="Screenshot 2023-09-06 at 19 49 30" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/799ba3ab-9d19-49d2-afb2-056cda9f39e0">
<br>
Setelah file disimpan, kita perlu menjalankan perintah berikut untuk memastikan file konfigurasi berjalan dengan benar:

```shell
sudo nginx -t
```

### 1.4 Restart Service Nginx
<img width="710" alt="Screenshot 2023-09-06 at 19 49 37" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/7dde9f97-4864-4e90-b88a-4e6e5d08a576">
<br>
Setelah dipastikan berjalan dengan benar, Kita perlu me-restart service Nginx-nya agar konfigurasi dapat dipastikan berjalan dengan menjalankan perintah:

```shell
sudo systemctl restart nginx
```

### 1.5 Mematikan Aplikasi Wayshub pada Salah Satu Server
<img width="710" alt="Screenshot 2023-09-06 at 19 49 47" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/1cba15a8-11b3-4646-9b83-26829cba1dd3">
<br>
<img width="710" alt="Screenshot 2023-09-06 at 19 49 56" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/e478c724-ae25-4976-afdb-037a7082e024">
<br>
Disini saya mematikan aplikasi Wayshub yang berada pada VM UTM dan tetap menjalankan aplikasi Wayshub pada server Multipass

### 1.6 Load Balancing Berjalan dengan Baik
<img width="1440" alt="Screenshot 2023-09-06 at 19 50 12" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/acc96758-f92a-421d-8fba-f9a8e870967a">
Dapat dilihat pada gambar diatas, Load Balancing dapat berjalan dengan baik karena walaupun salah satu server mati, trafik yang masuk kedalam aplikasi langsung dialihkan pada Server Multipass.
