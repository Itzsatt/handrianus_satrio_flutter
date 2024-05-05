// mengimpor pustaka dari paket Flutter
import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';

// mendefinisikan widget tampilan setiap poli
class PoliItem extends StatelessWidget {
  // mendeklarasikan variabel poli yang akan digunakan untuk menyimpan data poli yang akan ditampilkan
  final Poli poli;
// mendefinisikan konstruktor untuk kelas PoliItem dengan menerima parameter key (opsional) dan poli yang diwajibkan
  const PoliItem({Key? key, required this.poli}) : super(key: key);

  @override
  // mendeklarasikan metode build() yang akan mereturn widget yang akan ditampilkan
  Widget build(BuildContext context) {
    // menggunakan widget GestureDetector untuk mendeteksi ketika item poli ditekan
    return GestureDetector(
      // mendefinisikan aksi ketika item poli ditekan. Kita menggunakan Navigator.push() untuk berpindah ke halaman PoliDetail dengan mengirimkan data poli yang dipilih
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
        );
      },
      // menggunakan widget Card yang berfungsi untuk membungkus ListTile agar tampilannya memiliki latar belakang
      child: Card(
        // menggunakan widget ListTile yang digunakan untuk menampilkan judul poli
        child: ListTile(
          title: Text("${poli.namaPoli}"),
        ),
      ),
    );
  }
}
