import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class AutoPage extends StatelessWidget {
  const AutoPage({super.key, required this.index_car});
  final int index_car;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 0, 255, 200),
            title: Center(
              child: Text(autoList[index_car].titleAndModel),
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
                  child: Text("Цена: ${autoList[index_car].cost}",
                      style: const TextStyle(fontSize: 25))
              ),
              Container(
                  height: 50,
                  child: Text('Описание:',
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
                          style:  TextStyle(fontSize: 22,
                              color: Colors.black)
                      ),
                    ]
                ),
              ),
        Container(
            height: 50,
            alignment: Alignment.bottomLeft,
            child: Text('Характеристики',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 26,
                    color: Colors.black)
            )
        ),
        Container(
                  color: Color.fromARGB(255, 0, 255, 200),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        children:[
                          Text(
                            textAlign: TextAlign.left,
                              characteristicName[0],
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black
                              ),
                            ),
                          Text(
                            textAlign: TextAlign.center,
                              autoList[index_car].characteristics[0],
                              style: TextStyle(
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
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              autoList[index_car].characteristics[1],
                              style: TextStyle(
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
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              autoList[index_car].characteristics[2],
                              style: TextStyle(
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
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              autoList[index_car].characteristics[3],
                              style: TextStyle(
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
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              autoList[index_car].characteristics[4],
                              style: TextStyle(
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
            child: Text('Видео-обзор:',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 26,
                    color: Colors.black)
            )
        ),
        ]
    )
    );
  }
}