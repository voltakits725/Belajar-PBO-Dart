class Mahasiswa{
  String nama = "Belum diisi";
  String konsentrasi = "Mobile App Dev";
  int semester = 5;
  String? nim;
void cekStatus(){
  print('Mahasiswa bernama $nama (Semester $semester) sedang fokus belajar $konsentrasi ');
}
}

class ServerBackend {
  String bahasa = "Dart";
  String framework = "Serverpod";
  bool isAktif = false;

  void startServer(){
    isAktif = true;
    print('Server $framework menggunakan bahasa $bahasa telah berjalan $isAktif');
  }
}

void main(){
  var mhs1 = Mahasiswa();

  mhs1.nama = "Rafly";
  mhs1.nim = "13232142";

  mhs1.cekStatus();

  print('==========');

  var server = ServerBackend();

  server.framework = "flutter";
  server.bahasa = "dart";
 
  server.startServer();


}