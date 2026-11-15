
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
