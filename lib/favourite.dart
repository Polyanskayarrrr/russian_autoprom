import 'package:flutter/material.dart';
import 'package:russian_autoprom/autopage.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 0, 255, 200),
    title: const Center(
    child: Text("Избранное",
    style: TextStyle(fontSize: 30)),
    )
    )
  );
  }
}


