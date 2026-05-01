# LAPORAN PRAKTIKUM 7 Manajemen Plugin

- Nama  : Fatma Azzahra Alif Hidayah
- NIM   : 244107060046
- Kelas : SIB 2D
------------------------------------------------------

## Praktikum 1: Penerapan Plugin

### Langkah 4 : Tambah Widget AutoSizeText
Setelah Anda menambahkan kode di atas, Anda akan mendapatkan info error. Mengapa demikian? Jelaskan dalam laporan praktikum Anda!
Jawab:  
a.AutoSizeText belum di-import
Widget AutoSizeText digunakan tetapi belum di-import dari package auto_size_text. Akibatnya Flutter tidak mengenali widget tersebut karena bukan bawaan default.

b.Variabel text tidak didefinisikan
Variabel text digunakan di dalam AutoSizeText tanpa deklarasi sebelumnya. Hal ini menyebabkan error karena Dart mewajibkan semua variabel harus sudah didefinisikan.

c.Constructor belum menerima parameter text
Constructor pada widget belum memiliki parameter untuk menerima nilai text. Akibatnya teks tidak bisa dikirim dari luar widget dan widget menjadi tidak fleksibel.

### Hasil Screenshot
![Hasil Step 1](images/1.jpeg)

------------------------------------------------------------------

## Tugas Praktikum

### 1. Jelaskan maksud dari langkah 2 pada praktikum tersebut!
Langkah 2 bertujuan untuk menambahkan plugin `auto_size_text` ke dalam project Flutter melalui file `pubspec.yaml`. Plugin ini digunakan agar teks dapat menyesuaikan ukuran secara otomatis sesuai dengan ruang yang tersedia.

### 2. Jelaskan maksud dari langkah 5 pada praktikum tersebut!
Langkah 5 bertujuan untuk memperbaiki error pada widget dengan menambahkan variabel `text` sebagai parameter. Hal ini dilakukan agar widget dapat menerima input teks dari luar dan dapat digunakan kembali secara fleksibel.

### 3. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!
Pada langkah 6 ditambahkan widget `RedTextWidget` dan `Text`.  
`RedTextWidget` menggunakan `AutoSizeText` sehingga ukuran teks dapat menyesuaikan secara otomatis, sedangkan `Text` memiliki ukuran tetap dan tidak akan menyesuaikan jika ruang terbatas.

### 4. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text!
- `text` : berisi teks yang akan ditampilkan pada layar.  
- `style` : digunakan untuk mengatur tampilan teks seperti warna, ukuran font, dan lain-lain.  
- `maxLines` : menentukan jumlah maksimal baris yang dapat digunakan oleh teks.  
- `overflow` : mengatur bagaimana teks ditampilkan jika melebihi batas, misalnya dipotong dengan tanda titik tiga (`ellipsis`).  