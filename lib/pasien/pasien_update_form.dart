// Mengimpor paket Flutter
import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';

// Kelas PasienUpdateForm adalah StatefulWidget yang menampilkan halaman form untuk mengubah data pasien
class PasienUpdateForm extends StatefulWidget {
  // Menerima objek Pasien yang akan diubah
  final Pasien pasien;

  // Constructor menerima objek Pasien
  const PasienUpdateForm({Key? key, required this.pasien}) : super(key: key);

  @override
  _PasienUpdateFormState createState() => _PasienUpdateFormState();
}

// Kelas _PasienUpdateFormState adalah State dari PasienUpdateForm
class _PasienUpdateFormState extends State<PasienUpdateForm> {
  // Membuat GlobalKey untuk Form
  final _formKey = GlobalKey<FormState>();

  // Membuat controller untuk TextEditingController nama pasien
  final _namaPasienCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Mengisi nilai awal TextEditingController dengan nama pasien dari objek Pasien yang diterima
    setState(() {
      _namaPasienCtrl.text = widget.pasien.namaPasien;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Membuat Scaffold dengan AppBar dan SingleChildScrollView
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Data")),
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
          // Membuat objek Pasien baru dengan nama dari field input
          Pasien pasien = new Pasien(namaPasien: _namaPasienCtrl.text);
          // Navigasi kembali ke halaman sebelumnya
          Navigator.pop(context);
          // Navigasi ke halaman detail pasien dengan pasien yang baru diubah
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienDetail(pasien: pasien)));
        },
        child: const Text("Simpan Perubahan"));
  }
}
