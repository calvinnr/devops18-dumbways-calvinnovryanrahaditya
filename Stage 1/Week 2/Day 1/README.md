# Version Control System

## 1. Penjelasan Distributed Version Control

Distributed Version Control adalah jenis sistem manajemen versi yang digunakan untuk melacak perubahan dalam kode sumber perangkat lunak dan mengelola kolaborasi antara pengembang dalam pengembangan perangkat lunak

## 2. Buat Repository dengan Nama Makanan Kesukaan Kalian (Diluar Tugas) yang Berisi 3 *File* dengan Isi yang Berbeda

### Membuat Repository

### 2.1 Membuat Repository melalui Github.com
<img width="1440" alt="Screenshot 2023-09-04 at 19 10 04" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/d803b95b-0f5c-413a-b611-7a7afb846e81">

### 2.2 Membuat Repository melalui Terminal
<img width="1440" alt="Screenshot 2023-09-04 at 18 56 31" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/94fa8d60-6c95-4229-ba92-37dd2f0c5d37">
Membuat Repository kosong dengan menjalankan perintah:

```git
git init Pempek
```

### 2.3 Membuat 3 File Berbeda pada Repository
<img width="1440" alt="Screenshot 2023-09-04 at 18 57 10" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/ad71a5f4-773e-4fd9-b374-cf153b0736a2">
Membuat 3 File berbeda dengan menjalankan perintah:

```shell
touch cuko lenjer kapalselam
```

### 2.4 Melihat Status Repository
<img width="1440" alt="Screenshot 2023-09-04 at 18 58 31" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/3bbe0553-3226-48b4-9619-1615172f82af">
Melihat Status lokal Repository apakah terdapat perubahan dengan menjalankan perintah:

```git
git status
```

### 2.5 Menambahkan File Baru ke Repository
<img width="1440" alt="Screenshot 2023-09-04 at 18 58 40" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/2ada2c4c-215f-4615-aaf7-79ee6a9aa7d0">
Dari hasil **Git Status** diatas, Terdapat 3 File yang statusnya masih *Untracked*, Untuk merubah File tersebut dari *Modified* menjadi *Staged* di Repository kita perlu menjalankan perintah:

```git
git add .
```

### 2.6 Melihat Status Repository
<img width="1440" alt="Screenshot 2023-09-04 at 18 58 54" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/f9f46fb1-e6b9-40de-ad37-426f71fedb73">
Melihat Status Repository bahwa File yang terdapat di dalam lokal Repository sudah berubah dari *Modified* menjadi *Staged* yang dapat dilihat dari gambar diatas. Melihat status  dengan menjalankan perintah:

```git
git status
```

### 2.7 Meng-Commit Repository Lokal
<img width="1440" alt="Screenshot 2023-09-04 at 18 58 59" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/a7cdb926-ccdf-460e-b749-3f488dc0a2f0">
Setelah File sudah berubah menjadi *Staged*, kita perlu meng-Commit File agar dapat tersimpan di database Git dengan menjalankan perintah:

```git
git commit -m "Resep Pempek"
```

### 2.8 Mengkoneksikan Repository Lokal dengan Database Git
<img width="1440" alt="Screenshot 2023-09-04 at 18 59 18" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/190503f2-da0e-4f30-a429-3dbbc66dbafd">
Agar terhubung dengan Database Git di Internet, Kita perlu menambahkan Remote SSH-nya dengan menjalankan perintah:

```git
git remote add origin git@github.com:calvinnr/Pempek.git
```

### 2.9 Mengatur Branch pada Repository
<img width="1440" alt="Screenshot 2023-09-04 at 18 59 36" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/ffce3ce1-8b91-4f09-a750-99651862f1bb">
Mengatur Branch **main** pada Repository lokal dengan menjalankan perintah:

```git
git branch -m main
```

### 2.10 Mengunggah Data Repository Lokal ke Database Git
<img width="1440" alt="Screenshot 2023-09-04 at 18 59 53" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/f0de11e2-ee28-4a94-9d38-6726ccd346a7">
Mengunggah data yang tersimpan di database Git lokal ke database Git server dengan menjalankan perintah:

```git
git push origin main
```


## 3. Buat 2 Branch

### 3.1 Membuat Branch
<img width="1440" alt="Screenshot 2023-09-04 at 19 48 03" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/455d97c1-a55c-4e07-a35f-a73cdac1fef8">
Membuat Branch **Staging** dan **Production** dengan menjalankan perintah

```git
git branch Staging
git branch Production
```

### 3.2 Melihat Branch
<img width="1440" alt="Screenshot 2023-09-04 at 19 49 32" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/a50b9a68-8478-4d9a-9ed2-2325b4fc7431">
Melihat Branch yang ada pada Repository dengan menjalankan perintah:

```git
git branch -a
```

## 4. Cari 3 Command Git yang Belum Dijelaskan dan Praktekkan

### 4.1 Git MV
<img width="1440" alt="Screenshot 2023-09-04 at 20 01 02" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/eeabe85c-b6e0-46ec-bd05-0e965905f71c">
Memindahkan File Lama ke File Baru pada Repository dengan menjalankan perintah:

```git
git mv README.md BACASAYA.md
```

### 4.2 Git RM
<img width="1440" alt="Screenshot 2023-09-04 at 20 03 51" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/d857d8b7-32b8-4568-a5b1-24b68825548f">
Menghapus File pada Repository lokal dengan menjalankan perintah:

```git
git rm README.md
```

### 4.3 Git SWITCH
<img width="1440" alt="Screenshot 2023-09-04 at 20 07 16" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/1a3cd04e-9512-44df-ac2e-51d832ec7bdf">
Pindah antar Branch dengan membawa perubahan yang terjadi pada Branch **Production** dengan menjalankan perintah:

```git
git switch Staging
```≈
