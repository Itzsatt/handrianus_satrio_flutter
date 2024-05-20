// Mengimport paket Flutter
import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_detail.dart';

// Mendefinisikan widget PegawaiForm sebagai StatefulWidget
class PegawaiForm extends StatefulWidget {
  const PegawaiForm({Key? key}) : super(key: key);
  _PegawaiFormState createState() => _PegawaiFormState();
}

// Mendefinisikan state untuk widget PegawaiForm
class _PegawaiFormState extends State<PegawaiForm> {
  // Membuat key global untuk form
  final _formKey = GlobalKey<FormState>();
  // Membuat controller untuk field Nama Pegawai
  final _namaPegawaiCtrl = TextEditingController();

  // Membangun tampilan widget PegawaiForm
  @override
  Widget build(context) {
    return Scaffold(
      // Menampilkan AppBar dengan judul "Tambah Pegawai"
      appBar: AppBar(title: const Text("Tambah Pegawai")),
      // Membungkus isi form dengan SingleChildScrollView agar dapat discroll
      body: SingleChildScrollView(
        child: Form(
          // Menggunakan key global untuk form
          key: _formKey,
          child: Column(
            children: [
              // Menampilkan field Nama Pegawai
              _fieldNamaPegawai(),
              // Memberi jarak 20 piksel
              SizedBox(height: 20),
              // Menampilkan tombol Simpan
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  // Membuat widget TextField untuk field Nama Pegawai
  _fieldNamaPegawai() {
    return TextField(
      // Memberikan label "Nama Pegawai"
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
      // Menggunakan controller _namaPegawaiCtrl
      controller: _namaPegawaiCtrl,
    );
  }

  // Membuat widget ElevatedButton untuk tombol Simpan
  _tombolSimpan() {
    return ElevatedButton(
        // Saat tombol ditekan
        onPressed: () {
          // Membuat objek Pegawai dengan nama dari input user
          Pegawai pegawai = new Pegawai(namaPegawai: _namaPegawaiCtrl.text);
          // Mengganti halaman ke PegawaiDetail dengan data pegawai yang baru dibuat
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PegawaiDetail(pegawai: pegawai)));
        },
        // Menampilkan teks "Simpan" pada tombol
        child: const Text("Simpan"));
  }
}
