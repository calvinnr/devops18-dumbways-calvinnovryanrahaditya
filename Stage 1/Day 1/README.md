# Introduction to DevOps

## 1. Definisi DevOps

DevOps menggabungkan **Pengembangan** (*Dev*) dan **Operasi** (*Ops*) untuk menyatukan orang, proses, dan teknologi dalam perencanaan, pengembangan, pengiriman, dan operasi aplikasi. DevOps memungkinkan koordinasi dan kolaborasi antara peran yang sebelumnya dipisahkan sesuai dengan jenis pekerjaan yang dilakukan seperti pengembangan, operasi TI, rekayasa kualitas, dan keamanan

## 2. Sebutkan lifecycle DevOps (Continuous...) dan Jelaskan definisi-definisinya!

1. Plan    : Proses perencanaan untuk seluruh alur kerja yang dibutuhkan sebelum developers mulai menulis kode program.
2. Code    : Proses ini merupakan tahap dimana developers mulai menulis kode yang dibutuhkan untuk membuat suatu produk.
3. Build   : Aplikasi yang sudah siap untuk masuk ke tahap pengujian, akan langsung di build supaya dapat mengetahui apakah kode tersebut masih terdapat error atau sudah layak masuk ke divisi tester.
4. Test    : Merupakan tahap pengujian fungsional aplikasi secara internal. Jika pada proses tersebut terdapat masalah fungsionalitas, maka akan dilaporkan ke tim developer untuk diperbaiki.
5. Release : Setiap perubahan kode yang telah melewati serangkaian pengujian dan dinyatakan lolos, maka developers akan membuat sebuah release versi dari produk tersebut.
6. Deploy  : Release versi pada tahap sebelumnya akan digunakan untuk dijalankan ke server, sehingga dapat digunakan oleh orang lain (publik).
7. Operate : Aplikasi yang sudah selesai dijalankan pada server, maka dapat digunakan secara publik. Dan memastikan bahwa tidak ada masalah ketika di akses baik dari HP ataupun komputer.
8. Monitor : Tim Operations akan melakukan pemantauan infrastruktur, sistem, dan aplikasi. Hal ini dilakukan untuk memastikan bahwa produk atau aplikasi yang dikembangkan dapat berjalan dengan lancar.

## 3. Instalasi Ubuntu 20.04.6 LTS Live Server menggunakan VM UTM

### Tahap Konfigurasi di VM UTM

1. Berikut tampilan awal software VM UTM, Lalu pilih **Create a New Virtual Machine**
<img width="898" alt="Screenshot 2023-08-28 at 17 48 56" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/819e340e-4a6b-48c0-9312-5d17a39917eb"> 

2. Lalu setelah itu pilih **Emulate** agar VM dapat menjalankan OS selain arsitektur ARM64, Karena Macbook M1 tidak mendukung arsitektur x86/x64
<img width="898" alt="Screenshot 2023-08-28 at 17 49 00" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/6a54c4ce-9c46-44b5-a309-61ab670f56d5"> 

3. Lalu pilih **Linux** karena kita akan menginstall OS *Ubuntu 20.04.6 Live Server*
<img width="898" alt="Screenshot 2023-08-28 at 17 49 04" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/67ad65f8-edd6-43fe-b15d-63a3ad39f56a">

4. Setelah itu pilih *Browse* untuk memilih file ISO yang akan dijadikan dasar instalasi OS-nya
<img width="898" alt="Screenshot 2023-08-28 at 17 49 11" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/afdb7d82-1d99-446c-81c6-093c5847b5be">

5. Lalu pilih ISO **Ubuntu-20.04-6-live-server-amd64.iso**
<img width="898" alt="Screenshot 2023-08-28 at 17 50 00" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/c9995961-e877-4a28-9787-9e7a640f0010">

6. Setelah ISO terpilih, maka kita *Continue* untuk lanjut ke tahap selanjutnya
<img width="898" alt="Screenshot 2023-08-28 at 17 50 06" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/7c4377a3-21c8-42b7-bc66-d45048551989">

7. Pada tahap ini klik centang pada **Enable hardware OpenGL acceleration** untuk meningkatkan kinerja VM-nya. Untuk *Architecture, System, Memory dan CPU* dibiarkan *default* saja. Setelah itu *Continue*
<img width="898" alt="Screenshot 2023-08-28 at 17 50 13" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/295d297a-3c2e-4f9e-b267-cb1dca61a87b">

8. Untuk storage saya mengisi **20GB** saja, lalu klik *Continue* untuk lanjut ke tahap selanjutnya
<img width="898" alt="Screenshot 2023-08-28 at 17 50 33" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/9acd3c10-5cbe-4b09-b320-6079816c8c45">

9. Berikut *Summary* dari konfigurasi VM dengan OS Ubuntu yang akan kita instalasi. Disini saya menceklis **Open VM Settings** untuk mengatur *Network Adapter*-nya
<img width="898" alt="Screenshot 2023-08-28 at 17 50 49" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/a9f3df4d-45eb-4449-85bf-8d10d92e7a88">

10. Pada tab *Network*, saya merubah *Network Mode* dari **Shared Network** menjadi **Bridged**. Agar VM dapat mengakses internet dan memiliki IP yang berbeda dengan device yang saya gunakan
<img width="900" alt="Screenshot 2023-08-28 at 17 51 28" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/321cde0f-1913-4cb9-ab7c-597d1cc1cadc">

11. Berikut konfigurasi dari *Network Adapter*-nya, setelah selesai klik *Save* agar perubahan yang telah terjadi dapat tersimpan
<img width="898" alt="Screenshot 2023-08-28 at 17 51 36" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/a329ceb9-3898-4e0e-92e8-cc75b496a530">

12. Setelah semua konfigurasi untuk VM-nya telah selesai, lalu klik logo *Start* untuk memulai instalasi OS-nya
<img width="898" alt="Screenshot 2023-08-28 at 17 51 43" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/4d8d257c-da42-4378-a5bd-1b8054e27af1">

### Tahap Instalasi OS Ubuntu

1. Setelah masuk disini saya memilih **Install Ubuntu Server** lalu klik *Enter*
  <img width="898" alt="Screenshot 2023-08-28 at 17 52 38" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/4d06a852-7066-42fd-85b1-f567ddcea124">

2. Lalu pilih **English** setelah itu klik *Enter*
<img width="1285" alt="Screenshot 2023-08-28 at 17 57 21" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/bcad9d3e-d8ed-4597-a63c-2b80f02167ea">

3. Step ini saya langsung memilih *Done*
<img width="1440" alt="Screenshot 2023-08-28 at 17 57 48" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/f580b72d-40c7-4c26-b535-163a693d8d3a">

4. Di tahap ini, karena kita akan mengubah IP yang akan digunakan sebagai *server*, maka pada *interface* **enp0s1** saya akan mengubah ip-nya dari **DHCP** menjadi **Static**. Lalu klik *Enter* pada interfacenya setelah itu pilih **Edit IPv4**
<img width="1440" alt="Screenshot 2023-08-28 at 17 58 48" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/26506da3-7def-41a1-9c40-66a059eb0d50">

5. Berikut konfigurasi IP yang saya gunakan secara **Static / Manual** setelah itu saya klik *enter* pada *Save*
<img width="1440" alt="Screenshot 2023-08-28 at 18 09 18" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/17d44185-3c27-4e10-8219-b7a1050d64d2">

```
Subnet          : 192.168.43.0/24
Address         : 192.168.43.170
Gateway         : 192.168.43.1
Name Servers    : 8.8.8.8, 8.8.4.4
Search Domains  : google.com
```

6. Disini menunggu hingga *Applying Changes*-nya selesai.
<img width="1440" alt="Screenshot 2023-08-28 at 18 09 30" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/d7fdbc83-dc19-4d1c-9bfb-7463b0be2a75">

7. Setelah selesai, langsung klik *Enter* pada *Done* untuk lanjut ke tahap selanjutnya
<img width="1440" alt="Screenshot 2023-08-28 at 18 09 38" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/afb79ef7-9c6d-4366-92cd-b7199ff06786">

8. Karena tidak ada *Proxy Address* yang ingin didaftarkan, Maka tahap ini saya lewat jadi langsung saya klik *Done*
<img width="1440" alt="Screenshot 2023-08-28 at 18 10 15" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/72d1fe7f-6262-4d2e-8ab4-1de27ba31e03">

9. Tahap ini pun saya buat *default* saja, jadi langsung saya klik *Done*
<img width="1440" alt="Screenshot 2023-08-28 at 18 10 21" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/d1f1f2dd-6bbe-4200-a98f-4e3bd6afee81">

10. Disini saya memilih **Continue without updating** karena saya tidak ingin *installer*-nya ter-update.
<img width="1440" alt="Screenshot 2023-08-28 at 18 10 33" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/55afba32-3330-4864-bdb1-eb440a254bfd">

11. Disini saya memilih **Use Entire Disk** lalu pilih *Done*
<img width="1440" alt="Screenshot 2023-08-28 at 18 11 05" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/40b1c80c-544e-41b8-ae59-700bb862586c">

12. Disini saya menambah partisi **swap** untuk membantu kinerja dari *RAM*-nya
<img width="1285" alt="Screenshot 2023-08-28 at 18 11 35" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/5e45b05c-ca5a-4ef4-8b1b-75ce1f3446b2">

13. Lalu saya pun menambahkan partisi **ext4** untuk membuat direktori */home*-nya
<img width="1440" alt="Screenshot 2023-08-28 at 18 12 11" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/2402ca97-1f1d-45a1-aa10-15ddc69bf99e">

14. Setelah selesai, lalu saya klik *enter* pada *Done* untuk lanjut ke tahap selanjutnya
<img width="1440" alt="Screenshot 2023-08-28 at 18 12 26" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/e4086f5b-0782-46cc-baa3-5fceac605a14">

15. Lalu akan muncul peringatan seperti dibawah, langsung klik *enter* pada *Continue*
<img width="1440" alt="Screenshot 2023-08-28 at 18 12 33" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/203cb4c8-c8c6-4dbf-822d-4331756f40f1">

16. Berikut konfigurasi saya untuk **Username, Nama Server, dan Password**-nya. Lalu klik *enter* pada *Done*
<img width="1440" alt="Screenshot 2023-08-28 at 18 13 54" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/62930646-b4fb-4aea-80af-d9405e3da3b7">

17. Berikut konfigurasi untuk **SSH** saya lalu saya klik *enter* pada *Done*
<img width="1440" alt=" " src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/abee4748-62f1-4972-bd33-a02c156094ba">

18. Berikut **Package-Package** yang tersedia untuk di instalasi pada *Ubuntu*. Tahap ini saya lewatkan karena instalasi *package*-nya saya lakukan nanti, langsung saya klik *Done*
<img width="1440" alt="Screenshot 2023-08-28 at 18 16 22" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/9fe650ed-27b2-47cc-a0f0-e10c37c477e1">

19. Disini menunggu hingga proses-nya selesai dan melakukan *reboot*
<img width="1440" alt="Screenshot 2023-08-28 at 18 16 34" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/fcdb5a21-2a66-4927-a202-f2fcd40f167a">

20. Berikut tampilan setelah instalasinya selesai dan OS berjalan dengan baik
<img width="1440" alt="Screenshot 2023-08-28 at 19 09 42" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/db97a9ff-e57e-43d6-9f79-4b801e776ad6">

21. Berikut tes koneksi antara VM dengan device saya sendiri dan berhasil
<img width="1440" alt="Screenshot 2023-08-28 at 19 12 50" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/3f9a42f1-628a-48fd-b305-d7a97903869d">






















































