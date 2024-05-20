// Mengimpor paket Flutter
import 'package:flutter/material.dart';
import '../ui/beranda.dart';
import '../ui/login.dart';
import '../ui/poli_page.dart';
import '../ui/pasien_page.dart';
import '../ui/pegawai_page.dart';

// Mendefinisikan kelas Sidebar yang merupakan turunan dari StatelessWidget
class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  // Mendefinisikan method build yang akan membangun tampilan sidebar
  @override
  Widget build(BuildContext context) {
    // Membuat tampilan sidebar menggunakan Drawer
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Menampilkan header sidebar dengan informasi akun
          UserAccountsDrawerHeader(
              accountName: Text("Admin"),
              accountEmail: Text("admin@admin.com")),
          // Menambahkan item menu beranda pada sidebar
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Beranda"),
            onTap: () {
              // Saat item beranda dipilih, navigasi ke halaman beranda
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Beranda()));
            },
          ),
          // Menambahkan item menu poli pada sidebar
          ListTile(
            leading: Icon(Icons.accessible),
            title: Text("Poli"),
            onTap: () {
              // Saat item poli dipilih, navigasi ke halaman poli
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliPage()));
            },
          ),
          // Menambahkan item menu pegawai pada sidebar
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Pegawai"),
            onTap: () {
              // Saat item pegawai dipilih, navigasi ke halaman pegawai
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiPage()));
            },
          ),
          // Menambahkan item menu pasien pada sidebar
          ListTile(
            leading: Icon(Icons.account_box_sharp),
            title: Text("Pasien"),
            onTap: () {
              // Saat item pasien dipilih, navigasi ke halaman pasien
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienPage()));
            },
          ),
          // Menambahkan item menu keluar pada sidebar
          ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text("Keluar"),
            onTap: () {
              // Saat item keluar dipilih, navigasi kembali ke halaman login
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                  (Route<dynamic> route) => false);
            },
          )
        ],
      ),
    );
  }
}
