import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingCupertino extends StatelessWidget {
  const LoadingCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Fatma Azzahra Alif Hidayah\nNIM: 123456789", 
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),

          CupertinoButton(
            color: Colors.blue,
            child: const Text("Contoh button"),
            onPressed: () {},
          ),

          const SizedBox(height: 20),
          const CupertinoActivityIndicator(),
        ],
      ),
    );
  }
}