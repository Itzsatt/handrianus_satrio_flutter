// Mengimpor paket Flutter
import 'package:flutter/material.dart';
import '/model/poli.dart';
import '/ui/poli_detail.dart';

// Mendefinisikan widget PoliForm yang merupakan StatefulWidget
class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);

  // Membuat state untuk widget PoliForm
  @override
  _PoliFormState createState() => _PoliFormState();
}

// Mendefinisikan state untuk widget PoliForm
class _PoliFormState extends State<PoliForm> {
  // Membuat key untuk form
  final _formKey = GlobalKey<FormState>();

  // Membuat controller untuk field input nama poli
  final _namaPoliCtrl = TextEditingController();

  // Membuat method build yang akan mengembalikan widget Scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Menambahkan AppBar dengan judul "Tambah Poli"
      appBar: AppBar(
        title: const Text("Tambah Poli"),
      ),
      // Membungkus konten dalam SingleChildScrollView untuk memungkinkan scrolling
      body: SingleChildScrollView(
        child: Form(
          // Menggunakan key form yang sudah didefinisikan sebelumnya
          key: _formKey,
          // Membuat kolom yang berisi field input nama poli dan tombol simpan
          child: Column(
            children: [
              _fieldNamaPoli(), // Memanggil fungsi _fieldNamaPoli untuk membuat field input nama poli
              const SizedBox(height: 20), // Membuat jarak vertikal 20 piksel
              _tombolSimpan(), // Memanggil fungsi _tombolSimpan untuk membuat tombol simpan
            ],
          ),
        ),
      ),
    );
  }

  // Membuat fungsi untuk membuat field input nama poli
  Widget _fieldNamaPoli() {
    return TextField(
      // Menambahkan dekorasi label pada field input
      decoration: const InputDecoration(
        labelText: "Nama Poli",
      ),
      // Menghubungkan field input dengan controller yang sudah didefinisikan sebelumnya
      controller: _namaPoliCtrl,
    );
  }

  // Membuat fungsi untuk membuat tombol simpan
  Widget _tombolSimpan() {
    return ElevatedButton(
      // Menambahkan fungsi onPressed yang akan dijalankan saat tombol ditekan
      onPressed: () {
        // Membuat objek Poli baru dengan nama poli yang diambil dari field input
        Poli poli = Poli(namaPoli: _namaPoliCtrl.text);
        // Melakukan navigasi ke halaman PoliDetail dengan objek Poli yang baru dibuat
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => PoliDetail(poli: poli),
          ),
        );
      },
      // Menambahkan teks pada tombol simpan
      child: const Text("Simpan"),
    );
  }
}
