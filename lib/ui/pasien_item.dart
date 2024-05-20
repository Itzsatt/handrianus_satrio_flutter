// Import paket Flutter
import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';

// Definisikan widget PasienItem, yang merupakan StatelessWidget
class PasienItem extends StatelessWidget {
  // Widget ini menerima objek Pasien sebagai parameter
  final Pasien pasien;

  // Konstruktor untuk widget PasienItem
  const PasienItem({super.key, required this.pasien});

  // Bangun hierarki widget
  @override
  Widget build(BuildContext context) {
    // Buat widget GestureDetector untuk menangani tap pada kartu
    return GestureDetector(
      // Definisikan widget anak dari GestureDetector
      child: Card(
        // Buat ListTile di dalam kartu
        child: ListTile(
          // Tampilkan nama pasien dalam ListTile
          title: Text("${pasien.namaPasien}"),
        ),
      ),
      // Definisikan callback onTap untuk menangani tap pada kartu
      onTap: () {
        // Saat kartu ditekan, navigasikan ke layar PasienDetail
        // dan kirimkan informasi pasien saat ini
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PasienDetail(pasien: pasien)));
      },
    );
  }
}
