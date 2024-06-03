// Import paket Flutter
import 'package:flutter/material.dart';
import 'pasien_page.dart';
import 'pasien_update_form.dart';
import '../model/pasien.dart';

// Kelas PasienDetail adalah StatefulWidget yang digunakan untuk menampilkan detail dari seorang pasien
class PasienDetail extends StatefulWidget {
  // Menerima objek Pasien sebagai parameter
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

// Kelas _PasienDetailState adalah State dari PasienDetail
class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    // Membuat Scaffold dengan AppBar dan Body
    return Scaffold(
      appBar: AppBar(title: Text("Detail Pasien")),
      body: Column(
        children: [
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Menampilkan nama pasien
          Text(
            "Nama Pasien : ${widget.pasien.namaPasien}",
            style: TextStyle(fontSize: 20),
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Membuat baris dengan dua tombol
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Memanggil fungsi _tombolUbah()
              _tombolUbah(),
              // Memanggil fungsi _tombolHapus()
              _tombolHapus(),
            ],
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Menampilkan ID pasien
          Text(
            "ID Pasien : ${widget.pasien.idPasien}",
            style: TextStyle(fontSize: 20),
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Membuat baris dengan dua tombol
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Memanggil fungsi _tombolUbah()
              _tombolUbah(),
              // Memanggil fungsi _tombolHapus()
              _tombolHapus(),
            ],
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Menampilkan Nomor RM
          Text(
            "Nomor RM : ${widget.pasien.nomor_rm}",
            style: TextStyle(fontSize: 20),
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Membuat baris dengan dua tombol
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Memanggil fungsi _tombolUbah()
              _tombolUbah(),
              // Memanggil fungsi _tombolHapus()
              _tombolHapus(),
            ],
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Menampilkan Tanggal Lahir
          Text(
            "Tanggal Lahir : ${widget.pasien.tanggal_lahir}",
            style: TextStyle(fontSize: 20),
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Membuat baris dengan dua tombol
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Memanggil fungsi _tombolUbah()
              _tombolUbah(),
              // Memanggil fungsi _tombolHapus()
              _tombolHapus(),
            ],
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Menampilkan Nomor Telepon
          Text(
            "Nomor Telepon : ${widget.pasien.nomor_telepon}",
            style: TextStyle(fontSize: 20),
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Membuat baris dengan dua tombol
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Memanggil fungsi _tombolUbah()
              _tombolUbah(),
              // Memanggil fungsi _tombolHapus()
              _tombolHapus(),
            ],
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Menampilkan Alamat
          Text(
            "Alamat : ${widget.pasien.alamat}",
            style: TextStyle(fontSize: 20),
          ),
          // Memberikan jarak vertikal
          SizedBox(height: 20),
          // Membuat baris dengan dua tombol
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Memanggil fungsi _tombolUbah()
              _tombolUbah(),
              // Memanggil fungsi _tombolHapus()
              _tombolHapus(),
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
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PasienUpdateForm(pasien: widget.pasien)));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Ubah"));
  }

  // Fungsi untuk membuat tombol "Hapus"
  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {
          // Membuat AlertDialog untuk konfirmasi penghapusan
          AlertDialog alertDialog = AlertDialog(
            content: const Text("Yakin ingin menghapus data ini?"),
            actions: [
              // Tombol "Ya"
              ElevatedButton(
                onPressed: () {
                  // Menutup dialog, lalu mengganti halaman ke PasienPage
                  Navigator.pop(context);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => PasienPage()));
                },
                child: const Text("YA"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
              // Tombol "Tidak"
              ElevatedButton(
                onPressed: () {
                  // Menutup dialog
                  Navigator.pop(context);
                },
                child: Text("Tidak"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              )
            ],
          );
          // Menampilkan AlertDialog
          showDialog(context: context, builder: (context) => alertDialog);
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text("Hapus"));
  }
}
