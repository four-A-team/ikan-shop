
1. Arsitektur Umum

┌────────────────────────────┐
│        Client Side         │
│  (Browser: Pembeli/Nelayan)│
│                            │
│ TailwindCSS + HTML + JS    │
└────────────┬───────────────┘
             │
             ▼
┌────────────────────────────┐
│        Laravel App         │
│ (Controller, Route, Auth)  │
├────────────────────────────┤
│ - Auth (Login/Register)    │
│ - Manajemen Ikan           │
│ - Pesanan & Pembayaran     │
│ - Realtime Chat            │
│ - Jadwal Shalat (API)      │
│ - Cuaca Laut (API)         │
│ - Tips Keamanan Laut       │
└────────────┬───────────────┘
             │
             ▼
┌────────────────────────────┐
│         Database           │
│         MySQL              │
├────────────────────────────┤
│ - nelayan, pembeli         │
│ - ikan, pesanan, pembayaran│
│ - chat, tips_keamanan      │
└────────────┬───────────────┘
             │
             ▼
┌────────────────────────────┐
│    External APIs           │
├────────────────────────────┤
│ - Cuaca: OpenWeatherMap    │
│ - Shalat: Aladhan API      │
└────────────────────────────┘

2. Komponen Utama

A. Frontend (Client Side)
- Dibuat dengan Blade + Tailwind CSS
- Komponen interaktif (chat, jadwal, cuaca) bisa gunakan AJAX atau Vue.js (opsional)

B. Backend (Laravel)
- Autentikasi: Laravel Auth (bisa pakai Breeze/Jetstream)
- API Wrapper untuk cuaca & jadwal shalat
- Event Broadcasting untuk chat (Laravel WebSockets / Pusher)

C. Database (MySQL)
- Tabel: nelayan, pembeli, ikan, pesanan, pembayaran, chat, jadwal_shalat, cuaca, tips_keamanan

D. API Eksternal
- OpenWeatherMap: Ambil info cuaca berdasarkan lokasi nelayan
- Aladhan / Kemenag: Dapatkan jadwal shalat harian

3. Realtime Chat Arsitektur
- Laravel Event & Listener
- Laravel WebSockets / Pusher
- Frontend: Listen event & update pesan

4. Fitur Opsional
- Scheduler Laravel untuk update otomatis data cuaca & jadwal shalat
- Admin panel (CMS) untuk kelola tips & keamanan laut

