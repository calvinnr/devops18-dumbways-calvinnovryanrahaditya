# Application in Server

## 1. Deploy Aplikasi wayshub-frontend (NodeJS)


### 1.1 Instalasi NVM
![Screenshot 2023-08-30 at 12 07 07](https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/fa0b4746-da3a-4ca1-842b-f9a9c700c56f)
Install NVM dengan menjalankan perintah:

```node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```

### 1.2 Eksekusi NVM dan Instalasi NodeJS v14
![Screenshot 2023-08-30 at 12 22 30](https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/f7c87227-fed8-484e-91a8-1b187e253dfc)
Eksekusi NVM-nya agar bisa digunakan dengan menjalankan perintah:

```node
exec bash
```

Install NodeJS v14 menjalankan perintah:

```node
nvm install 14
```

Gunakan NodeJS v14 menjalankan perintah:

```node
nvm use 14
```
### 1.3 Clone repository Wayshub Frontend
![Screenshot 2023-08-30 at 12 04 46](https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/87618e49-412f-46fc-88d4-6327588d1f0b)
Clone Repository pada Git yang telah disediakan dengan menjalankan perintah:

```git
git clone https://github.com/dumbwaysdew/wayshub-frontend.git
```

### 1.4 Instalasi Modul NPM pada Directory wayshub-frontend
<img width="1440" alt="Screenshot 2023-08-30 at 13 02 40" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/52bd6d3a-1146-4884-be09-9886b98d7411">
Meng-Install Package NodeJS pada Directory wayshub-frontend menjalankan perintah:

```node
npm install -y
```
### 1.5 Menjalankan aplikasi pada Directory wayshub-frontend
<img width="1440" alt="Screenshot 2023-08-30 at 13 13 40" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/b1168471-7a88-47fa-b7db-cffd4bf69e1a">
<img width="1440" alt="Screenshot 2023-08-30 at 13 14 04" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/096e1b81-94ad-4e1e-ad9b-39d9ab270a88">
Menjalankan aplikasi pada Directory wayshub-frontend menjalankan perintah:

```node
npm start
```

### 1.6 Membuka aplikasi yang telah berjalan
<img width="1440" alt="Screenshot 2023-08-30 at 13 53 19" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/a1d25bd4-64af-4bd9-95d0-906ba675b7ff">
Jika aplikasi berhasil berjalan, Maka akan muncul tampilan seperti diatas. Cara mengakses aplikasi yang telah berjalan adalah dengan memasukan ip address & port pada web browser:

```node
192.168.100.11:3000*
```
<sup>*IP dan Port menyesuaikan dengan yang terdaftar pada server</sup>


## 2.1 Deploy Golang dengan menampilkan nama masing-masing

### 2.1.1 Instalasi GO
<img width="1438" alt="Screenshot 2023-08-30 at 14 03 23" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/cc4a1b26-e3df-4580-9fd1-ea1303998739">
Install GO dengan menjalankan perintah:

```go
wget https://golang.org/dl/go1.16.5.linux-amd64.tar.gz && sudo su
```

### 2.1.2  Menghapus file temporary GO
<img width="1438" alt="Screenshot 2023-08-30 at 14 05 48" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/df631493-fbcc-405b-85e2-483f70211fdc">
Menghapus file temporary GO menjalankan perintah:

```
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz && exit
```

### 2.1.3 Memasukan PATH Go
<img width="1437" alt="Screenshot 2023-08-30 at 14 07 56" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/6c76750e-3056-4c8b-a9e6-b4f34c8931c4">
Masuk ke .bashrc melalui dir root dengan menjalankan perintah:

```
sudo nano .bashrc
```
<br>
<img width="1438" alt="Screenshot 2023-08-30 at 14 10 02" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/55fe93a0-113e-43b0-8e4c-30ca686ed240">
Lalu masukan script berikut pada line paling terakhir

```
export PATH=$PATH:/usr/local/go/bin
```

### 2.1.4 Verifikasi GO
<img width="1438" alt="Screenshot 2023-08-30 at 14 21 40" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/8827d78a-59f0-4ed7-a283-8241b6e15e09">
Pada tahap ini, kita perlu memverifikasi bahwa engine GO sudah berjalan dengan baik dan benar, dengan menjalankan perintah:

```
go version
```

### 2.1.5 Membuat project sederhana menggunakan GO
<img width="1440" alt="Screenshot 2023-08-30 at 14 25 56" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/e51e079c-e550-4dcb-9228-26217cd2b318">
Buatlah file dengan nama index.go dengan menjalankan perintah:

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

### 2.1.6 Menjalankan project sederhana yang telah dideploy
<img width="1439" alt="Screenshot 2023-08-30 at 14 39 13" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/5af3fe95-737f-4efe-a6e4-68b430a5b9ea">
Setelah file index.go telah terbuat, kita perlu memasukan script agar dapat berjalan, maka untuk menjalankan kita perlu menjalankan perintah:

```go
go run index.go
```

atau jika ingin di **build** bisa menjalankan perintah:
<img width="1439" alt="Screenshot 2023-08-30 at 14 42 54" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/96961fae-8919-4ca9-ae91-e5a5dc24a605">

```go
go build index.go
```

## 2.2 Deploy Python menampilkan nama masing-masing

### 2.2.1 Mengupdate resource repository pada server
<img width="1437" alt="Screenshot 2023-08-30 at 14 48 42" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/75ec5a34-cdb2-4609-90a4-1cb715e4e3ac">
Pertama-tama kita update terlebih dahulu resource repository-nya dengan menjalankan perintah:

```python
apt-get update
```

### 2.2.2 Instalasi Package Manager Python
<img width="1440" alt="Screenshot 2023-08-30 at 14 54 29" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/e06c7431-f9d8-41fb-822e-5925f09bbdd9">
Dikarenakan Python3 sudah secara default ter-install pada OS Ubuntu, Setelah kita meng-update resource repositorynya, Langkah selanjutnya adalah meng-install Package Manager Python yang bernama PIP dengan menjalankan perintah:

```python
sudo apt-get install pip
```

### 2.2.3 Instalasi Library Machine Python
<img width="1440" alt="Screenshot 2023-08-30 at 14 58 25" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/74237a27-1547-4ba2-ba9e-37f69910f6c7">
Lalu, Disini kita memerlukan dan meng-install Flask sebagai web framework dengan menjalankan perintah:

```python
pip install flask
```
### 2.2.4 Membuat aplikasi sederhana dengan Python
<img width="1440" alt="Screenshot 2023-08-30 at 15 02 19" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/83896ab0-001f-4708-ba04-e942e529db71">
Setelah semua resource yang dibutuhkan telah ter-install, selanjutnya kita membuat file dengan index dengan menjalankan perintah:

```python
nano index.py
```
<br>
Lalu pada file index.py yang telah terbuat, kita perlu memasukan script agar dapat berjalan, maka untuk menjalankan kita perlu menjalankan perintah:

```python
from flask import Flask
app = Flask(__name__)
@app.route("/")
def helloworld():
    return "Calvin Novryan Rahaditya"
if __name__ == "__main__":
    app.run(host='0.0.0.0,port='5000')
```

### 2.2.5 Menjalankan aplikasi Python
<img width="1440" alt="Screenshot 2023-08-30 at 15 08 33" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/e29ef9db-be3d-4d3c-b9b5-4399b0799e59">
Sudah sampai di tahap akhir, kita perlu menjalankan aplikasinya dengan menjalankan perintah:

```python
python3 index.py
```

### 2.2.6 Buka aplikasi pada Web Browser
<img width="1440" alt="Screenshot 2023-08-30 at 15 10 28" src="https://github.com/calvinnr/devops18-dumbways-calvinnovryanrahaditya/assets/101310300/2fb25596-fe12-4251-978b-fd35373d960b">

Jika aplikasi berhasil berjalan, Maka akan muncul tampilan seperti diatas. Cara mengakses aplikasi yang telah berjalan adalah dengan memasukan ip address & port pada web browser:

```python
192.168.100.11:5000*
```
<sup>*IP dan Port menyesuaikan dengan yang terdaftar pada server</sup>


