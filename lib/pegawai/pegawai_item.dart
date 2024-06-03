// mengimport paket Flutter
import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_detail.dart';

// Ini adalah kelas 'PegawaiItem' yang merupakan StatelessWidget
// Kelas ini digunakan untuk menampilkan item pegawai dalam bentuk kartu
class PegawaiItem extends StatelessWidget {
  // Ini adalah properti 'pegawai' yang menerima objek Pegawai
  final Pegawai pegawai;

  // Ini adalah konstruktor untuk kelas PegawaiItem
  const PegawaiItem({super.key, required this.pegawai});

  // Ini adalah fungsi 'build' yang digunakan untuk membuat UI dari item pegawai
  @override
  Widget build(BuildContext context) {
    // Ini adalah GestureDetector yang menangani tap pada item pegawai
    return GestureDetector(
      // Ini adalah Card yang digunakan sebagai container untuk item pegawai
      child: Card(
        child: ListTile(
          // Ini adalah Text yang menampilkan nama pegawai
          title: Text(pegawai.namaPegawai),
        ),
      ),
      // Ini adalah fungsi onTap yang dijalankan ketika item pegawai di tap
      onTap: () {
        // Ini adalah Navigator.push yang berfungsi untuk berpindah ke halaman PegawaiDetail
        Navigator.push(
          context,
          MaterialPageRoute(
            // Ini adalah konstruksi untuk membuat instance PegawaiDetail dengan objek pegawai
            builder: (context) => PegawaiDetail(pegawai: pegawai),
          ),
        );
      },
    );
  }
}
