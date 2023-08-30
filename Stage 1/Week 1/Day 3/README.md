# Application in Server

## 1. Deploy Aplikasi wayshub-frontend(NodeJS)


### 1.1 Instalasi NVM
![Screenshot 2023-08-30 at 12 07 07](https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/fa0b4746-da3a-4ca1-842b-f9a9c700c56f)
Install NVM menggunakan perintah:

```node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```

### 1.2 Eksekusi NVM dan Instalasi NodeJS v14
![Screenshot 2023-08-30 at 12 22 30](https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/f7c87227-fed8-484e-91a8-1b187e253dfc)
Eksekusi NVM-nya agar bisa digunakan menggunakan perintah:

```node
exec bash
```

Install NodeJS v14 menggunakan perintah:

```node
nvm install 14
```

Gunakan NodeJS v14 menggunakan perintah:

```node
nvm use 14
```
### 1.3 Clone repository Wayshub Frontend
![Screenshot 2023-08-30 at 12 04 46](https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/87618e49-412f-46fc-88d4-6327588d1f0b)
Clone Repository pada Git yang telah disediakan dengan perintah:

```git
git clone https://github.com/dumbwaysdew/wayshub-frontend.git
```

### 1.4 Instalasi Modul NPM pada Directory wayshub-frontend
<img width="1440" alt="Screenshot 2023-08-30 at 13 02 40" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/52bd6d3a-1146-4884-be09-9886b98d7411">
Meng-Install Package NodeJS pada Directory wayshub-frontend menggunakan perintah:

```node
npm install -y
```
### 1.5 Menjalankan project pada Directory wayshub-frontend
<img width="1440" alt="Screenshot 2023-08-30 at 13 13 40" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/b1168471-7a88-47fa-b7db-cffd4bf69e1a">
<img width="1440" alt="Screenshot 2023-08-30 at 13 14 04" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/096e1b81-94ad-4e1e-ad9b-39d9ab270a88">
Menjalankan Project pada Directory wayshub-frontend menggunakan perintah:

```node
npm start
```

### 1.6 Membuka project yang telah berjalan
<img width="1440" alt="Screenshot 2023-08-30 at 13 53 19" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/a1d25bd4-64af-4bd9-95d0-906ba675b7ff">
Jika Project berhasil berjalan, Maka akan muncul tampilan seperti diatas. Cara mengakses Project yang telah berjalan adalah dengan memasukan perintah berikut pada web browser:

```node
192.168.100.11:3000*
```
<sup>*IP dan Port menyesuaikan dengan yang terdaftar pada server</sup>


## 2. Deploy Golang & Python dengan menampilkan nama masing-masing

### 2.1 Instalasi GO
<img width="1438" alt="Screenshot 2023-08-30 at 14 03 23" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/cc4a1b26-e3df-4580-9fd1-ea1303998739">
Install GO menggunakan perintah:

```go
wget https://golang.org/dl/go1.16.5.linux-amd64.tar.gz && sudo su
```

### 2.2  Menghapus file temporary GO
<img width="1438" alt="Screenshot 2023-08-30 at 14 05 48" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/df631493-fbcc-405b-85e2-483f70211fdc">
Menghapus file temporary GO menggunakan perintah:

```
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz && exit
```

### 2.3 Memasukan PATH Go
<img width="1437" alt="Screenshot 2023-08-30 at 14 07 56" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/6c76750e-3056-4c8b-a9e6-b4f34c8931c4">
Masuk ke .bashrc melalui dir root dengan perintah

```
sudo nano .bashrc
```
<br>
<img width="1438" alt="Screenshot 2023-08-30 at 14 10 02" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/55fe93a0-113e-43b0-8e4c-30ca686ed240">
Lalu masukan script berikut pada line paling terakhir

```
export PATH=$PATH:/usr/local/go/bin
```

### 2.4 Verifikasi GO
<img width="1438" alt="Screenshot 2023-08-30 at 14 21 40" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/8827d78a-59f0-4ed7-a283-8241b6e15e09">
Pada tahap ini, kita perlu memverifikasi bahwa engine GO sudah berjalan dengan baik dan benar, dengan menggunakan perintah:

```
go version
```

### 2.5 Membuat project sederhana menggunakan GO
<img width="1440" alt="Screenshot 2023-08-30 at 14 25 56" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/e51e079c-e550-4dcb-9228-26217cd2b318">
Buatlah file dengan nama index.go dengan menggunakan perintah:

```
nano index.go
```
Setelah itu masukan script berikut:

```go
package main  
import "fmt"  
func main() {  
    fmt.Println("Calvin Novryan Rahaditya")
}
```

### 2.6 Menjalankan project sederhana yang telah dideploy
<img width="1439" alt="Screenshot 2023-08-30 at 14 39 13" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/5af3fe95-737f-4efe-a6e4-68b430a5b9ea">
Setelah file index telah dimasukan script seperti diatas, maka untuk menjalankan kita perlu menjalankan perintah:

```go
go run index.go
```
