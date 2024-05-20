// mengimpor pustaka dari paket flutter
import 'package:flutter/material.dart';

// mendefinisikan sebuah kelas bernama BarisKolom yang merupakan turunan dari StatelessWidget
class BarisKolom extends StatelessWidget {
  // merupakan konstruktor untuk kelas BarisKolom. disini super key memanggil konstruktor kelas induk (StatelessWidget) dengan memberikan nilai key yang diterima
  const BarisKolom({Key? key}) : super(key: key);
// berguna  membangun dan mengembalikan widget yang akan ditampilkan
  @override
  Widget build(BuildContext context) {
    // scaffold merupakan struktur untuk aplikasi Flutter
    return Scaffold(
      // menampilkan judul aplikasi
      appBar: AppBar(title: const Text("Baris dan Kolom")),
      body: Column(
        // mengatur penempatan elemen sepanjang sumbu utama (vertikal) agar terdistribusi secara merata
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // merupakan daftar widget dalam kolom
        children: [
          // widget yang menyediakan ruang kosong dengan ukuran tertentu. seperti di bawah ini dengan mengatur menjadi 20 piksel
          SizedBox(
            height: 20,
          ),
          // widget layout yang menyusun elemen-elemen dalam satu baris
          Row(
            children: [
              Text("Baris 1, Kolom 1 "),
              SizedBox(
                width: 20,
              ),
              Text("Baris 1, Kolom 2 "),
              SizedBox(
                width: 20,
              ),
              Text("Baris 1, Kolom 3 "),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text("Baris 2, Kolom 1 "),
              SizedBox(
                width: 20,
              ),
              Text("Baris 2, Kolom 2 "),
              SizedBox(
                width: 20,
              ),
              Text("Baris 2, Kolom 3 ")
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text("Baris 3, Kolom 1 "),
              SizedBox(
                width: 20,
              ),
              Text("Baris 3, Kolom 2 "),
              SizedBox(
                width: 20,
              ),
              Text("Baris 3, Kolom 3 "),
            ],
          ),
        ],
      ),
    );
  }
}
