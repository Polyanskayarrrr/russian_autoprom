import 'package:flutter/material.dart';
import 'package:russian_autoprom/videowidget.dart';
import 'main.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';


class AutoPage extends StatelessWidget {
  const AutoPage({super.key, required this.index_car});
  final int index_car;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 0, 255, 200),
            title: Center(
              child: Text(autoList[index_car].titleAndModel,
                  style: const TextStyle(fontSize: 30)),
          ),
        ),
            body: ListView(
            children: <Widget>[
              Container(
                height: 320,
                child: Swiper(
                    itemCount:  autoList[index_car].photoPath.length,
                    itemBuilder: (BuildContext context, int index){
                      return Image.network( autoList[index_car].photoPath[index],
                        fit: BoxFit.fill,);
          }
      ),
    ),
              Container(
                  child: Text("Цена: ${autoList[index_car].cost}₽",
                      style: const TextStyle(fontSize: 26))
              ),
              Container(
                  height: 50,
                  child: const Text('Описание:',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 26,
                        color: Colors.black),
                  )
              ),
              Container(
                height: 80,
                child: ListView(
                    children: [
                      Text(autoList[index_car].description,
                          style:  const TextStyle(fontSize: 20,
                              color: Colors.black)
                      ),
                    ]
                ),
              ),
        Container(
            height: 50,
            alignment: Alignment.bottomLeft,
            child: const Text('Характеристики:',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 26,
                    color: Colors.black)
            )
        ),
        Container(
                  color: const Color.fromARGB(255, 0, 255, 200),
                  child: Table(
                    border: TableBorder.all(width: 1, color: Colors.black),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        children:[
                          Text(
                            textAlign: TextAlign.left,
                              characteristicName[0],
                              style: const TextStyle(
                                fontSize: 22,
                                color: Colors.black
                              ),
                            ),
                          Text(
                            textAlign: TextAlign.center,
                              autoList[index_car].characteristics[0],
                              style: const TextStyle(
                                fontSize: 22,
                                color: Colors.black
                              ),
                          )
                        ]
                      ),
                      TableRow(
                          children:[
                            Text(
                              textAlign: TextAlign.left,
                              characteristicName[1],
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              autoList[index_car].characteristics[1],
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                              ),
                            )
                          ]
                      ),
                      TableRow(
                          children:[
                            Text(
                              textAlign: TextAlign.left,
                              characteristicName[2],
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              autoList[index_car].characteristics[2],
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                              ),
                            )
                          ]
                      ),
                      TableRow(
                          children:[
                            Text(
                              textAlign: TextAlign.left,
                              characteristicName[3],
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              autoList[index_car].characteristics[3],
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                              ),
                            )
                          ]
                      ),
                      TableRow(
                          children:[
                            Text(
                              textAlign: TextAlign.left,
                              characteristicName[4],
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              autoList[index_car].characteristics[4],
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                              ),
                            )
                          ]
                      ),
              ],
            )
        ),
         Container(
            height: 50,
            alignment: Alignment.bottomLeft,
            child: const Text('Видео-обзор:',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 26,
                    color: Colors.black)
            )
        ),
              VideoWidget(index_car: index_car),
              Column(
                children: [
                  ElevatedButton(onPressed: () {
                    favouriteList.add(autoList[index_car]);
                  },
                    child: const Text("Добавить в избранное",
                        style: TextStyle(color: Color.fromARGB(255, 0, 255, 200),
                            fontSize: 26)
                    ),
                  ),
                  ElevatedButton(onPressed: () {
                    basketList.add(autoList[index_car]);
                  },
                    child: const Text("Добавить в корзину",
                      style: TextStyle(color: Color.fromARGB(255, 0, 255, 200),
                          fontSize: 26)
                  ),
                                    ),
                  ElevatedButton(onPressed: () {
                    showDialog(context: context,
                        builder: (BuildContext context) {
                      return AlertDialog(
                          content: Text('Вы уверены в покупке?',
                          style: TextStyle(fontSize: 20)
                          ),
                          actions: [
                             ElevatedButton(onPressed: (){
                              Navigator.of(context).pop();
                            },
                                child: Text('Нет',
                            style: TextStyle(color: Color.fromARGB(255, 0, 255, 200),
                            fontSize: 17)
                            )
                            ),
                           ElevatedButton(onPressed: () {
                             Navigator.pop(context);
                             historyList.add(autoList[index_car]);
                            },
                                child: Text('Да',
                                    style: TextStyle(color: Color.fromARGB(255, 0, 255, 200),
                                        fontSize: 17)
                                )
                            )
                          ]
                      );
                        });
                  },
                    child: const Text("Купить",
                        style: TextStyle(color: Color.fromARGB(255, 0, 255, 200),
                            fontSize: 26)
                    ),
                  ),
                ],

              ),
        ]
    )
    );
  }
}