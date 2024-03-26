import 'package:flutter/material.dart';
import 'package:russian_autoprom/main.dart';

class purchasePage extends StatelessWidget {
  const purchasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 255, 200),
    title: const Center(
    child: Text("Покупка",
    style: TextStyle(fontSize: 30)),
    )
    ),
    );
  }
}