// Mengimport paket Flutter
import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_detail.dart';

// Mendefinisikan widget PegawaiUpdateForm sebagai StatefulWidget
class PegawaiUpdateForm extends StatefulWidget {
  // Widget menerima parameter Pegawai yang akan diperbarui
  final Pegawai pegawai;

  const PegawaiUpdateForm({Key? key, required this.pegawai}) : super(key: key);
  _PegawaiUpdateFormState createState() => _PegawaiUpdateFormState();
}

// Mendefinisikan state untuk widget PegawaiUpdateForm
class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  // Membuat key global untuk form
  final _formKey = GlobalKey<FormState>();
  // Membuat controller untuk field Nama Pegawai
  final _namaPegawaiCtrl = TextEditingController();

  // Melakukan inisialisasi awal saat widget dibuat
  @override
  void initState() {
    super.initState();
    // Mengisi nilai controller dengan nama pegawai yang diterima dari parameter
    setState(() {
      _namaPegawaiCtrl.text = widget.pegawai.namaPegawai;
    });
  }

  // Membangun tampilan widget PegawaiUpdateForm
  @override
  Widget build(context) {
    return Scaffold(
      // Menampilkan AppBar dengan judul "Ubah Data"
      appBar: AppBar(title: const Text("Ubah Data")),
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
              // Menampilkan tombol Simpan Perubahan
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
      // Memberikan label "Nama Data"
      decoration: const InputDecoration(labelText: "Nama Data"),
      // Menggunakan controller _namaPegawaiCtrl
      controller: _namaPegawaiCtrl,
    );
  }

  // Membuat widget ElevatedButton untuk tombol Simpan Perubahan
  _tombolSimpan() {
    return ElevatedButton(
        // Saat tombol ditekan
        onPressed: () {
          // Membuat objek Pegawai dengan nama dari input user
          Pegawai pegawai = new Pegawai(namaPegawai: _namaPegawaiCtrl.text);
          // Kembali ke halaman sebelumnya
          Navigator.pop(context);
          // Mengganti halaman ke PegawaiDetail dengan data pegawai yang baru diubah
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PegawaiDetail(pegawai: pegawai)));
        },
        // Menampilkan teks "Simpan Perubahan" pada tombol
        child: const Text("Simpan Perubahan"));
  }
}
