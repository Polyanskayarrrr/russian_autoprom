import 'package:flutter/material.dart';

import 'main.dart';

class purchasePage extends StatelessWidget {
  purchasePage({super.key});

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
        body: ListView.builder(
        itemCount: historyList.length,
        itemBuilder: (context, int index){
          return History(index_history: index);
        }
    )
    );
  }
}

class History extends StatelessWidget {
  const History({Key? key, required this.index_history}) : super(key: key);
  final int index_history;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),
        width: 300,
        height: 200,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 255, 200),
            borderRadius: BorderRadius.all(Radius.circular(16)
            )
        ),
        child: Column(
            children: <Widget>[
              Expanded(flex: 2 ,child: Image.network('${historyList[index_history].photoPath[1]}',
                fit: BoxFit.scaleDown,
              ),
              ),
              Center(

                  child: Expanded(child: Text('Название автомобиля: ${historyList[index_history].title}'
                  ),
                  )

              ),
              Center(
                  child: Expanded(child: Text('Модель: ${historyList[index_history].model}'
                  ),
                  )
              ),
              Center(
                child: Expanded(child: Text('Цена: ${historyList[index_history].cost}₽')),
              ),
              Center(
                child: Expanded(child: Text(DateTime.now().toString())),
              ),
            ]
        )

    );
  }
}