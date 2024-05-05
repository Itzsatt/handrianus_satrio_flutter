// mengimpor pustaka dari paket Flutter
import 'package:flutter/material.dart';

// mendefinisikan kelas PoliForm sebagai StatefulWidget
class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);

  @override
  // mendefinisikan metode createState() yang akan membuat dan mengembalikan objek _PoliFormState
  _PoliFormState createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  // // mendeklarasikan objek _formKey yang digunakan untuk mengidentifikasi form
  final _formKey = GlobalKey<FormState>();

  @override
  // mendefinisikan metode build() yang akan mereturn widget yang akan ditampilkan
  Widget build(BuildContext context) {
    // menggunakan widget Scaffold yang merupakan kerangka utama untuk tampilan halaman
    return Scaffold(
      // menampilkan judul
      appBar: AppBar(title: const Text("Tambah Poli")),
      // menggunakan widget SingleChildScrollView untuk menghindari masalah overflow jika kontennya lebih panjang dari layar
      body: SingleChildScrollView(
        child: Form(
          // menggunakan objek _formKey untuk menghubungkan form ini dengan kunci yang digunakan untuk validasi
          key: _formKey,
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: "Nama Poli"),
              ),
              // memberikan jarak antara TextField
              SizedBox(height: 20),
              // menampilkan tombol simpan
              ElevatedButton(
                onPressed: () {},
                child: const Text("Simpan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
