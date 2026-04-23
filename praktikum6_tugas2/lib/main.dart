import 'package:flutter/material.dart';
import 'package:praktikum6_tugas2/pages/home_page.dart'; // Sesuaikan jika nama project beda
import 'package:praktikum6_tugas2/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => const ItemPage(),
    },
  ));
}