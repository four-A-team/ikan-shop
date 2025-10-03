# ikan shop
## 1. Pendahuluan

### 1.1 Tujuan
Dokumen ini menjelaskan kebutuhan perangkat lunak untuk sistem "Ikan Shop", yaitu platform marketplace digital yang menghubungkan nelayan dengan pembeli (distributor/importir) secara langsung.

### 1.2 Lingkup Sistem
"Ikan Shop" adalah sistem berbasis web yang memungkinkan:
- Nelayan menjual hasil tangkapannya.
- Pembeli memesan, membayar, dan berinteraksi langsung melalui fitur chat.
- Monitoring stok ikan, pesanan, pembayaran, dan riwayat transaksi.

## 2. Deskripsi Umum

### 2.1 Pengguna Sistem
- Nelayan: Menjual ikan, mengatur stok, merespon chat.
- Pembeli: Melihat produk, melakukan pemesanan, pembayaran, dan chat.
- Admin (opsional): Mengelola pengguna dan data sistem.

### 2.2 Fungsi Sistem
- Manajemen akun pengguna (login/register).
- Manajemen data ikan.
- Pemesanan dan pembayaran online.
- Riwayat transaksi.
- Fitur live chat.

### 2.3 Batasan Sistem
- Platform berbasis web (responsive).
- Tersedia dalam bahasa Indonesia.
- Dibangun menggunakan stack modern (laravel, mysql, taildwind).

## 3. Kebutuhan Fungsional

### 3.1 Registrasi dan Login
- Pengguna dapat mendaftar sebagai Nelayan atau Pembeli.
- Sistem validasi login dengan username & password.

### 3.2 Manajemen Ikan (oleh Nelayan)
- Tambah, ubah, dan hapus data ikan (nama, jenis, harga/kg, stok, lokasi tangkap, tanggal).

### 3.3 Pemesanan (oleh Pembeli)
- Pembeli dapat memilih ikan, menentukan jumlah, dan memesan.
- Sistem menghitung total bayar otomatis.

### 3.4 Pembayaran
- Pembeli dapat memilih metode pembayaran dan mengunggah bukti.
- Status pembayaran: Menunggu, Dikonfirmasi, Gagal.

### 3.5 Chat
- Pembeli dan nelayan dapat bertukar pesan real-time.

### 3.6 Riwayat Transaksi
- Pengguna dapat melihat riwayat transaksi dan detailnya.

## 4. Kebutuhan Non-Fungsional

- Keamanan: Data pengguna dienkripsi, autentikasi aman.
- Kinerja: Respon cepat untuk transaksi dan chat.
- Aksesibilitas: Responsive untuk mobile dan desktop.
- Backup: Backup database berkala.

## 5. Antarmuka Pengguna (UI)
- Home Page: Informasi umum, daftar ikan terbaru.
- Login/Register Page
- Dashboard Nelayan/Pembeli
- Halaman Detail Ikan
- Halaman Pesanan & Pembayaran
- Live Chat Interface

## 6. Arsitektur Sistem

### 6.1 Role Pengguna
- **Admin**: mengelola pengguna, data ikan, dan transaksi (opsional).
- **Produsen (Nelayan)**: menjual ikan, mengatur stok, berinteraksi dengan pembeli.
- **Customer (Pembeli)**: membeli ikan, melakukan pembayaran, dan chat dengan nelayan.

### 6.2 Media Akses
- **Web Browser**: digunakan oleh semua pengguna (nelayan, pembeli, admin) untuk mengakses aplikasi.

### 6.3 Frontend
- Dibangun menggunakan **Laravel (Blade)** dengan **TailwindCSS** untuk desain antarmuka.
- Antarmuka responsif dan mobile-friendly.

### 6.4 Backend
- **Laravel Framework**
- Struktur dibagi ke dalam beberapa **Controller** sesuai fitur (Ikan, Pesanan, Pembayaran, Chat, User).

### 6.5 Database
- Semua tabel dikelola oleh controller sesuai entitas terkait.
- Menggunakan **MySQL** sebagai DBMS.

### 6.6 API Terintegrasi
- **API Cuaca** → menampilkan kondisi cuaca untuk mendukung nelayan.
- **API Jadwal Shalat** → informasi waktu shalat.
- **API Tips Keamanan Laut** → memberikan edukasi keselamatan.

![Gambar WhatsApp 2025-10-02 pukul 23 44 19_6933de6d](https://github.com/user-attachments/assets/07bee4fe-aa22-4afb-bf7d-1144ae36aaa5)

---

## 7. Model Data

### 7.1 Entitas dan Atribut

1. **Nelayan**
   - ID_Nelayan (PK)
   - Nama  
   - No_Kontak  
   - Alamat  
   - Username  
   - Password  

2. **Pembeli**
   - ID_Pembeli (PK)
   - Nama  
   - Email  
   - No_Kontak  
   - Alamat  
   - Username  
   - Password  

3. **Ikan**
   - ID_Ikan (PK)  
   - ID_Nelayan (FK)  
   - Nama_Ikan  
   - Jenis  
   - Harga_per_Kg  
   - Stok_kg  
   - Tanggal_Tangkap  
   - Lokasi_Tangkap  

4. **Pesanan**
   - ID_Pesanan (PK)  
   - ID_Pembeli (FK)  
   - Tanggal_Pesan  
   - Status_Pesanan  
   - Total_Harga  

5. **Detail_Pesanan**
   - ID_Detail (PK)  
   - ID_Pesanan (FK)  
   - ID_Ikan (FK)  
   - Jumlah_Kg  
   - Subtotal  

6. **Pembayaran**
   - ID_Pembayaran (PK)  
   - ID_Pesanan (FK)  
   - Tanggal_Bayar  
   - Jumlah_Bayar  
   - Metode_Pembayaran  
   - Status_Pembayaran  

7. **Chat**
   - ID_Chat (PK)  
   - ID_Pembeli (FK)  
   - ID_Nelayan (FK)  
   - Waktu  
   - Isi_Pesan  

---

### 7.2 Relasi Antar Entitas
- Nelayan **menjual banyak** Ikan (1:M)  
- Pembeli **melakukan banyak** Pesanan (1:M)  
- Pesanan **memiliki banyak** Detail_Pesanan (1:M)  
- Detail_Pesanan **berisi satu** Ikan (M:1)  
- Pesanan **memiliki satu** Pembayaran (1:1)  
- Pembeli **dapat chat ke banyak** Nelayan (M:N) melalui entitas **Chat**

![Gambar WhatsApp 2025-10-02 pukul 23 45 30_1811ffa4](https://github.com/user-attachments/assets/fa74770f-beb2-413c-8f6b-6bc5abcf1164)