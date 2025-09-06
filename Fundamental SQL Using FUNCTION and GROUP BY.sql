# Fungsi di SQL
# Fungsi adalah metode yang digunakan untuk melakukan operasi data di database, bisa berupa kalkulasi numerik seperti sum, count, avg, etc; 
# atau operasi non-numerik seperti string concatenations dan sub-strings. 
# SQL Function dapat dibagi ke dalam 2 kategori, yaitu fungsi scalar dan fungsi aggregate.

# 1. Fungsi Skalar Matematika
# Fungsi-fungsi yang bisa dilakukan di SQL, dokumentasi fungsi SQL di sini:
# https://www.postgresql.org/docs/9.5/functions-math.html, untuk postgresql database dan di sini:
# https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html, untuk mysql database. 
# 1. a. Fungsi Skalar Matematika - ABS() -> Mengembalikan nilai 'absolute' dari nilai input
# SELECT ABS(ColumnName)  
# FROM TableName; 
SELECT StudentID, FirstName, LastName, Semester1, Semester2, ABS(MarkGrowth) AS MarkGrowth
FROM students;

# 1. b. Fungsi Skalar Matematika - CEILING() -> Mengembalikan nilai 'int' terbesar yg terdekat dari nilai input
# SELECT CEILING(ColumnName)  
# FROM TableName; 
SELECT StudentID, FirstName, LastName, CEILING(Semester1) AS Semester1, CEILING(Semester2) AS Semester2, MarkGrowth
FROM students;

# 1. c. Fungsi Skalar Matematika - FLOOR() -> Mengembalikan nilai 'int' terkecil yg terdekat dari nilai input
# SELECT FLOOR(ColumnName)  
# FROM TableName; 
SELECT StudentID, FirstName, LastName, FLOOR(Semester1) AS Semester1, FLOOR(Semester2) AS Semester2, MarkGrowth
FROM students;

# 1. d. Fungsi Skalar Matematika - ROUND() -> Mengembalikan nilai 'pembulatan' dari suatu nilai decimal
# SELECT ROUND(ColumnName)  
# FROM TableName; 
SELECT StudentID, FirstName, LastName, ROUND(Semester1, 1) AS Semester1, ROUND(Semester2, 0) AS Semester2, MarkGrowth
FROM students;

# 1. e. Fungsi Skalar Matematika - SQRT() -> Mengembalikan nilai 'kuadrat' dari nilai input.
# SELECT SQRT(ColumnName)  
# FROM TableName; 
SELECT StudentID, FirstName, LastName, SQRT(Semester1) AS Semester1, Semester2, MarkGrowth
FROM students;

# 1. f. Fungsi Skalar Matematika - MOD() -> Mengembalikan nilai 'sisa hasil' pembagian dari nilai input
# SELECT MOD(ColumnName)  
# FROM TableName; 

# 1. g. Fungsi Skalar Matematika - EXP() -> Mengembalikan nilai 'eksponensial' dari nilai input
# SELECT EXP(ColumnName)  
# FROM TableName; 

# MOD() + EXP()
SELECT StudentID, FirstName, LastName, MOD(Semester1,2) AS Semester1, Semester2, EXP(MarkGrowth) FROM students;

----------------------------------------------------------------------------------------------------------------------------------------------------
# 2. Fungsi Skalar Text
# Fungsi - fungsi skalar text di dokumentasi
# postgresql: https://www.postgresql.org/docs/9.1/functions-string.html
# mysql: https://dev.mysql.com/doc/refman/8.0/en/string-functions.html
# 2. a. Fungsi Text - CONCAT()
# SELECT CONCAT(ColumnName1, ColumnName2, ColumnNameN)  
# FROM TableName; 
SELECT StudentID, CONCAT(FirstName, LastName) as Name, Semester1, Semester2, MarkGrowth
FROM students;

# 2. b. Fungsi Text - SUBSTRING_INDEX() -> Mengambil pecahan text pertama atau sub-text sebelum delimiter. 
# SELECT SUBSTRING_INDEX(column, delimiter, index to return)  
# FROM TableName; 
SELECT StudentID, SUBSTRING_INDEX(Email,'@',1) as Name
FROM students;

# 2. c. Fungsi Text - SUBSTR() -> Mengambil substring mulai pada karakter ke-N hingga karakter ke-N
# SELECT SUBSTR(columnName, Start Index, Number of string to be extract)
# FROM TableName;
SELECT StudentID, SUBSTR(FirstName, 2, 3) as Initial
FROM students;

# 2. d. Fungsi Text - LENGTH() -> Menghitung panjang karakter
# SELECT LENGTH(ColumnName)
# FROM TableName; 
SELECT StudentID, FirstName, LENGTH(FirstName) as Total_Char
FROM students;

# 2. e. Fungsi Text - REPLACE() -> Mengganti data karakter
# SELECT REPLACE(ColumnName, Character/String to be change, New String/Character)
# FROM TableName; 
SELECT StudentID, Email, REPLACE(Email, 'yahoo', 'gmail') as New_Email
FROM students;

----------------------------------------------------------------------------------------------------------------------------------------------------
# --- TUGAS PRAKTEK ---

# Gunakan fungsi UPPER() untuk mengubah kolom FirstName menjadi seluruhnya kapital, 
# dan gunakan LOWER() untuk mengubah kolom LastName menjadi seluruhnya non-kapital. 
# Gunakan kedua fungsi tersebut dalam satu SELECT-Statement.

# JAWABAN: 
    SELECT StudentID, UPPER(FirstName) as FirstName, LOWER(LastName) as LastName FROM students;

----------------------------------------------------------------------------------------------------------------------------------------------------
# 3. Fungsi Aggregate
# Fungsi aggregate digunakan untuk melakukan perhitungan pada sekelompok nilai.

# 3. a. Fungsi Aggregate - SUM()
# SELECT SUM(ColumnName)  
# FROM TableName; 
SELECT SUM(Semester1) as Total_1, SUM(Semester2) as Total_2 FROM students;

# 3. b. Fungsi Aggregate - COUNT()
# SELECT COUNT(ColumnName)  
# FROM TableName; 
SELECT COUNT(FirstName) as Total_Student FROM students;

# 3. c. Fungsi Aggregate - AVG()
# SELECT AVG(ColumnName)  
# FROM TableName; 
SELECT AVG(Semester1) as AVG_1, AVG(Semester2) as AVG_2 
FROM students;

-------------------------------------------------------------------
# --- TUGAS PRAKTEK ---

# Gunakan fungsi MIN() dan MAX() untuk menghitung nilai dari kolom Semester1 dan Semester2.
# Gunakan kedua fungsi tersebut dalam satu SELECT-Statement.

# JAWABAN: 
    SELECT MIN(Semester1) as Min1, MAX(Semester1) as Max1, MIN(Semester2) as Min2, MAX(Semester2) as Max2 FROM students;

-------------------------------------------------------------------
# 3. d. Fungsi GROUP BY()
# GROUP BY statement akan mengelompokkan data yang bernilai sama ke dalam satu group, dan dengan menggunakan fungsi aggregate seperti (COUNT, MAX, MIN, SUM, AVG)
