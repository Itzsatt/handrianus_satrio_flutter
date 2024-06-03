// Mengimpor paket Flutter
import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';
import 'pasien_page.dart';

// Kelas PasienForm adalah StatefulWidget yang menampilkan halaman form input data pasien
class PasienForm extends StatefulWidget {
  const PasienForm({Key? key}) : super(key: key);

  @override
  _PasienFormState createState() => _PasienFormState();
}

// Kelas _PasienFormState adalah State dari PasienForm
class _PasienFormState extends State<PasienForm> {
  // Membuat GlobalKey untuk Form
  final _formKey = GlobalKey<FormState>();

  // Membuat controller untuk TextEditingController nama pasien
  final _namaPasienCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Membuat Scaffold dengan AppBar dan SingleChildScrollView
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Data")),
      body: SingleChildScrollView(
        child: Form(
          // Menggunakan GlobalKey untuk Form
          key: _formKey,
          child: Column(
            children: [
              // Memanggil fungsi _fieldNamaPasien untuk membuat field input nama pasien
              _fieldNamaPasien(),
              SizedBox(height: 20),
              // Memanggil fungsi _tombolSimpan untuk membuat tombol simpan
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuat field input nama pasien
  _fieldNamaPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Data"),
      controller: _namaPasienCtrl,
    );
  }

  // Fungsi untuk membuat tombol simpan
  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          // Membuat objek Pasien dengan nama dari field input
          Pasien pasien = new Pasien(namaPasien: _namaPasienCtrl.text);
          // Navigasi ke halaman detail pasien dengan pasien yang baru dibuat
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienDetail(pasien: pasien)));
        },
        child: const Text("Simpan"));
  }
}
