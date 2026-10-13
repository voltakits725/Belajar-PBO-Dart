class RemoteAC{
  int _suhu = 24;

  int get infoSuhu => _suhu;

  set aturSuhu(int suhuBaru){
    if(suhuBaru <= 16){
      print('Gagal: Suhu minimal 16 derajat!');
    }else if(suhuBaru >= 30){
      print('Gagal: suhu maksimal 30 derajat');
    }else if (suhuBaru >= 16 && suhuBaru <= 30){
      _suhu = suhuBaru;
      print("Suhu AC berhasil diubah ke $_suhu derajat.");
    }
  }
}

void main() {

  var suhu = RemoteAC();

  print('suhu ac awal: ${suhu.infoSuhu}');

  suhu.aturSuhu = 20;
  suhu.aturSuhu = 12;
  suhu.aturSuhu = 35; 
  }