# Penggunaan Perintah SELECT… FROM…

# 1. Mengambil Seluruh Kolom dalam suatu Tabel
# SELECT * FROM nama_tabel;
SELECT * FROM ms_produk;

# 2. Mengambil Satu Kolom dari Tabel
# SELECT nama_kolom FROM nama_tabel;
SELECT nama_produk FROM ms_produk;

 # QUIZ
 # Perintah yang benar untuk mengambil kolom harga dari tabel ms_produk?
 SELECT harga FROM ms_produk

# 3. Mengambil Lebih dari Satu Kolom dari Tabel
# SELECT nama_kolom_1, nama_kolom_2 FROM nama_tabel;
SELECT nama_produk, harga FROM ms_produk;

# 4. Membatasi Pengambilan Jumlah Row Data
# SELECT nama_kolom_1, nama_kolom_2 FROM nama_tabel LIMIT 0-9;
SELECT nama_produk, harga FROM ms_produk LIMIT 5;

# 5. Penggunaan SELECT DISTINCT statement (Untuk menghilangkan data duplikasi)
# SELECT DISTINCT nama_kolom_1, nama_kolom_2 FROM nama_tabel;
SELECT DISTINCT nama_customer, alamat FROM ms_pelanggan;

-------------------------------------------------------------------------------------------
# Prefix dan Alias

# 1. Menggunakan Prefix pada Nama Kolom
# Ketika mengambil data dari dua tabel, misalnya dengan menggabungkan 2 tabel menggunakan JOIN, 
# dan terdapat 2 kolom dengan nama yang sama, 
# maka penggunaan prefix menjadi penting untuk menghindari error karena ambiguitas.
# SELECT nama_tabel.nama_kolom FROM nama_tabel;
SELECT ms_produk.kode_produk FROM ms_produk;

# 2. Menggunakan Alias pada Kolom
# Mengubah 'sementara' identitas nama kolom yang di SELECT menggunakan keyword AS (alias),
# sedangkan nama kolom di tabel dalam database tidak akan berubah.
# SELECT nama_kolom_1 AS nama_kolom_baru_sementara_1, nama_kolom_2 AS nama_kolom_baru_sementara_2 FROM nama_tabel;
SELECT no_urut AS nomor, nama_produk AS nama FROM ms_produk;

# 3. Menghilangkan Keyword 'AS'
#SELECT nama_kolom_1 nama_kolom_baru_sementara_1, nama_kolom_2 nama_kolom_baru_sementara_2 FROM nama_tabel;
SELECT no_urut nomor, nama_produk nama FROM ms_produk;

# 4. Menggabungkan Prefix dan Alias
# SELECT nama_tabel.nama_kolom_1 AS nama_kolom_baru_sementara_1 FROM nama_tabel;
SELECT ms_produk.harga AS harga_jual FROM ms_produk;

# 5. Menggunakan Alias pada Tabel
# Alias bisa digunakan untuk tabel dengan menggunakan keyword AS setelah nama tabel, kata AS bisa digunakan / tidak.
# Penggunaan alias pada tabel jika nama tabel tersebut cukup panjang dan muncul atau dirujuk beberapa kali dalam query. 
# SELECT * FROM nama_tabel nama_tabel_baru_sementara;
SELECT * FROM ms_produk t2;

# 6. Prefix dengan Alias Tabel
# SELECT nama_tabel_baru_sementara.nama_kolom_1, nama_tabel_baru_sementara.nama_kolom_2 FROM nama_tabel nama_tabel_baru_sementara;
SELECT t2.nama_produk, t2.harga FROM ms_produk t2;

----------------------------------------------------------------------------------------------------------------------------------------------------
# --- MINI PROJECT ---

# Proyek dari Cabang A
# - Tabel : tr_penjualan

# Format datanya yang akan di tampilkan adalah: 
# - kode_pelanggan, 
# - nama_produk, 
# - qty, 
# - harga, 
# - dan total, 
# - serta diurutkan mulai dari total revenue terbesar
# JAWABAN: 
    SELECT kode_pelanggan, nama_produk, qty, harga, qty*harga AS total 
    FROM tr_penjualan 
    WHERE qty*harga >= 100000 
    ORDER BY total DESC;

