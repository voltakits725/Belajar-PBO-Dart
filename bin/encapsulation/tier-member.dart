class MemberVIP{
  int _poin = 0;
  String _tier = "Bronze";

  String get infoMember => "Member $_tier memiliki $_poin Poin";

  set belanja(int nominal){

    int dapatPoin = nominal ~/ 10000;
    _poin += dapatPoin;

    
    if(_poin >= 100){
      _tier = "Gold";
    }else if(_poin >= 50){
      _tier = "Silver";
    }else{
     _tier = "Bronze";
    }
    print('Belanja Rp$nominal dapet $dapatPoin poin! Sekarang lu member $_tier');

  }
}

void main(){

  var member = MemberVIP();

  member.belanja = 350000;
  member.belanja = 200000;
  member.belanja = 600000;

  print(member.infoMember);
}