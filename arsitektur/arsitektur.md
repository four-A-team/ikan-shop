## Arsitektur Sistem

### Role Pengguna
- **Admin**: mengelola pengguna, data ikan, dan transaksi (opsional).
- **Produsen (Nelayan)**: menjual ikan, mengatur stok, berinteraksi dengan pembeli.
- **Customer (Pembeli)**: membeli ikan, melakukan pembayaran, dan chat dengan nelayan.

### Media Akses
- **Web Browser**: digunakan oleh semua pengguna (nelayan, pembeli, admin) untuk mengakses aplikasi.

### Frontend
- Dibangun menggunakan **Laravel (Blade)** dengan **TailwindCSS** untuk desain antarmuka.
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

![Gambar WhatsApp 2025-10-02 pukul 23 44 19_6933de6d](https://github.com/user-attachments/assets/07bee4fe-aa22-4afb-bf7d-1144ae36aaa5)

---