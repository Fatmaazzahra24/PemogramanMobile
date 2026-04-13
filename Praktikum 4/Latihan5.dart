void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var hasil = tukar((3, 5));
  print(hasil);

  (String, int) mahasiswa;
  mahasiswa = ('Fatma Azzahra Alif Hidayah',244107060046);
  print(mahasiswa);

  var mahasiswa2 = ('Fatma Azzahra Alif Hidayah', a: 244107060046, b: true, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}