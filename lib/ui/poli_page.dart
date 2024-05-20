// Mengimpor paket Flutter dan widget
import 'package:flutter/material.dart';
import '../widget/sidebar.dart';
import '../model/poli.dart';
import 'poli_detail.dart';
import 'poli_item.dart';
import 'poli_form.dart';

// Kelas PoliPage adalah StatefulWidget yang membuat tampilan halaman Poli
class PoliPage extends StatefulWidget {
  // Konstruktor kelas PoliPage
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

// Kelas _PoliPageState adalah State dari PoliPage
class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    // Membuat Scaffold yang berisi Drawer, AppBar, dan Body
    return Scaffold(
      // Menambahkan Drawer dengan widget Sidebar
      drawer: Sidebar(),
      // Membuat AppBar dengan judul "Data Poli" dan tombol tambah
      appBar: AppBar(
        title: const Text("Data Poli"),
        actions: [
          // Tombol tambah yang mengarah ke halaman PoliForm
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
      // Membuat Body berupa ListView yang berisi beberapa item Poli
      body: ListView(
        children: [
          // Menampilkan item Poli dengan nama poli yang berbeda
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT")),
        ],
      ),
    );
  }
}
