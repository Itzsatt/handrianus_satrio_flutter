// Mengimpor paket Flutter
import 'package:flutter/material.dart';
import 'poli_page.dart';
import 'poli_update_form.dart';
import '../model/poli.dart';

// Mendefinisikan widget PoliDetail yang merupakan StatefulWidget
// Widget ini menerima parameter Poli yang akan ditampilkan detailnya
class PoliDetail extends StatefulWidget {
  final Poli poli;

  const PoliDetail({super.key, required this.poli});

  // Membuat state baru untuk PoliDetail
  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

// Mendefinisikan state untuk PoliDetail
class _PoliDetailState extends State<PoliDetail> {
  // Membangun tampilan PoliDetail
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Menampilkan AppBar dengan judul "Detail Poli"
      appBar: AppBar(title: const Text("Detail Poli")),
      // Membuat layout utama dengan Column
      body: Column(
        children: [
          // Memberikan jarak vertikal
          const SizedBox(height: 20),
          // Menampilkan nama poli
          Text(
            "Nama Poli : ${widget.poli.namaPoli}",
            style: const TextStyle(fontSize: 20),
          ),
          // Memberikan jarak vertikal
          const SizedBox(height: 20),
          // Membuat baris dengan dua tombol
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Memanggil tombol "Ubah"
              _tombolUbah(),
              // Memanggil tombol "Hapus"
              _tombolHapus(),
            ],
          )
        ],
      ),
    );
  }

  // Membuat tombol "Ubah"
  Widget _tombolUbah() {
    return ElevatedButton(
      onPressed: () {
        // Navigasi ke halaman PoliUpdateForm saat tombol ditekan
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PoliUpdateForm(poli: widget.poli),
          ),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: const Text("Ubah"),
    );
  }

  // Membuat tombol "Hapus"
  Widget _tombolHapus() {
    return ElevatedButton(
      onPressed: () {
        // Menampilkan dialog konfirmasi untuk menghapus data
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: const Text("Yakin ingin menghapus data ini?"),
            actions: [
              // Tombol "YA" untuk menghapus data
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const PoliPage()),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text("YA"),
              ),
              // Tombol "Tidak" untuk membatalkan penghapusan
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text("Tidak"),
              ),
            ],
          ),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text("Hapus"),
    );
  }
}
