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

