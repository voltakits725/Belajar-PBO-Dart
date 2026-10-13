class Kasirkafe {
  int _totalHarga = 0;
  int _jumlahCup = 0;
  int _diskon = 0;

  String get cekKeranjang => "isi keranjang: $_jumlahCup cup. Total sementara: Rp$_totalHarga (Diskon: $_diskon)";

  set tambahPesanan(int hargaKopi){
  
    _jumlahCup++;
    _totalHarga += hargaKopi;
    if(_jumlahCup >= 5){
      _diskon = 20;
    }else if(_jumlahCup >= 3){
      _diskon = 10;
    }else{
      _diskon = 0;
    }
  }

  set bayar(int uangTunai){
    int tagihanAkhir = _totalHarga - (_totalHarga * _diskon ~/ 100);
    if(uangTunai < tagihanAkhir){
      print("Gagal: Uang kurang! Tagihan lu Rp$tagihanAkhir");
    }else{
      int kembalian = uangTunai - tagihanAkhir;
      print("Lunas! Total bayar: Rp$tagihanAkhir. Kembalian: Rp$kembalian.");
      _totalHarga =0;
      _jumlahCup =0;
      _diskon =0;
    }
  }
}

void main(){
  var kasir = Kasirkafe();

  kasir.tambahPesanan = 20000;
  kasir.tambahPesanan = 25000;
  kasir.tambahPesanan = 15000;

  print(kasir.cekKeranjang);

  kasir.bayar = 50000;
  kasir.bayar = 100000;

}