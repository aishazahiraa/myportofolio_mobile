
# MyPortfolio Mobile

Aplikasi portofolio pribadi berbasis Flutter.

Nama: Aisha Ibnaty Zahira  
NPM: 2506624726  
Kelas: PBP C

## Fitur
- Menampilkan informasi NPM, nama, dan kelas.
- Menampilkan tiga tombol menu dengan warna berbeda.
- Menampilkan SnackBar ketika tombol ditekan.

## Cara Menjalankan
1. Pastikan Flutter SDK sudah terpasang.
2. Jalankan `flutter pub get`.
3. Jalankan `flutter run`.
4. Gunakan `flutter analyze` untuk memeriksa kode.

### Tugas 7

1. **Apa itu widget tree?**

   Widget tree adalah susunan widget yang membentuk tampilan aplikasi Flutter. Hubungan parent-child berarti widget induk dapat memiliki widget anak di dalamnya. Contohnya, Scaffold menjadi parent dari Column yang berisi Row dan Text.

2. **Widget yang digunakan dan fungsinya**

   MaterialApp digunakan sebagai dasar aplikasi, Scaffold untuk struktur halaman, AppBar untuk bagian atas, Text untuk tulisan, Column dan Row untuk mengatur posisi widget, Padding untuk jarak, SizedBox untuk spasi, Card untuk kartu informasi, Expanded untuk membagi ruang, GridView untuk menyusun menu, Material dan InkWell untuk tombol, Icon untuk ikon, serta SnackBar untuk menampilkan pesan. StatelessWidget digunakan untuk membuat widget yang tidak memiliki state yang berubah.

3. **Fungsi MaterialApp**

   MaterialApp merupakan widget utama yang menyediakan pengaturan dasar aplikasi, seperti tema, navigasi, dan tampilan Material Design. Widget ini biasanya digunakan sebagai root karena memudahkan pengaturan keseluruhan aplikasi.

4. **Perbedaan StatelessWidget dan StatefulWidget**

   StatelessWidget digunakan ketika tampilan tidak membutuhkan perubahan state internal, contohnya kartu informasi profil. StatefulWidget digunakan ketika tampilan perlu berubah berdasarkan interaksi pengguna, misalnya penghitung angka atau checkbox.

5. **Apa itu BuildContext?**

   BuildContext menunjukkan posisi suatu widget dalam widget tree. BuildContext digunakan untuk mengakses informasi atau fitur dari widget induk, misalnya ScaffoldMessenger.of(context) untuk menampilkan SnackBar.

6. **Perbedaan hot reload dan hot restart**

   Hot reload memperbarui perubahan kode tanpa menghapus state aplikasi yang sedang berjalan. Hot restart menjalankan ulang aplikasi dari awal sehingga state direset. Hot restart diperlukan ketika perubahan tidak diterapkan dengan hot reload, misalnya perubahan inisialisasi state. Full restart diperlukan untuk perubahan tertentu pada konfigurasi atau kode native.

## Deklarasi Penggunaan AI

Saya menggunakan ChatGPT sebagai alat bantu untuk memahami instruksi tugas, mempelajari konsep widget Flutter, serta membantu memperbaiki dan merapikan kode. Saya juga menggunakan AI untuk membantu menyusun penjelasan pertanyaan reflektif. Hasil kode diperiksa kembali secara manual dan diuji menggunakan flutter analyze.

### Tugas 8

1. Navigator.push() digunakan untuk membuka halaman baru tanpa menghapus halaman sebelumnya. Navigator.pushReplacement() mengganti halaman saat ini dengan halaman baru, sedangkan Navigator.pop() digunakan untuk kembali ke halaman sebelumnya atau menutup dialog. Pada kartu Add Education, saya menggunakan Navigator.push(). Pada menu Home di drawer, saya menggunakan Navigator.pushAndRemoveUntil() agar kembali ke halaman utama tanpa menumpuk halaman.

2. Scaffold berfungsi sebagai kerangka halaman, AppBar sebagai bagian judul, dan Drawer sebagai menu navigasi. Ketiganya membuat struktur halaman lebih konsisten. Contohnya, saya menggunakan warna pastel pink pada AppBar halaman utama dan halaman Add Education.

3. Saya menggunakan Column agar input tersusun secara vertikal. SizedBox digunakan untuk memberikan jarak antarinput, sedangkan SingleChildScrollView memungkinkan pengguna menggulir halaman ketika ukuran layar terbatas.

4. GlobalKey<FormState> digunakan untuk mengakses state formulir. Validator memeriksa setiap input, sedangkan validate() menjalankan seluruh validasi ketika tombol Simpan ditekan. Contohnya, tahun masuk 3000 akan ditolak karena melebihi tahun saat ini. Penggunaan keyboard angka saja tidak cukup karena angka yang dimasukkan belum tentu valid.

### AI Disclosure Tugas 8

Saya menggunakan ChatGPT untuk membantu memahami instruksi tugas, membuat formulir Add Education, menambahkan navigasi pada kartu dan drawer, serta menyusun validasi input dan dialog ringkasan.

Saya memberikan potongan kode yang sudah ada dan screenshot ketika mengalami kendala. ChatGPT juga membantu mencari solusi ketika Chrome menampilkan layar putih dan ketika flutter analyze menemukan masalah pada widget_test.dart.

Saya menerapkan perubahan kode dan melakukan pengujian langsung pada aplikasi. Beberapa saran AI masih perlu diperbaiki, seperti ukuran kartu dan penggunaan import pada widget_test.dart.