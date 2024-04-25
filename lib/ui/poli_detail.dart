// widget dasar untuk membangun ui flutter
import 'package:flutter/material.dart';
import '../model/poli.dart';

// Mendefinisikan kelas PoliDetail yang merupakan StatefulWidget. StatefulWidget digunakan ketika sebuah widget dapat berubah dalam keadaan (state) selama waktu tertentu
class PoliDetail extends StatefulWidget {
  // Mendefinisikan variabel poli yang merupakan objek dari kelas Poli. Variabel ini akan digunakan untuk menampilkan data poli yang sedang ditampilkan detailnya
  final Poli poli;
// Konstruktor untuk kelas PoliDetail yang menerima parameter key (opsional) dan poli (wajib). Dalam konstruktor ini, kita menggunakan super(key: key) untuk meneruskan parameter key ke konstruktor kelas induk
  const PoliDetail({Key? key, required this.poli}) : super(key: key);
// Meng-override/menimpa metode createState() yang mengembalikan objek _PoliDetailState. Metode ini bertanggung jawab untuk membuat dan menginisialisasi state dari widget PoliDetail
  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

// Mendefinisikan kelas _PoliDetailState yang merupakan state dari PoliDetail. State ini akan mengatur tampilan dan perilaku widget PoliDetail
class _PoliDetailState extends State<PoliDetail> {
  // Meng-override/menimpa metode build() untuk membangun tampilan UI dari widget PoliDetail. Metode ini mengembalikan widget Scaffold sebagai kontainer utama
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat AppBar dengan judul "Detail Poli" menggunakan widget AppBar
      appBar: AppBar(title: const Text("Detail Poli")),
      // Membuat Column sebagai kontainer untuk elemen-elemen dalam tampilan detail poli
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Menampilkan teks "Nama Poli: [namaPoli]" menggunakan widget Text. Nilai [namaPoli] diambil dari properti namaPoli pada objek poli
          Text(
            "Nama Poli: ${widget.poli.namaPoli}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          // Membuat Row yang berisi dua tombol (ElevatedButton) yaitu "Ubah" dan "Hapus". Tombol tersebut menggunakan warna latar belakang yang berbeda (hijau dan merah) menggunakan ElevatedButton.styleFrom
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text("Ubah"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text("Hapus"),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// Dengan demikian, kode tersebut menghasilkan halaman detail poli yang menampilkan nama poli dan dua tombol "Ubah" dan "Hapus"
