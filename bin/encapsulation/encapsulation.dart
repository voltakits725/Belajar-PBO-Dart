class ATM {
  // 1. Variabel Private: Cuma bisa diakses dari dalam class ini aja
  int _saldo = 50000; 

  // 2. GETTER: Perantara buat BACA nilai _saldo
  // Pake panah (=>) kalau logikanya cuma sebaris (nge-return nilai)
  int get infoSaldo => _saldo;

  // 3. SETTER: Perantara buat NGUBAH nilai _saldo dengan aman (ada validasi)
  set tarikTunai(int nominal) {
    if (nominal > _saldo) {
      print('Gagal: Saldo lu nggak cukup, bro!');
    } else if (nominal <= 0) {
      print('Gagal: Masukin nominal yang bener dong!');
    } else {
      // Kalau lolos validasi, baru saldonya dipotong
      _saldo -= nominal;
      print('Berhasil tarik Rp$nominal. Sisa saldo: Rp$_saldo');
    }
  }
}



class KarakterGame{
  int _health = 100;

  int get infoHealth => _health;

  set terimaDamage(int damage) {
  // 1. Kurangi darahnya CUKUP SEKALI aja di atas sini
  _health -= damage;

  // 2. Yang dicek itu SISA DARAHNYA (_health), BUKAN damage-nya
  if (_health <= 0) {
    _health = 0; // Kunci di angka 0 biar nggak minus
    print('Karakter telah mati!');
  } else {
    // 3. Udah nggak perlu ada pengurangan darah lagi di sini! Langsung print aja.
    print('Berhasil menerima damage $damage, sisa darah: $_health');
  }
}
}

class RemoteAC{
  int _suhu = 24;

  int get infoSuhu => _suhu;

  set aturSuhu(int suhuBaru){
    if(suhuBaru <= 16){
      print('"Gagal: Suhu minimal 16 derajat!');
    }else if(suhuBaru >= 30){
      print('Gagal: suhu maksimal 30 derajat');
    }else if (suhuBaru >= 16 && suhuBaru <= 30){
       suhuBaru;
      print("Suhu AC berhasil diubah ke $_suhu derajat.");
    }
  }
}

void main() {

  var suhu = RemoteAC();

  print('suhu ac awal: $suhu.infoSuhu');

  suhu.aturSuhu = 20;
  suhu.aturSuhu = 12;
  suhu.aturSuhu = 35; 



  print('==========');
  var health = KarakterGame();

  print('darah awal: ${health.infoHealth}');

  health.terimaDamage = 40;
  health.terimaDamage = 70;

  print('====================================');
  var rekening = ATM();

  // ERROR! Lu nggak bisa lagi manggil rekening._saldo secara langsung dari sini.
  // rekening._saldo = 1000000; 

  // Panggil Getter untuk liat saldo (manggilnya kayak variabel biasa, nggak pake tanda kurung)
  print('Saldo awal: Rp${rekening.infoSaldo}');

  // Panggil Setter untuk narik duit (ngisinya pakai tanda sama dengan '=' )
  rekening.tarikTunai = 100000; // Bakal ditolak karena saldo kurang
  rekening.tarikTunai = 20000;  // Bakal berhasil
}