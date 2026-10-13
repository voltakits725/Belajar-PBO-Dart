class DompetDigital{
  int _saldo = 0;

  int get cekSaldo => _saldo;

  set topUp(int nominal){
   
    if(nominal <= 0){
      print('Gagal: Nominal top-up harus lebih dari Rp0!');
    } else {
      _saldo += nominal;
      print('Top-up berhasil. Saldo: $_saldo Rupiah');
    }
  }

  set bayar(int tagihan){
    if(tagihan > _saldo){
      print('Gagal: saldo tidak cukup! lu cuma punya $_saldo');
    }else{
      _saldo -= tagihan;
      print("Pembayaran Rp$tagihan berhasil. Sisa saldo: Rp$_saldo");
    }
  }
}

void main() {
  var dompet = DompetDigital();

  dompet.topUp = 50000;
  dompet.bayar = 20000;
  dompet.bayar = 40000;
  dompet.topUp = -10000;

}