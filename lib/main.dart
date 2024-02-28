import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Российский автопром',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(50, 80, 10, 20)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar( title: Center(child: const Text("Российский Автопром",
        style: TextStyle(
        ),
        ),
    ),
          backgroundColor: Color.fromARGB(255, 0, 255, 200),
        ),
        body: Center(
            child: GridView.builder(padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 150
                ),
                itemCount: autoList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      children: [
                        Text(autoList[index].title, style: const TextStyle(fontSize: 22)),
                        Image.network(autoList[index].photoPath),
                        Text("Модель: ${autoList[index].model}", style: const TextStyle(fontSize: 15)),
                        Text("Цена: ${autoList[index].cost}", style: const TextStyle(fontSize: 15))
                      ],
                    ),
                  );
                }
            )
        )
    );
  }
}

class Auto{
  int id;
  String title;
  String photoPath;
  String cost;
  String model;
  Auto(this.id, this.photoPath, this.title, this.model, this.cost);
}

List<Auto> autoList = [
  Auto(1, "https://www.avtogermes.ru/images/marks/lada/granta_hb/i-restajling/colors/240/44110ce11ae2b65f6c543b53b102d6c2.png", "LADA", "Granta Liftback", "от 749 990 ₽"),
  Auto(2, "", "LADA", "Vesta Sport", ""),
  Auto(3, "", "LADA", "Niva Legend Bronto", ""),
  Auto(4, "", "АЗЛК", "Святогор", ""),
  Auto(5, "", "АЗЛК", "Князь Владимир", ""),
  Auto(6, "", "АЗЛК", "Москвич 2901", ""),
  Auto(7, "", "УАЗ", "Patriot", ""),
  Auto(8, "", "УАЗ", "Pickup", ""),
  Auto(9, "", "УАЗ", "Профи", ""),
  Auto(10, "", "ГАЗ", "Volga Siber", ""),
  Auto(11, "", "ГАЗ", "Соболь", ""),
  Auto(12, "", "ГАЗ", "Газель NN", ""),
  Auto(13, "", "ОКА", "1111а", ""),
  Auto(14, "", "TagAZ", "Aquila", ""),
  Auto(15, "", "TagAZ", "TAGER", "")
];