// Mendefinisikan kelas Pasien yang memanggil entitas pasien
class Pasien {
  // Mendefinisikan variabel id dengan tipe data String. yang menunjukkan bahwa variabel tersebut dapat memiliki nilai null
  String? id;
  // Mendefinisikan variabel namaPasien dengan tipe data String. Variabel ini akan menyimpan nama pasien
  String namaPasien;
  // merupakan konstruktor untuk kelas Pasien. yang terdiri dari id dan namaPasien
  // arti dari 'required this.namaPasien' disini namaPasien harus diisi saat membuat objek Pasien
  Pasien({this.id, required this.namaPasien});
  // membuat list objek
  get idPasien => '001';
  get nomor_rm => '5';
  get nama => 'Raditya';
  get tanggal_lahir => '4 februari 2002';
  get nomor_telepon => '087378109162';
  get alamat => 'jl slamet riyadi solo';
}
