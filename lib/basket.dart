import 'package:flutter/material.dart';
import 'main.dart';


class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 0, 255, 200),
            title: const Center(
              child: Text("Корзина",
                  style: TextStyle(fontSize: 30)),
            )
        ),
             body:
              ListView.builder(
              itemCount: basketList.length,
              itemBuilder: (context, int index){
              return BasketList(index_basket: index);
          }
      )

    );
  }
}
class BasketList extends StatelessWidget {
  const BasketList({Key? key, required this.index_basket}) : super(key: key);
  final int index_basket;
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
              Expanded(
                  flex: 1,
                  child: Container(
                      alignment: Alignment.centerRight,

                      child:  IconButton(
                          onPressed: (){
                            basketList.removeAt(index_basket);
                          },
                          icon: Icon(Icons.cancel_outlined)
                      )
                  )
              ),
              Expanded(flex: 2 ,child: Image.network('${basketList[index_basket].photoPath[1]}',
                fit: BoxFit.scaleDown,
              ),
              ),
              Center(

                  child: Expanded(child: Text('Название автомобиля: ${basketList[index_basket].title}'
                  ),
                  )

              ),
              Center(
                  child: Expanded(child: Text('Модель: ${basketList[index_basket].model}'
                  ),
                  )
              ),
              Center(
                child: Expanded(child: Text('Цена: ${basketList[index_basket].cost}')),
              ),
            ]
        )

    );
  }
}



