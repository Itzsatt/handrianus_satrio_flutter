// Mengimpor paket Flutter
import 'package:flutter/material.dart';

// Mengimpor file halaman Beranda
import 'ui/beranda.dart';

// Fungsi main adalah entry point aplikasi
void main() {
  // Menjalankan aplikasi dengan widget MyApp
  runApp(const MyApp());
}

// Kelas MyApp adalah StatelessWidget yang membuat tampilan aplikasi
class MyApp extends StatelessWidget {
  // Konstruktor kelas MyApp
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Membuat MaterialApp dengan konfigurasi aplikasi
    return const MaterialApp(
      // Menyembunyikan banner debug
      debugShowCheckedModeBanner: false,
      // Judul aplikasi
      title: 'KlinikApp',
      // Menggunakan halaman Beranda sebagai halaman awal
      home: Beranda(),
    );
  }
}
