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
   
  * IP Dynamic
    * IP Dinamis merupakan pemberian IP secara otomatis dalam sebuah jaringan baik itu bersifat IP *public* atau IP *private*. IP ini akan berubah-ubah setiap waktu
    * Ditetapkan oleh *Server* DHCP
    * IP Dinamis memiliki sifat dimana ip-nya terus berubah-ubah bergantung dari *lease time*-nya.
    * Tidak perlu bayar untuk menggunakannya
    * Penggunaannya sering diterapkan di lingkungan rumahan dan kantor
 
  * IP Static
    * IP Address Statis merupakan pemberian IP yang tidak akan berubah, harus di konfigurasi manual jika ingin menggunakan IP statis
    * IP didapatkan dari ISP
    * IP Statis memiliki sifat dimana ip-nya tidak berubah-ubah karena dikonfigurasi secara *manual*
    * Penggunaanya tidak gratis dan perlu bayar ke ISP
    * Sering diterapkan di lingkungan yang lebih luas seperti area bisnis
   
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
  * IP Network        : 192.168.1.0
  * Host pertama      : 192.168.1.1
  * Host terakhir     : 192.168.1.254
  * IP Broadcast      : 192.168.1.255

 
## 3. Gunakan app.diagrams.net untuk membuat diagramnya, Referensi gambar sudah disertakan
![Diagram Final Banget](https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/e81bb7ae-5a3c-494d-80c9-4aa518496d40)






