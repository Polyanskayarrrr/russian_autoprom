import 'package:flutter/material.dart';
import 'package:russian_autoprom/main.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 0, 255, 200),
        title: const Center(
          child: Text("Избранное",
        style: TextStyle(fontSize: 30)),
    )
    ),
      body:
  ListView.builder(
  itemCount: favouriteList.length,
      itemBuilder: (context, int index){
        return Favourite(index_favourite: index);
      }
  )

    );
  }
}
class Favourite extends StatelessWidget {
  const Favourite({Key? key, required this.index_favourite}) : super(key: key);
  final int index_favourite;
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
                            favouriteList.removeAt(index_favourite);
                          },
                          icon: Icon(Icons.cancel_outlined)
                      )
                  )
              ),
              Expanded(flex: 2 ,child: Image.network('${favouriteList[index_favourite].photoPath[1]}',
                fit: BoxFit.scaleDown,
              ),
              ),
              Center(

                  child: Expanded(child: Text('Название автомобиля: ${favouriteList[index_favourite].title}'
                  ),
                  )

              ),
              Center(
                  child: Expanded(child: Text('Модель: ${favouriteList[index_favourite].model}'
                  ),
                  )
              ),
              Center(
                child: Expanded(child: Text('Цена: ${favouriteList[index_favourite].cost}')),
              ),
            ]
        )

    );
  }
}