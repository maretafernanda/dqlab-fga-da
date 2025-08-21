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

--------------------------------------------------------------------------------------------
# 2. Fungsi Skalar Text

