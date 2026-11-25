
# MyPortfolio Mobile

MyPortfolio Mobile merupakan aplikasi portofolio pribadi berbasis Flutter yang dikembangkan untuk memenuhi tugas individu mata kuliah Pemrograman Berbasis Platform.

Nama: Aisha Ibnaty Zahira  
NPM: 2506624726  
Kelas: PBP C

## Fitur Aplikasi

- Menampilkan informasi NPM, nama, dan kelas.
- Menampilkan empat kartu menu dengan warna pastel.
- Menampilkan daftar Experience dari database Django.
- Menambahkan Experience melalui REST API.
- Melakukan login menggunakan akun Django.
- Menggunakan token authentication untuk autentikasi.
- Menyediakan fitur logout.
- Menyediakan formulir Add Education.
- Menyediakan navigasi melalui drawer.
- Melakukan validasi input pada formulir.

Data Experience terhubung dengan database Django,
sedangkan data Education masih ditampilkan melalui
AlertDialog dan belum disimpan ke database.

## Cara Menjalankan Aplikasi

1. Pastikan Flutter SDK sudah terpasang.
2. Buka terminal pada direktori utama proyek.
3. Jalankan `flutter pub get` untuk memasang dependencies.
4. Jalankan `flutter run -d chrome` untuk membuka aplikasi melalui Chrome.
5. Apabila terdapat kendala pada mode debug, jalankan `flutter run -d chrome --release`.
6. Jalankan `flutter analyze` untuk memeriksa kode.
7. Jalankan `flutter test` untuk menjalankan pengujian widget.

## Struktur Kode

- `lib/main.dart`: konfigurasi utama aplikasi.
- `lib/screens/menu.dart`: halaman utama aplikasi.
- `lib/screens/project_form.dart`: halaman formulir Tambah Experience.
- `lib/screens/education_form.dart`: halaman formulir Add Education.
- `lib/widgets/project_card.dart`: komponen kartu menu.
- `lib/widgets/left_drawer.dart`: komponen navigasi drawer.
- `test/widget_test.dart`: pengujian widget halaman utama.

## Tugas 7

Pada Tugas 7, saya membuat halaman utama aplikasi portofolio menggunakan Flutter. Halaman tersebut menampilkan informasi pribadi, kartu menu, tema warna, dan SnackBar sebagai respons ketika pengguna menekan kartu.

### Pertanyaan Reflektif

1. **Apa itu widget tree? Jelaskan hubungan parent dan child pada widget.**

   Widget tree adalah susunan widget yang membentuk tampilan aplikasi Flutter. Hubungan parent-child berarti widget induk dapat memiliki widget anak di dalamnya. Contohnya, Scaffold memiliki Column pada bagian body, sedangkan Column dapat memiliki beberapa widget anak seperti Row dan Text.

2. **Apa saja widget yang digunakan dan apa fungsinya?**

   MaterialApp digunakan sebagai dasar aplikasi, Scaffold sebagai kerangka halaman, AppBar untuk menampilkan judul, dan Text untuk menampilkan tulisan. Column dan Row digunakan untuk mengatur posisi widget secara vertikal dan horizontal.

   Padding digunakan untuk memberikan jarak, SizedBox untuk memberikan spasi, Card untuk menampilkan informasi, Expanded untuk membagi ruang, dan GridView untuk menyusun kartu menu. Material dan InkWell digunakan untuk membuat kartu yang dapat ditekan, Icon untuk menampilkan ikon, serta SnackBar untuk menampilkan pesan kepada pengguna.

3. **Apa fungsi MaterialApp?**

   MaterialApp merupakan widget yang menyediakan pengaturan dasar aplikasi, seperti tema, navigasi, dan tampilan Material Design. MaterialApp biasanya digunakan sebagai root widget karena memudahkan pengaturan aplikasi secara keseluruhan.

4. **Apa perbedaan StatelessWidget dan StatefulWidget?**

   StatelessWidget digunakan ketika widget tidak membutuhkan perubahan state internal, contohnya kartu informasi profil. StatefulWidget digunakan ketika widget perlu menyimpan atau mengelola state yang dapat berubah berdasarkan interaksi pengguna, misalnya penghitung angka, checkbox, atau formulir.

5. **Apa itu BuildContext?**

   BuildContext menunjukkan posisi suatu widget dalam widget tree. BuildContext dapat digunakan untuk mengakses informasi atau fitur dari widget induk, misalnya ScaffoldMessenger.of(context) untuk menampilkan SnackBar dan Navigator.of(context) untuk melakukan navigasi.

6. **Apa perbedaan hot reload dan hot restart?**

   Hot reload memperbarui perubahan kode tanpa menghapus state aplikasi yang sedang berjalan. Hot restart menjalankan ulang aplikasi dari awal sehingga state akan direset.

   Hot restart diperlukan ketika perubahan tertentu tidak dapat diterapkan melalui hot reload, misalnya perubahan pada inisialisasi state. Sementara itu, full restart diperlukan untuk perubahan tertentu pada konfigurasi aplikasi atau kode native.

### Deklarasi Penggunaan AI Tugas 7

Saya menggunakan ChatGPT sebagai alat bantu untuk memahami instruksi tugas, mempelajari konsep widget Flutter, serta membantu memperbaiki dan merapikan kode. Saya juga menggunakan AI untuk membantu menyusun penjelasan pertanyaan reflektif.

Hasil kode diperiksa kembali secara manual dan diuji menggunakan flutter analyze.

## Tugas 8

Pada Tugas 8, saya mengembangkan bagian Education sebagai fitur baru dalam aplikasi portofolio. Bagian ini berbeda dari formulir yang sebelumnya dibuat pada tutorial.

Pengembangan dilakukan dengan menambahkan halaman formulir, navigasi melalui kartu menu dan drawer, validasi input, serta dialog yang menampilkan ringkasan data pendidikan.

### Pertanyaan Reflektif

1. **Apa perbedaan Navigator.push(), Navigator.pushReplacement(), dan Navigator.pop()?**

   Navigator.push() digunakan untuk membuka halaman baru tanpa menghapus halaman sebelumnya sehingga pengguna masih dapat kembali ke halaman tersebut.

   Navigator.pushReplacement() digunakan untuk mengganti halaman yang sedang dibuka dengan halaman baru. Sementara itu, Navigator.pop() digunakan untuk menghapus halaman teratas dari navigation stack atau menutup dialog.

   Pada kartu Add Education, saya menggunakan Navigator.push() agar pengguna dapat membuka formulir tanpa menghapus halaman utama. Pada menu Home di drawer, saya menggunakan Navigator.pop() untuk menutup drawer, kemudian Navigator.pushAndRemoveUntil() untuk kembali ke halaman utama sekaligus menghapus tumpukan halaman sebelumnya.

2. **Apa peran Scaffold, AppBar, dan Drawer dalam membangun antarmuka aplikasi Flutter?**

   Scaffold berfungsi sebagai kerangka halaman yang menyediakan tempat untuk AppBar, Drawer, dan body. AppBar digunakan untuk menampilkan judul halaman, sedangkan Drawer digunakan sebagai menu navigasi.

   Ketiga widget tersebut membantu membuat struktur halaman menjadi lebih teratur dan konsisten. Pada aplikasi ini, saya menggunakan LeftDrawer yang sama pada halaman utama dan halaman Add Education. Saya juga menggunakan warna pastel pink pada AppBar agar tampilan antarmuka tetap konsisten.

3. **Bagaimana cara menentukan layout yang tepat untuk formulir?**

   Saya menggunakan Column karena input formulir lebih mudah dibaca apabila disusun secara vertikal. Padding digunakan untuk memberikan jarak antara isi formulir dan tepi layar, sedangkan SizedBox digunakan untuk memberikan jarak antarinput.

   Saya juga menggunakan SingleChildScrollView agar formulir dapat digulir ketika ruang layar terbatas, misalnya ketika aplikasi dibuka melalui ponsel atau ketika keyboard muncul. Dengan demikian, pengguna tetap dapat mengakses seluruh input dan tombol Simpan.

4. **Apa fungsi GlobalKey<FormState>, validator, dan validate() dalam formulir Flutter?**

   GlobalKey<FormState> digunakan untuk mengakses state dari Form. Setiap TextFormField memiliki validator yang berfungsi untuk memeriksa apakah input memenuhi aturan yang telah ditentukan.

   Ketika tombol Simpan ditekan, validate() menjalankan seluruh validator pada formulir. Apabila terdapat input yang tidak valid, pesan kesalahan akan ditampilkan dan dialog tidak akan muncul. Apabila seluruh input valid, aplikasi akan menampilkan AlertDialog yang berisi ringkasan data pendidikan.

   Sebagai contoh, tahun masuk 3000 akan ditolak karena melebihi tahun saat ini. Nama institusi yang hanya berisi spasi juga akan ditolak dengan menggunakan trim() dan isEmpty.

   Penggunaan keyboard angka saja tidak cukup untuk memastikan input valid karena pengguna masih dapat memasukkan angka yang tidak sesuai dengan rentang tahun yang ditentukan.

### Implementasi Formulir Education

Formulir Education memiliki tiga input, yaitu:

- Nama institusi.
- Program studi.
- Tahun masuk.

Nama institusi dan program studi tidak boleh kosong atau hanya berisi spasi. Tahun masuk harus berupa bilangan bulat dengan rentang 1900 sampai tahun saat ini.

Formulir dapat diakses melalui kartu Add Education pada halaman utama dan melalui menu Add Education pada drawer.

Setelah seluruh input memenuhi ketentuan validasi, aplikasi menampilkan AlertDialog yang berisi nama institusi, program studi, dan tahun masuk. Pengguna dapat menekan tombol OK untuk menutup dialog dan kembali ke formulir.

### Pengujian Aplikasi

Pengujian awal dilakukan dengan menjalankan aplikasi melalui Chrome, membuka formulir Add Education, mengisi data pendidikan, menampilkan ringkasan data melalui AlertDialog, dan menutup dialog menggunakan tombol OK.

Tampilan aplikasi juga diperiksa menggunakan simulasi layar ponsel pada Chrome untuk memastikan formulir dapat digunakan pada layar berukuran kecil.

Pada pengujian awal, perintah `flutter analyze` menghasilkan No issues found dan perintah `flutter test` menghasilkan All tests passed.

Skenario pengujian yang digunakan untuk memeriksa fungsionalitas aplikasi meliputi:

- Membuka formulir melalui kartu Add Education.
- Membuka formulir melalui drawer.
- Kembali ke halaman utama melalui menu Home.
- Memeriksa validasi ketika input kosong.
- Memeriksa validasi ketika input hanya berisi spasi.
- Memeriksa validasi ketika tahun masuk bukan angka.
- Memeriksa validasi ketika tahun masuk berada di luar rentang yang ditentukan.
- Mengisi formulir dengan data yang valid.
- Memeriksa kesesuaian data pada AlertDialog.
- Menutup dialog menggunakan tombol OK.

## AI Disclosure Tugas 8

### Tools yang Digunakan

ChatGPT.

### Tujuan Penggunaan AI

Saya menggunakan ChatGPT sebagai alat bantu dalam memahami instruksi tugas, mengembangkan formulir Education, menerapkan validasi input, mengatur navigasi, serta menampilkan ringkasan data melalui AlertDialog.

Selain itu, AI digunakan untuk membantu mengatasi kendala teknis selama pengembangan aplikasi dan menyusun dokumentasi serta jawaban pertanyaan reflektif.

### Strategi Prompting

Saya memberikan instruksi tugas, potongan kode yang sudah dibuat, dan screenshot ketika mengalami kendala. Pertanyaan diberikan secara bertahap agar solusi yang diperoleh sesuai dengan struktur proyek dan tidak menghilangkan fitur yang sebelumnya sudah dibuat.

### Log Prompting

Berikut rangkuman prompt yang digunakan selama proses pengerjaan tugas. Penulisan prompt telah dirapikan agar lebih mudah dipahami tanpa mengubah tujuan penggunaannya.

1. Pelajari instruksi Tugas 8 dan jelaskan tahapan pengerjaan yang perlu dilakukan.

2. Bagaimana cara mengimplementasikan formulir Education pada aplikasi Flutter?

3. Bagaimana cara menghubungkan kartu menu dan drawer dengan halaman formulir Education?

4. Bagaimana cara menerapkan validasi input agar data yang dimasukkan sesuai dengan ketentuan?

5. Bagaimana cara menampilkan ringkasan data formulir menggunakan AlertDialog?

6. Bagaimana cara mengatasi kendala tampilan kosong pada Flutter Web dan kesalahan pada widget test?

7. Bagaimana cara menyesuaikan layout agar tampilan aplikasi tetap rapi pada layar ponsel?

8. Periksa kesesuaian implementasi dan dokumentasi dengan ketentuan Tugas 8.

Prompt tersebut diberikan secara bertahap dengan menyertakan potongan kode dan hasil pengujian agar saran yang diberikan sesuai dengan kondisi proyek.

### Evaluasi dan Keterbatasan AI

Selama pengerjaan tugas, tidak semua saran AI dapat langsung diterapkan. Beberapa saran perlu disesuaikan kembali dengan struktur proyek dan kondisi aplikasi.

Salah satu kendala yang saya alami adalah Chrome menampilkan layar kosong ketika aplikasi dijalankan dalam mode debug. Setelah memeriksa pesan kesalahan pada terminal, aplikasi berhasil dijalankan menggunakan mode release.

Selain itu, layout kartu pada halaman utama perlu disesuaikan agar seluruh menu dapat ditampilkan dengan baik. Penyesuaian dilakukan pada childAspectRatio dan penggunaan SingleChildScrollView.

Pengujian widget juga sempat mengalami kendala karena kode pengujian sebelumnya tidak sesuai dengan struktur aplikasi. Kendala tersebut diperbaiki dengan menyesuaikan widget yang diuji dan memperbaiki import sesuai dengan nama package.

Saya menerapkan perubahan kode dengan bantuan AI, menjalankan aplikasi secara langsung, dan memeriksa kembali hasil implementasinya. Saya juga menggunakan flutter analyze dan flutter test untuk membantu memastikan kode dapat dijalankan dan pengujian widget berhasil.

Penggunaan AI membantu proses pengerjaan menjadi lebih terarah. Namun, hasil yang diberikan tetap perlu dipahami, diperiksa, dan diuji kembali agar sesuai dengan kebutuhan aplikasi dan ketentuan tugas.

## Tugas 9

Pada Tugas 9, saya mengintegrasikan aplikasi
MyPortfolio Mobile dengan backend Django menggunakan
REST API. Integrasi ini memungkinkan aplikasi
mengambil dan menambahkan data Experience serta
melakukan autentikasi pengguna.

### Implementasi

- Menggunakan package http untuk mengirim HTTP request.
- Menggunakan Provider untuk menyediakan ApiClient.
- Membuat model Experience berdasarkan respons JSON.
- Menggunakan json_serializable untuk konversi data JSON.
- Mengimplementasikan login dan logout menggunakan token.
- Menampilkan daftar Experience menggunakan FutureBuilder.
- Menghubungkan formulir Tambah Experience dengan Django.
- Menyesuaikan navigasi pada kartu menu dan drawer.

### Endpoint API

| Method | Endpoint | Fungsi |
| --- | --- | --- |
| GET | /api/v1/experiences/ | Mengambil data Experience |
| POST | /api/v1/experiences/ | Menambahkan Experience |
| POST | /api/v1/auth/token/ | Login dan memperoleh token |
| POST | /api/v1/auth/logout/ | Logout |

### Pengujian

Pengujian dilakukan dengan menjalankan backend Django
dan aplikasi Flutter secara lokal.

Hasil pengujian:

- Daftar Experience berhasil ditampilkan.
- Login berhasil dilakukan.
- Data Experience baru berhasil ditambahkan.
- Logout berhasil dilakukan.
- Flutter analyze menghasilkan No issues found.
- Flutter build web berhasil dilakukan.

### Kendala dan Solusi

Selama pengembangan, aplikasi sempat menampilkan
layar kosong ketika dijalankan melalui Chrome dalam
mode debug. Kendala tersebut diatasi dengan melakukan
build web dan menjalankan hasil build menggunakan
HTTP server lokal.

Selain itu, aplikasi sempat gagal mengambil data
karena alamat backend menggunakan alamat Android
Emulator. Alamat backend kemudian disesuaikan menjadi
127.0.0.1 agar dapat diakses melalui browser.

## AI Disclosure Tutorial 10

### Tools yang Digunakan

ChatGPT.

### Tujuan Penggunaan AI

Saya menggunakan ChatGPT untuk membantu memahami
integrasi Flutter dengan Django REST API, menyusun
kode autentikasi, mengimplementasikan model data,
menghubungkan formulir dengan backend, serta
mengatasi kendala selama pengembangan aplikasi.

### Strategi Prompting

Saya memberikan potongan kode, instruksi tugas,
pesan kesalahan, dan screenshot hasil pengujian
secara bertahap agar solusi sesuai dengan struktur
proyek yang digunakan.

### Log Prompting

Berikut rangkuman prompt yang digunakan:

1. Jelaskan tahapan integrasi Flutter dengan backend Django.
2. Bantu implementasikan model Experience berdasarkan JSON.
3. Bantu mengimplementasikan API Client dan autentikasi token.
4. Bagaimana cara menghubungkan halaman Experience dengan API?
5. Bagaimana cara menyimpan data formulir ke backend Django?
6. Bagaimana cara mengatasi layar kosong pada Flutter Web?
7. Bagaimana cara mengatasi kegagalan pengambilan data API?
8. Bantu menyusun dokumentasi hasil implementasi dan pengujian.

### Evaluasi dan Keterbatasan AI

Beberapa solusi yang diberikan AI perlu disesuaikan
dengan struktur proyek dan konfigurasi perangkat.
Kendala yang ditemukan selama pengerjaan diperiksa
melalui terminal, browser, dan respons API Django.

Kode yang dihasilkan dengan bantuan AI diterapkan
dan diuji secara langsung. Pengujian dilakukan untuk
memastikan fitur login, logout, pengambilan data,
dan penambahan Experience dapat berjalan.