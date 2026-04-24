import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  const FabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Fatma Azzahra Alif Hidayah\nNIM: 123456789", // ⬅️ ganti NIM kamu
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}