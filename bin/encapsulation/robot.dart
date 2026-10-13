class RobotPekerja {
  int _baterai = 100;

  int get sisaBaterai => _baterai;

  // Setter 1: Khusus untuk nambah baterai
  set charge(int daya) {
    _baterai += daya;
    
    if (_baterai > 100) {
      _baterai = 100; // Mentokin di 100 kalau kelebihan
    }
    print('Robot di-charge. Baterai sekarang: $_baterai%');
  }

  // Setter 2: Khusus untuk ngurangin baterai (dipakai kerja)
  set bekerja(int jam) {
    // Hitung dulu total energi yang bakal kesedot (1 jam = 20%)
    int butuhEnergi = jam * 20; 

    // Cek sanggup apa nggak
    if (_baterai < butuhEnergi) {
      print('Gagal: Baterai tidak cukup untuk kerja $jam jam!');
    } else {
      _baterai -= butuhEnergi; // Kalau sanggup, baru baterainya dipotong
      print('Robot bekerja $jam jam. Baterai tersisa: $_baterai%');
    }
  }
}



void main() {
  

  // var robot = RobotPekerja();

  // // Test Case
  // robot.bekerja = 3;  // Butuh energi 60, baterai 100 -> Berhasil, sisa 40%
  // robot.bekerja = 3;  // Butuh energi 60, baterai 40 -> Gagal
  // robot.charge = 50;  // Sisa 40 + cas 50 -> Berhasil, jadi 90%
  // robot.charge = 50;  // Sisa 90 + cas 50 = 140 -> Berhasil, tapi mentok di 100%
}