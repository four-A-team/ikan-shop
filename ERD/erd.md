## 🐟 Entity Relationship Diagram (ERD) – IKAN SHOP (FISHMARK)

### 🎯 Deskripsi Umum

ERD ini menggambarkan struktur basis data sistem IKAN SHOP, yaitu platform jual beli ikan antara nelayan (produsen) dan pembeli (customer) dengan fitur transaksi, pembayaran, dan chat dua arah.
Desain ERD sudah melalui proses normalisasi hingga 3NF, memastikan data tidak redundan, konsisten, dan mudah dikelola.

### 🧩 Struktur dan Hubungan Antar Entitas
erDiagram

    %% =====================
    %% ENTITY: USER & ROLES
    %% =====================
    USER {
        int ID_User PK
        string Username
        string Password
        string Role  "admin / nelayan / pembeli"
    }

    NELAYAN {
        int ID_Nelayan PK
        int ID_User FK
        string Nama
        string No_Kontak
        string Alamat
    }

    PEMBELI {
        int ID_Pembeli PK
        int ID_User FK
        string Nama
        string Email
        string No_Kontak
        string Alamat
    }

    %% =====================
    %% ENTITY: IKAN & PESANAN
    %% =====================
    IKAN {
        int ID_Ikan PK
        int ID_Nelayan FK
        string Nama_Ikan
        string Jenis
        decimal Harga_per_Kg
        int Stok_kg
        date Tanggal_Tangkap
        string Lokasi_Tangkap
    }

    PESANAN {
        int ID_Pesanan PK
        int ID_Pembeli FK
        date Tanggal_Pesan
        string Status_Pesanan
        decimal Total_Harga
    }

    DETAIL_PESANAN {
        int ID_Detail PK
        int ID_Pesanan FK
        int ID_Ikan FK
        int Jumlah_Kg
        decimal Subtotal
    }

    PEMBAYARAN {
        int ID_Pembayaran PK
        int ID_Pesanan FK
        date Tanggal_Bayar
        decimal Jumlah_Bayar
        string Metode_Pembayaran
        string Status_Pembayaran
    }

    %% =====================
    %% ENTITY: CHAT
    %% =====================
    CHAT {
        int ID_Chat PK
        int ID_Pembeli FK
        int ID_Nelayan FK
        datetime Waktu
        string Isi_Pesan
    }

    %% =====================
    %% RELATIONSHIPS
    %% =====================
    USER ||--|| NELAYAN : "1:1"
    USER ||--|| PEMBELI : "1:1"

    NELAYAN ||--o{ IKAN : "menjual"
    PEMBELI ||--o{ PESANAN : "melakukan"
    PESANAN ||--o{ DETAIL_PESANAN : "memiliki"
    DETAIL_PESANAN }o--|| IKAN : "berisi"
    PESANAN ||--|| PEMBAYARAN : "memiliki"
    PEMBELI }o--o{ NELAYAN : "chat dengan" 
    PEMBELI ||--o{ CHAT : "mengirim"
    NELAYAN ||--o{ CHAT : "menerima"


### Relasi Antar Entitas
- Nelayan **menjual banyak** Ikan (1:M)  
- Pembeli **melakukan banyak** Pesanan (1:M)  
- Pesanan **memiliki banyak** Detail_Pesanan (1:M)  
- Detail_Pesanan **berisi satu** Ikan (M:1)  
- Pesanan **memiliki satu** Pembayaran (1:1)  
- Pembeli **dapat chat ke banyak** Nelayan (M:N) melalui entitas **Chat**

![Gambar WhatsApp 2025-10-02 pukul 23 45 30_1811ffa4](https://github.com/user-attachments/assets/fa74770f-beb2-413c-8f6b-6bc5abcf1164)
