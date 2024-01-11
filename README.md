# MyLibraryApp

## Fitur Aplikasi
1. **Mengelola Daftar Buku:** Aplikasi ini memungkinkan pengguna untuk melihat, menambah, mengupdate, dan menghapus buku dari daftar.
2. **Pemantauan Perubahan Otomatis:** Menggunakan `nodemon` untuk memantau perubahan dan melakukan reload otomatis saat mengembangkan aplikasi (`npm run dev`).
3. **Dukungan Pengaturan Host Dinamis:** Menyediakan opsi `--host` saat menjalankan aplikasi (`npm run dev` atau `npm start`).
4. **Menampilkan Informasi Server:** Menampilkan informasi server, termasuk alamat IP dan port saat aplikasi dijalankan.

## Teknologi Aplikasi
1. **Node.js dan Express:** Backend server menggunakan Node.js dengan framework Express.
2. **JSON sebagai Database:** Data buku disimpan dalam format JSON pada file `books.json`.
3. **Express Middleware:** Menerapkan middleware seperti `body-parser` untuk parsing data JSON.
4. **Yargs dan Nodemon:** Menggunakan `yargs` untuk mengelola argumen baris perintah dan `nodemon` untuk memantau perubahan selama pengembangan.

## Cara Setup dan Konfigurasi Proyek
1. **Instalasi Dependensi:**
   ```bash
   npm install

