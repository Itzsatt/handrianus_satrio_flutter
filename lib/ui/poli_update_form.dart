// Mengimpor paket Flutter
import 'package:flutter/material.dart';
import '../model/poli.dart';
import '/ui/poli_detail.dart';

// Mendefinisikan widget PoliUpdateForm yang merupakan StatefulWidget
class PoliUpdateForm extends StatefulWidget {
  // Menerima parameter Poli yang akan diupdate
  final Poli poli;

  // Konstruktor PoliUpdateForm
  const PoliUpdateForm({Key? key, required this.poli}) : super(key: key);

  // Membuat state dari widget PoliUpdateForm
  @override
  _PoliUpdateFormState createState() => _PoliUpdateFormState();
}

// Mendefinisikan state dari widget PoliUpdateForm
class _PoliUpdateFormState extends State<PoliUpdateForm> {
  // Membuat GlobalKey untuk form
  final _formKey = GlobalKey<FormState>();
  // Membuat TextEditingController untuk input nama poli
  final _namaPoliCtrl = TextEditingController();

  // Inisialisasi state
  @override
  void initState() {
    super.initState();
    // Mengisi nilai awal dari TextEditingController dengan nilai dari Poli yang diterima
    _namaPoliCtrl.text = widget.poli.namaPoli;
  }

  // Membangun tampilan widget
  @override
  Widget build(BuildContext context) {
    // Menampilkan Scaffold dengan AppBar dan SingleChildScrollView
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Memanggil widget _fieldNamaPoli
              _fieldNamaPoli(),
              const SizedBox(height: 20),
              // Memanggil widget _tombolSimpan
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  // Membangun widget TextField untuk input nama poli
  Widget _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
    );
  }

  // Membangun widget ElevatedButton untuk menyimpan perubahan
  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        // Membuat objek Poli baru dengan nilai nama poli yang diinput
        Poli poli = Poli(namaPoli: _namaPoliCtrl.text);
        // Kembali ke halaman sebelumnya
        Navigator.pop(context);
        // Berpindah ke halaman PoliDetail dengan objek Poli yang baru
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
        );
      },
      child: const Text("Simpan Perubahan"),
    );
  }
}
