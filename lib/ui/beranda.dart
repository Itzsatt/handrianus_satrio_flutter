// Mengimpor paket Flutter dan Widget
import 'package:flutter/material.dart';
import '../widget/sidebar.dart';

// Kelas Beranda adalah StatelessWidget yang membuat tampilan halaman Beranda
class Beranda extends StatelessWidget {
  // Konstruktor kelas Beranda
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    // Membuat Scaffold yang berisi Drawer, AppBar, dan Body
    return Scaffold(
      // Menambahkan Drawer dengan widget Sidebar
      drawer: Sidebar(),
      // Membuat AppBar dengan judul "Beranda"
      appBar: AppBar(
        title: Text("Beranda"),
      ),
      // Membuat Body dengan teks "Selamat Datang" di tengah
      body: Center(
        child: Text("Selamat Datang"),
      ),
    );
  }
}
