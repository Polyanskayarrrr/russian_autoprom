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
        body:
        GridView.builder(
            padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.670,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 25
                ),
                itemCount: autoList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child:  Column(
                    children: [
                      Text(autoList[index].title, style: const TextStyle(fontSize: 20)),
                    Image.network(autoList[index].photoPath, fit: BoxFit.scaleDown),
                      Text("Модель: ${autoList[index].model}", style: const TextStyle(fontSize: 15)),
                      Text("Цена: ${autoList[index].cost}", style: const TextStyle(fontSize: 15))
                    ],
                  ),
                  );
                }
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
  Auto(2, "https://io.ilsa.ru/gallery/catalog/8/7c/fa7ecc3691602f19da5e7b0d93fc77c8.jpg", "LADA", "Vesta Sport", "от 1 300 000₽"),
  Auto(3, "https://io.ilsa.ru/gallery/catalog/3/bf/88a0ca66ac152172d2e3e728b7199bf3.jpg", "LADA", "Niva Legend", "от 900 000 ₽"),
  Auto(4, "https://cdn.fishki.net/upload/post/2016/07/05/2003246/82dfca640d69a65b3b7e7a17f338c7ec.jpg", "АЗЛК", "Святогор", "от 100 000 ₽"),
  Auto(5, "https://static.insales-cdn.com/images/products/1/7695/282361359/Москвич-2142_Князь_Владимир_красный_Автолегенды_СССР__271_00.jpg", "АЗЛК", "Князь Владимир", "от 90 000 ₽"),
  Auto(6, "https://model-car.ru/upload/iblock/6e7/6e76b4de3caeae2182d13b893f626b0a.jpg", "АЗЛК", "Москвич 2901", "от 100 000 ₽"),
  Auto(7, "https://bez-benzina36.ru/wp-content/uploads/2019/01/патриот-400-768x768.jpg", "УАЗ", "Patriot", "от 1 500 000 ₽"),
  Auto(8, "https://allroader.ru/wp-content/uploads/2016/11/UAZ_Pickup_01.jpg", "УАЗ", "Pickup", "от 1 000 000 ₽"),
  Auto(9, "https://uaz-ekb.ru/public/cat/cars/134-2be0570c-7fdf-4d40-bb39-e4c9829e138d.jpg.jpg", "УАЗ", "Профи", "от 1 300 000 ₽"),
  Auto(10, "https://mezamo.ru/images/газ-volga-siber-2008-2010-седан/gaz-volga-siber-2008-2010-sedan_5.jpg", "ГАЗ", "Volga Siber", "от 300 000 ₽"),
  Auto(11, "https://a.d-cd.net/4995376s-960.jpg", "ГАЗ", "Соболь", "от 1 600 000 ₽"),
  Auto(12, "https://ndpa.ru/upload/iblock/c1b/2uq70jghdo6nraic2htbivmdcw61up42.jpg", "ГАЗ", "Газель NN", "от 3 000 000 ₽"),
  Auto(13, "https://www.scalelavka.ru/upload/iblock/237/237af80e99d0ab859a0304c51b90c3d3.jpg", "ОКА", "1111а", "от 50 000 ₽"),
  Auto(14, "https://365cars.ru/wp-content/uploads/2014/02/white-avto-aquila.jpg", "TagAZ", "Aquila", "от 1 000 000 ₽"),
];