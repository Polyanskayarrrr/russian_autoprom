import 'package:flutter/material.dart';
import 'package:russian_autoprom/historypurchases.dart';

class acc extends StatelessWidget {
  const acc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 255, 200),
    title: const Center(
    child: Text("Личный кабинет",
    style: TextStyle(fontSize: 30))
      ),
      ),
       body: ListView(
         children: <Widget>[
           Align(alignment: Alignment.topLeft,
             child:
           Container(
            decoration: const BoxDecoration(shape: BoxShape.circle),
             margin: const EdgeInsets.all(15),
             height: 150,
             child: Image.network('https://avatars.mds.yandex.net/i?id=45089c26cc4a84f895dbd83e8dc6c1d6c31298cd-10449875-images-thumbs&n=13',),
           )
           ),
              Text("Фамилия", style: TextStyle(fontSize: 20)),
           Text('Имя', style: TextStyle(fontSize: 20)),
           Text('Отчество', style: TextStyle(fontSize: 20)),
           Text('Номер телефона', style: TextStyle(fontSize: 20)),
           Text('Email', style: TextStyle(fontSize: 20)),
           ElevatedButton(onPressed: () {
             Navigator.push(
               context,
               MaterialPageRoute(
                   builder: (context) => purchasePage()));},
             child: const Text("История покупок",
                 style: TextStyle(color: Color.fromARGB(255, 0, 255, 200),
                     fontSize: 26)
             ),
           ),
         ],
       ),

    );
  }
}
