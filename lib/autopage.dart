import 'package:flutter/material.dart';

class AutoPage extends StatelessWidget {
  const AutoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Center(child: Text(infoList[index].title),)
        )
    );
  }
}
class Info{
  int id;
  String title;
  String photoPath;
  String cost;
  Info(this.id, this.photoPath, this.title, this.cost);
}

List<Info> infoList = [
  Info(1, "https://www.avtogermes.ru/images/marks/lada/granta_hb/i-restajling/colors/240/44110ce11ae2b65f6c543b53b102d6c2.png", "LADA Granta Liftback", "от 749 990 ₽"),
  Info(2, "https://io.ilsa.ru/gallery/catalog/8/7c/fa7ecc3691602f19da5e7b0d93fc77c8.jpg", "LADA Vesta Sport", "от 1 300 000₽"),
  Info(3, "https://io.ilsa.ru/gallery/catalog/3/bf/88a0ca66ac152172d2e3e728b7199bf3.jpg", "LADA Niva Legend", "от 900 000 ₽"),
  Info(4, "https://bez-benzina36.ru/wp-content/uploads/2019/01/патриот-400-768x768.jpg", "УАЗ Patriot", "от 1 500 000 ₽"),
  Info(5, "https://allroader.ru/wp-content/uploads/2016/11/UAZ_Pickup_01.jpg", "УАЗ Pickup", "от 1 000 000 ₽"),
  Info(6, "https://uaz-ekb.ru/public/cat/cars/134-2be0570c-7fdf-4d40-bb39-e4c9829e138d.jpg.jpg", "УАЗ Профи", "от 1 300 000 ₽"),
  Info(7, "https://mezamo.ru/images/газ-volga-siber-2008-2010-седан/gaz-volga-siber-2008-2010-sedan_5.jpg", "ГАЗ Volga Siber", "от 300 000 ₽"),
  Info(8, "https://a.d-cd.net/4995376s-960.jpg", "ГАЗ Соболь", "от 1 600 000 ₽"),
  Info(9, "https://ndpa.ru/upload/iblock/c1b/2uq70jghdo6nraic2htbivmdcw61up42.jpg", "ГАЗ Газель NN", "от 3 000 000 ₽"),
  Info(10, "https://365cars.ru/wp-content/uploads/2014/02/white-avto-aquila.jpg", "TagAZ Aquila", "от 1 000 000 ₽"),
];