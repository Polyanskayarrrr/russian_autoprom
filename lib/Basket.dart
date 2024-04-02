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
                 Column(
                  children: <Widget>[
                  Container(
                    height: 500,
                    width: 500,
                    child: ListView.builder(
                    itemCount: basketList.length,
                    itemBuilder: (context, int index){
                    return BasketList(index_basket: index);
                              }
                          ),
                  ),
                      Text('Сумма товаров: ' + FinalCost().toString()+'₽'),
                  ],
                 )


    );
  }
}

class BasketList extends StatefulWidget {
  int index_basket;
   BasketList({super.key, required this.index_basket});

  @override
  State<BasketList> createState() => _BasketListState(index_basket);
}

class _BasketListState extends State<BasketList> {
  final int index_basket;
  _BasketListState(this.index_basket);
  bool _isDisabled=false;
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
                child: Expanded(child: Text('Цена: ${basketList[index_basket].cost}₽')),
              ),
              Container(
                child: Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                              onPressed: _isDisabled ? null : (){
                                if(basketList[index_basket].quantity <= 1){
                                }
                                else if (basketList[index_basket].quantity == 2){
                                  _isDisabled = true;
                                  setState(() {
                                    basketList[index_basket].quantity--;
                                  });
                                }
                                else{
                                  setState(() {
                                    basketList[index_basket].quantity--;
                                  });
                                }
                              },
                              child: Text('-')
                          ),
                        ),
                        Expanded(child: Text(basketList[index_basket].quantity.toString(), textAlign: TextAlign.center,)),          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: (){
                                  setState(() {
                                    basketList[index_basket].quantity++;
                                    _isDisabled = false;
                                  });
                                },
                                child: Text('+'))
                        )
                      ],      )

                ),)
            ]
        )

    );
  }
}




