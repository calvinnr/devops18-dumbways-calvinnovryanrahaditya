# Basic Shell & Computer Networking

## 1. Perbedaan antara IP Private & Public, serta IP Dynamic & Static
 * IP Private
   * IP Private adalah alamat IP pribadi yang dimiliki oleh setiap perangkat
   * Tidak dapat diakses menggunakan jaringan internet secara langsung
   * Tidak perlu bayar untuk menggunakannya
   * Penggunaannya berskala lokal seperti Rumahan atau Ruangan Kantor
   * IP didapatkan dari Administrator Jaringan setempat
   * Setiap nomor IP bersifat tidak unik dan dapat digunakan kembali pada jaringan lain
   * Lebih aman karena hanya memanfaatkan jaringan lokal
   * Untuk terhubung ke internet membutuhkan IP Public/NAT
  
  * IP Public
    * IP Public adalah alamat IP yang digunakan router untuk berkomunikasi dengan jaringan yang lebih luas. Diberikan oleh penyedia layanan internet (ISP), dimana terdapat informasi sehingga dapat dilacak
    * Dapat terhubung ke internet
    * Perlu bayar ke ISP untuk dapat menggunakannya
    * Penggunaannya berskala global
    * IP didapatkan dari ISP
    * Setiap nomor IP bersifat unik dan tidak dapat digunakan kembali pada jaringan lain
    * Kurang aman karena dapat dilihat secara online
    * Tidak membutuhkan NAT untuk dapat tersambung ke internet
   
## 2. Buat rancangan sebuah jaringan dengan spesifikasi sebagai berikut!  
```ip
CIDR Block : 192.168.1.xxx/24
Subnet     : 255.255.255.0
Gateway    : 192.168.1.1
```

Rancangan Jaringan
* Router              : 192.168.1.1
* DNS                 : 1.1.1.1, 1.0.0.1 (Cloudflare)
* CIDR                : 192.168.1.0/24
* Subnet 1            : 192.168.1.0
  * IP Network        : 192.168.1.1
  * Host pertama      : 192.168.1.2
  * Host terakhir     : 192.168.1.62
  * IP Broadcast      : 192.168.1.63
* Subnet 2            : 192.168.1.64
  * IP Network        : 192.168.1.65
  * Host pertama      : 192.168.1.66
  * Host terakhir     : 192.168.1.126
  * IP Broadcast      : 192.168.1.127
* Subnet 3            : 192.168.1.128
  * IP Network        : 192.168.1.129
  * Host pertama      : 192.168.1.130
  * Host terakhir     : 192.168.1.191
  * IP Broadcast      : 192.168.1.192
* Subnet 4            : 192.168.1.192
  * IP Network        : 192.168.1.193
  * Host pertama      : 192.168.1.194
  * Host terakhir     : 192.168.1.254
  * IP Broadcast      : 192.168.1.255
 
## 3. Gunakan app.diagrams.net untuk membuat diagramnya, Referensi gambar sudah disertakan
![Diagram](https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/008fa1a6-3a6f-4430-86c9-a9436d5f329d)




