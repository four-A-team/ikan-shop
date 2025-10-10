## Arsitektur Sistem

### Role Pengguna
- **Admin**: mengelola pengguna, data ikan, dan transaksi.
- **Produsen (Nelayan)**: menjual ikan, mengatur stok, berinteraksi dengan pembeli.
- **Customer (Pembeli)**: membeli ikan, melakukan pembayaran, dan chat dengan nelayan.

### Media Akses
- **Web Browser**: digunakan oleh semua pengguna (nelayan, pembeli, admin) untuk mengakses aplikasi.

### Frontend
- Dibangun menggunakan **Laravel** dengan **TailwindCSS** untuk desain antarmuka.
- Antarmuka responsif dan mobile-friendly.

### Backend
- **Laravel Framework**
- Struktur dibagi ke dalam beberapa **Controller** sesuai fitur (Ikan, Pesanan, Pembayaran, Chat, User).

### Database
- Semua tabel dikelola oleh controller sesuai entitas terkait.
- Menggunakan **MySQL** sebagai DBMS.

### API Terintegrasi
- **API Cuaca** → menampilkan kondisi cuaca untuk mendukung nelayan.

- **API Jadwal Shalat** → informasi waktu shalat.
- **API Tips Keamanan Laut** → memberikan edukasi keselamatan.

### Planing fitur
- **Realtime Notification**
→ Menggunakan Laravel Echo + Pusher, notifikasi akan muncul langsung di dashboard user & nelayan.
- **Realtime Chat**
→ Socket terhubung antara pelanggan dan nelayan agar bisa diskusi langsung.
- **Laporan statistik**
→ Menampilkan statistik total pesanan, total DP diterima, laporan hasil tangkapan, dan pendapatan nelayan.
- **Integrasi Cuaca & Jadwal Shalat**
→ Menampilkan cuaca hari ini dan waktu shalat di dashboard nelayan dan admin.
- **Sistem DP (Down Payment)**
→ Nelayan bisa meminta DP dari pelanggan.



ONE
![Gambar WhatsApp 2025-10-08 pukul 21 33 47_e4bce663](https://github.com/user-attachments/assets/17b70737-46a9-4f04-b487-75cc0f52e181)

TWO
![Arsitektur 2](../Image/Architecture%20diagram.png)

---
