import 'package:flutter/material.dart';

class purchasePage extends StatelessWidget {
  const purchasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 255, 200),
    title: const Center(
    child: Text("История покупок",
    style: TextStyle(fontSize: 30)),
    )
    ),
      body: const Text("В разработке!",
        style: TextStyle(fontSize: 30)
      ),
    );
  }
}