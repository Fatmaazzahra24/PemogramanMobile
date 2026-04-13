void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'nama': 'Fatma Azzahra Alif Hidayah',
    'nim': '244107060046'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    99: 'Fatma Azzahra Alif Hidayah',
    100: '244107060046'
  };

  var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Fatma Azzahra Alif Hidayah';
  mhs1['nim'] = '244107060046';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Fatma Azzahra Alif Hidayah';
  mhs2[2] = '244107060046';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}