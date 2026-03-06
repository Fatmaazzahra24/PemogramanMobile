# PRAKTIKUM MOBILE 3
## Control Flow (If / Else)

Nama : FATMA AZZAHRA ALIF HIDAYAH 
NIM : 244107060046  
Kelas : SIB 2D/06  

# PRAKTIKUM 3 LATIHAN 1

## 1. Hasil Eksekusi Program (latihan 1)

Berikut adalah hasil run kode program pada latihan 1.

![Hasil Run](img/1.png)


## 2. Jawaban

Saat kode dijalankan, program akan memeriksa nilai dari variabel `test`.  
Karena nilai `test` adalah `"test2"`, maka kondisi pada `else if (test == "test2")` bernilai benar sehingga program menampilkan **"Test2"**.  

Setelah itu terdapat pengecekan kondisi kedua yaitu `if (test == "test2")` yang juga bernilai benar, sehingga program kembali menampilkan **"Test2 again"**.


## 3. Hasil Eksekusi Program (Langkah 3)
Kode tidak bisa dijalankan karena ada eror.pertama karena sudah ada String test = "test2"; tapi dibuat lagi, kedua if (test) salah tipe data
test bertipe String, tapi if membutuhkan boolean (true / false). perbaikannya yaitu hanya deklarasi string test satu kali dan membuat deklarasi  status untuk variabel boolean  

![Hasil Run](img/2.png)

hasil yang benar : 
![Hasil Run](img/3.png)

# PRAKTIKUM 3 LATIHAN 1

## 2. Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
jawab : Saat dijalankan akan terjadi error karena variabel counter belum dideklarasikan terlebih dahulu.
Agar program bisa di run,  harus mendefinisikan variabel counter sebelum perulangan. ini perbaikan dan hasil run, program menghasilkan angka 1 hingga 32. Hal ini terjadi karena nilai awal counter = 0 lalu perulangan berjalan selama counter < 33

![Hasil Run](img/4.png)

## 3. Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
program berjalan baik, tidak eror. Program dimulai dengan membuat variabel counter bernilai 0. Kemudian program menjalankan perintah di dalam  do, yaitu mencetak nilai counter dan menambah nilainya dengan counter++.Setelah itu barulah kondisi while (counter < 77) diperiksa. Selama nilai counter masih kurang dari 77, perulangan akan terus berjalan.jadi  program akan menampilkan angka 0 sampai 76 secara berurutan.

![Hasil Run](img/5.png)