class User{
  String nama;
  String role;

  User(this.nama, this.role);

  // 2. Named Constructor (Pakai titik)
  // User.guest(this.nama) {
  //     role = "Guest"; 
  // }

  // Pakai titik dua ( : ) untuk ngisi nilai sebelum constructor selesai dibuat
  User.guest(this.nama) : role = "Guest";

  void cekUSer(){
    print('Login sebagai: $nama, Role: $role');
  }
}

class Endpoint{
  String path;
  String method;

  Endpoint(this.path, this.method);

  Endpoint.post(this.path): method = "POST";
  
  Endpoint.get(this.path): method = "GET";
  

  void api(){
    print('Endpoint: $path berjalan dengan method $method');
  }

}

void main(){

  var api1 = Endpoint.get("/users");
  var api2 = Endpoint.post("/tambah-user");

  api1.api();
  api2.api();
  print('=====================');

  var user1 = User("Rafly", "Admin");
  var user2 = User.guest("Tamu_001");

  user1.cekUSer();
  user2.cekUSer();
}