// Mengimpor paket Flutter
import 'package:flutter/material.dart';
import '../widget/sidebar.dart';
import '../model/pegawai.dart';
import '../model/pasien.dart';
import 'pegawai_detail.dart';
import 'pasien_detail.dart';
import 'pegawai_item.dart';
import 'pasien_item.dart';
import 'pegawai_form.dart';
import 'pasien_form.dart';

// Mendefinisikan kelas PegawaiPage yang merupakan turunan dari StatefulWidget
class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

// Mendefinisikan kelas _PegawaiPageState yang merupakan state dari PegawaiPage
class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    // Membuat tampilan halaman pegawai menggunakan Scaffold
    return Scaffold(
      // Menambahkan sidebar pada halaman
      drawer: Sidebar(),
      // Membuat appbar dengan judul "Data Pegawai" dan tombol tambah
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              // Saat tombol tambah dipilih, navigasi ke halaman form pegawai
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiForm()));
            },
          )
        ],
      ),
      // Membuat body halaman dengan ListView
      body: ListView(
        children: [
          // Menampilkan item pegawai
          PegawaiItem(pegawai: Pegawai(namaPegawai: "Pegawai")),
          // Menampilkan item pasien
          PasienItem(pasien: Pasien(namaPasien: "Pasien")),
        ],
      ),
    );
  }
}
