import 'package:flutter/material.dart';
import 'package:praktikum6_tugas2/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: Text(itemArgs.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Utama
            Image.asset(itemArgs.image, width: double.infinity, height: 350, fit: BoxFit.cover),
            
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(itemArgs.name, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text('Rp ${itemArgs.price}', style: const TextStyle(fontSize: 22, color: Colors.orange, fontWeight: FontWeight.bold)),
                  const Divider(height: 40),
                  
                  // Detail Lainnya
                  const Text('Deskripsi Produk', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text('Stok tersedia: ${itemArgs.stock} pack'),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      Text(' Rating: ${itemArgs.rating} / 5.0'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Ini adalah produk berkualitas pilihan Fatma. '
                    'Dapatkan harga terbaik hanya di aplikasi ini.',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Tombol Aksi di bagian bawah
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 15)),
          child: const Text('TAMBAH KE KERANJANG'),
        ),
      ),
    );
  }
}