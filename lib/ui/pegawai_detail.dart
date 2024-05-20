// Mengimpor paket Flutter
import 'package:flutter/material.dart';
import 'pegawai_page.dart';
import 'pegawai_update_form.dart';
import '../model/pegawai.dart';

// Mendefinisikan widget 'PegawaiDetail' yang merupakan halaman detail pegawai
class PegawaiDetail extends StatefulWidget {
  // Menerima parameter 'pegawai' yang berisi data pegawai
  final Pegawai pegawai;

  // Konstruktor untuk membuat instance 'PegawaiDetail'
  const PegawaiDetail({super.key, required this.pegawai});

  // Membuat state untuk widget 'PegawaiDetail'
  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}

// Mendefinisikan state untuk widget 'PegawaiDetail'
class _PegawaiDetailState extends State<PegawaiDetail> {
  // Membangun tampilan widget 'PegawaiDetail'
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Memberikan judul pada AppBar
      appBar: AppBar(title: Text("Detail Pegawai")),
      // Isi konten pada halaman
      body: Column(
        children: [
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Menampilkan nama pegawai
          Text(
            "Nama Pegawai : ${widget.pegawai.namaPegawai}",
            style: TextStyle(fontSize: 20),
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Membuat baris yang berisi tombol "Ubah" dan "Hapus"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(), // Memanggil fungsi untuk tombol "Ubah"
              _tombolHapus(), // Memanggil fungsi untuk tombol "Hapus"
            ],
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Menampilkan ID pegawai
          Text(
            "ID Pegawai : ${widget.pegawai.idPegawai}",
            style: TextStyle(fontSize: 20),
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Membuat baris yang berisi tombol "Ubah" dan "Hapus"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(), // Memanggil fungsi untuk tombol "Ubah"
              _tombolHapus(), // Memanggil fungsi untuk tombol "Hapus"
            ],
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Menampilkan NIP pegawai
          Text(
            "NIP : ${widget.pegawai.nip}",
            style: TextStyle(fontSize: 20),
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Membuat baris yang berisi tombol "Ubah" dan "Hapus"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(), // Memanggil fungsi untuk tombol "Ubah"
              _tombolHapus(), // Memanggil fungsi untuk tombol "Hapus"
            ],
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Menampilkan tanggal lahir pegawai
          Text(
            "Tanggal Lahir : ${widget.pegawai.tanggal_lahir}",
            style: TextStyle(fontSize: 20),
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Membuat baris yang berisi tombol "Ubah" dan "Hapus"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(), // Memanggil fungsi untuk tombol "Ubah"
              _tombolHapus(), // Memanggil fungsi untuk tombol "Hapus"
            ],
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Menampilkan nomor telepon pegawai
          Text(
            "Nomor Telepon : ${widget.pegawai.nomor_telepon}",
            style: TextStyle(fontSize: 20),
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Membuat baris yang berisi tombol "Ubah" dan "Hapus"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(), // Memanggil fungsi untuk tombol "Ubah"
              _tombolHapus(), // Memanggil fungsi untuk tombol "Hapus"
            ],
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Menampilkan email pegawai
          Text(
            "Email : ${widget.pegawai.email}",
            style: TextStyle(fontSize: 20),
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Membuat baris yang berisi tombol "Ubah" dan "Hapus"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(), // Memanggil fungsi untuk tombol "Ubah"
              _tombolHapus(), // Memanggil fungsi untuk tombol "Hapus"
            ],
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Menampilkan password pegawai
          Text(
            "Password : ${widget.pegawai.password}",
            style: TextStyle(fontSize: 20),
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Membuat baris yang berisi tombol "Ubah" dan "Hapus"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(), // Memanggil fungsi untuk tombol "Ubah"
              _tombolHapus(), // Memanggil fungsi untuk tombol "Hapus"
            ],
          )
        ],
      ),
    );
  }

  // Fungsi untuk membuat tombol "Ubah"
  _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          // Navigasi ke halaman 'PegawaiUpdateForm' saat tombol "Ubah" ditekan
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PegawaiUpdateForm(pegawai: widget.pegawai)));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Ubah"));
  }

  // Fungsi untuk membuat tombol "Hapus"
  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {
          AlertDialog alertDialog = AlertDialog(
            content: const Text("Yakin ingin menghapus data ini?"),
            actions: [
              // tombol ya
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => PegawaiPage()));
                },
                child: const Text("YA"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
              // tombol batal
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Tidak"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              )
            ],
          );
          showDialog(context: context, builder: (context) => alertDialog);
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text("Hapus"));
  }
}
