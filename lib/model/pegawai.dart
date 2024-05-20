// Mendefinisikan kelas Pegawai yang memanggil entitas pegawai
class Pegawai {
  // Mendefinisikan variabel id dengan tipe data String. yang menunjukkan bahwa variabel tersebut dapat memiliki nilai null
  String? id;
  // Mendefinisikan variabel namaPegawai dengan tipe data String. Variabel ini akan menyimpan nama pegawai
  String namaPegawai;
  // merupakan konstruktor untuk kelas Pegawai. yang terdiri dari id dan namaPegawai
  Pegawai({this.id, required this.namaPegawai});
  // membuat list objek
  get idPegawai => '01';
  get nip => '12345';
  get nama => 'Eno';
  get tanggal_lahir => '6 juni 1999';
  get nomor_telepon => '082456712452';
  get email => 'eno25@gmail.com';
  get password => 'eno25';
}
