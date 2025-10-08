## Model Data

### Entitas dan Atribut

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

### Relasi Antar Entitas
- Nelayan **menjual banyak** Ikan (1:M)  
- Pembeli **melakukan banyak** Pesanan (1:M)  
- Pesanan **memiliki banyak** Detail_Pesanan (1:M)  
- Detail_Pesanan **berisi satu** Ikan (M:1)  
- Pesanan **memiliki satu** Pembayaran (1:1)  
- Pembeli **dapat chat ke banyak** Nelayan (M:N) melalui entitas **Chat**

![Gambar WhatsApp 2025-10-02 pukul 23 45 30_1811ffa4](https://github.com/user-attachments/assets/fa74770f-beb2-413c-8f6b-6bc5abcf1164)