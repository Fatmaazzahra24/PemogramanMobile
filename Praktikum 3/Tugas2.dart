void main() {
  String nama = "Fatma Azzahra Alif Hidayah";
  String nim = "244107060046";

  for (int i = 0; i <= 201; i++) {
    if (i < 2) continue;
    bool prima = true;
    for (int j = 2; j < i; j++) {
      if (i % j == 0) {
        prima = false;
        break;
      }
    }
    if (prima) {
      print("$i adalah bilangan prima");
      print("Nama: $nama");
      print("NIM: $nim\n");
    }
  }
}