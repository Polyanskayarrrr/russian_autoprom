import 'package:flutter/material.dart';

import 'main.dart';

class AutoPage extends StatelessWidget {
  const AutoPage({super.key, required this.index_car});
  final int index_car;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Center(
          child: Text(
            autoList[index_car].titleAndModel
          ),
        )
        )
    );
  }
}