// mengimpor pustaka dari paket Flutter
import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';
import 'poli_item.dart';
import 'poli_form.dart';

// mendefinisikan kelas PoliPage sebagai StatefulWidget
class PoliPage extends StatefulWidget {
  // mendefinisikan konstruktor untuk kelas PoliPage dengan menerima parameter key (opsional)
  const PoliPage({super.key});
  @override
  // mendeklarasikan metode createState() yang akan membuat dan mengembalikan objek _PoliPageState
  State<PoliPage> createState() => _PoliPageState();
}

// mendefinisikan kelas _PoliPageState sebagai State dari PoliPage
class _PoliPageState extends State<PoliPage> {
  // meng-override metode build() untuk membangun tampilan UI
  @override
  Widget build(BuildContext context) {
    // mengembalikan Scaffold, yang merupakan kerangka dasar untuk tampilan UI
    return Scaffold(
      // menampilkan judul
      appBar: AppBar(
        title: const Text("Data Poli"),
        actions: [
          // ketika tombol tambah ditekan, kita menggunakan Navigator.push() untuk berpindah ke halaman PoliForm
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliForm()),
              );
            },
          )
        ],
      ),
      //  menampilkan daftar item PoliItem
      body: ListView(
        children: [
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT")),
        ],
      ),
    );
  }
}
