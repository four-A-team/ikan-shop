
*1. Table `users`*
*Fungsi*: Menyimpan semua pengguna (admin, nelayan, pembeli).

| Atribut | Penjelasan |
|--------|------------|
| `id` | Primary key |
| `name` | Nama pengguna |
| `email` | Email unik untuk login |
| `password` | Password yang di-hash |
| `role` | Peran pengguna: `admin`, `nelayan`, `pembeli` |
| `created_at` | Waktu registrasi akun |

---

*2. Table `fishes`*
*Fungsi*: Menyimpan informasi ikan dari nelayan.

| Atribut | Penjelasan |
|---------|------------|
| `id` | Primary key |
| `fisher_id` | Relasi ke `users.id`, peran `nelayan` |
| `name` | Nama ikan |
| `type` | Jenis ikan (contoh: tuna, tongkol) |
| `price_per_kg` | Harga per kilogram |
| `stock_kg` | Stok ikan tersedia dalam kg |
| `catch_date` | Tanggal penangkapan |
| `catch_location` | Lokasi tangkap |
| `created_at`, `updated_at` | Waktu data dibuat & diperbarui |

---

*3. Table `orders`*
*Fungsi*: Menyimpan pemesanan ikan oleh pembeli.

| Atribut | Penjelasan |
|---------|------------|
| `id` | Primary key |
| `pembeli_id` | Relasi ke `users.id`, peran `pembeli` |
| `order_date` | Tanggal pemesanan |
| `total_price` | Total harga semua item |
| `dp_amount` | Jumlah uang muka dibayar |
| `remaining_payment` | Sisa pembayaran |
| `status` | Status pesanan: `pending`, `dp_paid`, `completed`, `cancelled` |
| `payment_status` | Status pembayaran: `unpaid`, `partial`, `paid` |
| `created_at`, `updated_at` | Waktu dibuat dan update data |

---

*4. Table `order_items`*
*Fungsi*: Menyimpan detail ikan dalam satu order.

| Atribut | Penjelasan |
|---------|------------|
| `id` | Primary key |
| `order_id` | Relasi ke `orders.id` |
| `fish_id` | Relasi ke `fishes.id` |
| `quantity_kg` | Jumlah ikan dipesan dalam kg |
| `subtotal` | Harga per item (quantity × price) |

---

*5. Table `payments`*
*Fungsi*: Mencatat transaksi pembayaran.

| Atribut | Penjelasan |
|---------|------------|
| `id` | Primary key |
| `order_id` | Relasi ke `orders.id` |
| `amount` | Jumlah yang dibayar |
| `type` | Tipe: `DP` atau `Full` |
| `method` | Metode: transfer, COD, dll |
| `status` | Status: `pending`, `confirmed`, `failed` |
| `payment_date` | Waktu pembayaran dilakukan |

---

*6. Table `chats`*
*Fungsi*: Menyimpan pesan antar pengguna.

| Atribut | Penjelasan |
|---------|------------|
| `id` | Primary key |
| `sender_id` | Pengirim pesan (user) |
| `receiver_id` | Penerima pesan (user) |
| `message` | Isi pesan |
| `sent_at` | Waktu pesan dikirim |

---

*7. Table `notifications`*
*Fungsi*: Menyimpan notifikasi yang dikirim ke user.

| Atribut | Penjelasan |
|---------|------------|
| `id` | Primary key |
| `user_id` | Relasi ke user yang menerima |
| `message` | Isi notifikasi |
| `type` | Tipe notifikasi: `order`, `payment`, dll |
| `status` | `unread` atau `read` |
| `created_at` | Waktu dibuat |

---

*8. Table `reports`*
*Fungsi*: Untuk admin mencatat laporan sistem.

| Atribut | Penjelasan |
|---------|------------|
| `id` | Primary key |
| `admin_id` | Admin yang membuat laporan |
| `report_type` | Tipe laporan: error, pelanggaran, dll |
| `description` | Isi laporan |
| `created_at` | Waktu dibuat |

---

*9. Table `weather`*
*Fungsi*: Menyimpan info cuaca untuk nelayan.

| Atribut | Penjelasan |
|---------|------------|
| `id` | Primary key |
| `location` | Lokasi pemantauan |
| `temperature` | Suhu |
| `wave_height` | Tinggi ombak |
| `wind_speed` | Kecepatan angin |
| `updated_at` | Waktu update terakhir |

---

*Alur Kerja Sistem:*

1. *User Registrasi/Login* → Memasuki sistem sesuai `role`.
2. *Nelayan* input ikan ke sistem.
3. *Pembeli* melihat daftar ikan → tambah ke keranjang → buat order.
4. *Sistem hitung total + DP* → pembeli bayar.
5. 5. *Admin/Nelayan konfirmasi pembayaran.*
6. *Notifikasi dikirim* ke pembeli.
7. Jika ada masalah → *fitur chat* & laporan admin.
8. *Cuaca otomatis diperbarui* → ditampilkan ke nelayan.
9. Admin bisa generate laporan & monitoring.
