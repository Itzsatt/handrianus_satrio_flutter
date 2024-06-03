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

// Mendefinisikan kelas PasienPage yang merupakan turunan dari StatefulWidget
class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

// Mendefinisikan kelas _PasienPageState yang merupakan state dari PasienPage
class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    // Membuat tampilan halaman pasien menggunakan Scaffold
    return Scaffold(
      // Menambahkan sidebar pada halaman
      drawer: Sidebar(),
      // Membuat appbar dengan judul "Data Pasien" dan tombol tambah
      appBar: AppBar(
        title: const Text("Data Pasien"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              // Saat tombol tambah dipilih, navigasi ke halaman form pasien
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienForm()));
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
