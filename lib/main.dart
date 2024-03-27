import 'package:flutter/material.dart';
import 'package:russian_autoprom/autopage.dart';
import 'package:russian_autoprom/Basket.dart';
import 'package:russian_autoprom/Favourite.dart';




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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(50, 80, 10, 20)),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center( child: Text('Добро Пожаловать!', style: TextStyle(
          color: Colors.black54,
          fontSize: 30,
        ),
        ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 255, 200),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 125),
              child: Column(
                children: [const Text("Авторизация", style: TextStyle(
                    fontSize: 23,
                    color: Colors.black54
                ),
                ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 300),
                    margin: const EdgeInsets.only(top: 15),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const TextField(decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Введите логин",
                          fillColor: Colors.black12,
                          filled: true,
                          helperText: "Логин используется для входа в систему",
                        ),
                        ),
                        TextFormField(decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Введите пароль",
                          fillColor: Colors.black12,
                          filled: true,
                        ),
                          obscureText: true,
                        ),
                        Container(
                          child:  Row(
                            children: [
                              TextButton(onPressed: ()
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SignupPage()),
                                );
                              },
                                child: const Text("Зарегистрироваться",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 0, 255, 200)
                                  ),
                                ),
                              ),
                              Padding(padding: const EdgeInsets.only(left: 65),
                                child: ElevatedButton(onPressed: ()
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const ProductPage()),
                                  );
                                },
                                  child: const Text( "Войти",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 255, 200)
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 255, 200),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 125),
              child: Column(
                children: [const Text("Регистрация", style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 0, 255, 200)
                ),
                ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 300),
                    margin: const EdgeInsets.only(top: 30),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const TextField(decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Введите номер телефона/эл.почту",
                          fillColor: Colors.black12,
                          filled: true,
                        ),
                        ),
                        TextFormField(decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Придумайте пароль",
                          fillColor: Colors.black12,
                          filled: true,
                        ),
                          obscureText: true,
                        ),
                        TextFormField(decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Подтвердите пароль",
                          fillColor: Colors.black12,
                          filled: true,
                        ),
                          obscureText: true,
                        ),
                        Container(
                          child:  Center(
                            child: ElevatedButton(onPressed: ()
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const LoginPage()),
                              );
                            },
                              child: const Text( "Зарегистрироваться",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 255, 200)
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar( title: const Center(child: Text("Российский Автопром",
            style: TextStyle(fontSize: 21)
        ),
    ),
          backgroundColor: const Color.fromARGB(255, 0, 255, 200),
          actions: [IconButton(onPressed: ()
          {Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const FavouritePage()));},
                icon: const Icon(Icons.favorite, color: Colors.red,)
                ),
            IconButton(onPressed: ()
            {Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const BasketPage()));},
                icon: const Icon(Icons.shopping_basket_outlined, color: Colors.black,),
    ),]
        ),
        body:
        GridView.builder(
            padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.615,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 25
                ),
                itemCount: autoList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Column(
                      children: [
                        Text(autoList[index].title,
                            style: const TextStyle(fontSize: 25)),
                        Expanded(
                            flex: 1, child:
                        Image.network(
                            autoList[index].photoPath[0], fit: BoxFit.scaleDown)),
                        Text("Модель: ${autoList[index].model}",
                            style: const TextStyle(fontSize: 17)),
                        Text("Цена: ${autoList[index].cost}",
                            style: const TextStyle(fontSize: 18)),
                        ElevatedButton(onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AutoPage(index_car:index)),
                          );
                        }, child: const Text("Подробнее",
                        style: TextStyle( color: Color.fromARGB(255, 0, 255, 200))),
                        ),
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
  String titleAndModel;
  List <String> photoPath;
  String cost;
  String model;
  String description;
  List <String> characteristics;
  String videoPath;
  Auto(this.id, this.title, this.model, this.titleAndModel, this.cost, this.photoPath, this.description, this.characteristics, this.videoPath);
}

List <Auto> autoList = [
  Auto(1,  "LADA", "Granta Liftback", "LADA Granta Liftback", "от 749 990 ₽", ["https://avtonam.ru/wp-content/uploads/2018/08/lada-granta-2019-19.jpg",
    "https://i.trse.ru/2023/06/qftL.jpg",
    "https://sportishka.com/uploads/posts/2022-08/1660831044_20-sportishka-com-p-granta-liftbek-i-sedan-krasivo-foto-32.jpg"],
      "LADA Granta не нужно кому-то что-то доказывать. Она уже заслужила доверие более миллиона автомобилистов и прошла проверку нашими дорогами. Не адаптированная, а разработанная специально для российских условий, LADA Granta уверена в себе на каждом километре пути. Увеличенные ходы подвесок, специальные настройки шасси и множество современных технологий делают поездки комфортными и безопасными. А благодаря широкой дилерской сети и трехлетней гарантии владельцам LADA Granta обеспечена постоянная поддержка в любом уголке страны.",
      ["Легковая","1560 кг", "бензиновый", "1596 см³","90"],
      "https://youtu.be/e_0aWE9xtF0"),
  Auto(2, "LADA", "Vesta Sport", "LADA Vesta Sport", "от 1 300 000₽", ["https://io.ilsa.ru/gallery/catalog/8/7c/fa7ecc3691602f19da5e7b0d93fc77c8.jpg",
    "https://avatars.dzeninfra.ru/get-zen_doc/1626348/pub_5c841837eeac1c00b3d23363_5c843266cd893400b3e4e1c9/scale_1200",
    "https://ib.drivenn.ru/bx7ra3k4i38ao_1chhqkc.jpeg"],
      "Новая Lada Vesta Sport – усовершенствованная версия спортивного седана с инновационным высокотехнологичным наполнением и модернизированным дизайном.В рамках Московского автосалона 2016 года «АвтоВАЗ» представил публике концепт модели. Старт продаж новинки – январь 2019 года.Автомобиль, построенный с применением гоночных технологий и адаптированный к ежедневным поездкам по городу и шоссе, получил модернизированный 1,8-литровый бензиновый двигатель с 16 клапанами мощностью 145 л.с. и полностью перенастроенное шасси.Высокий уровень защиты водителю и пассажирам обеспечивает широк",
      ["Легковая","1322 кг", "бензиновый", "1774 см³","145"],
      "https://youtu.be/VlllCNxYfbg"),
  Auto(3, "LADA", "Niva Legend",  "LADA Niva Legend", "от 900 000 ₽",  ["https://avatars.mds.yandex.net/i?id=f51ff9c45dd788d653663be3ad6caa12-5584797-images-thumbs&n=13",
    "https://yandex-images.clstorage.net/pu4cq8269/1eecafO-w5vI/_S6XGckEWYx5Bq0-edqHI0K1uuiuJYBjMd3hlrxIukk7UX9ngCy5pXzDJB_DuiFnVlFC1QSGtLzeBcRS3wafrbx6Uy34ofzYKPIJ_glKxtfzYTrs3-Cg0kBt1FLM3S_JviKp0KIbHzfq5MYIFG40U9J1lGN1sjEN6lSlF1gTaJvOnxS6HTUo_S91_Bw5OGcHcCZKrI4ykbM3nXUh6Y7o7juy-nMQ2Cy1ePQl2YRPJhXwBaSCMPIRnmkltVUJoLu7fI_nCh7WKO0-199c6zrGBVC3uA6uAvHwJo6kUfgvCt84kzqBMuouFziH9Xm1HZYEEUfH8PARom9LhwUlyJAK-rz-5Au99Flvz4Q-LOq6ZQVjdWvs7iMh8tY_pCFZ_LhdOmJqsiLKf9Wb1xQ75n3ldaJ2F_PzQHAsGIdGl_lA2cu9LqUqr6cqvB9Xzc-runbn0xVpH17jceGUHGahuD2KTPhjKHLBKR_1eRbHa7R-JefB1EXzkNMyvimX9OQro7oILo4kyg03ivwPBA4dGavWJwD1295N0kIBlyy2IFgPGwxocCmg0ustl3qW5Jr0LZZ18AfWwSGAAq6JpAV2yIGbK91-tXgvJgmfb8eN76vpVhaBBOtcDHIhgQaexDG7Xqt-WXIK8hI6rga6xXf5p-wG5yIn5NPS0qIOq9e3VlpByIm8XNRJv8bJ_90Xf9wLyLQlMsfaD2xBMuHkrJSRGa_onDpTeGAg2nwUeTVkm-fPBBZRBrYScBECP8pnZxfII9gZfg6XqFxHGzw-hQ8NyyrEVvPVO3w_EVCgBpyWQSp_6k46MktSoOofZAimtdrWLMSUoSeVcYDRwmwZ5WRlCtDa6MxMVxhNFStsfyVsrhmK5IdAZHidfJNgUcTM9_MJfWo86bJIwdDofhZ5BybaNA0El0AnRjGAEdJ_ememlssQ-ouuTeeb7SZI7Xy3HIzrahf28ycZnfxy4uJHHJeCQ",
    "https://avatars.mds.yandex.net/i?id=670988ba8a4abdb82ce07bf5654d04c1589e19e6-10814708-images-thumbs&n=13"],
      "LADA Niva Legend — автомобиль со всемирно известным дизайном, в котором продумана каждая деталь. Короткие свесы улучшают проходимость на пересечённой местности и позволяют безопасно парковаться вплотную к бордюрам. Компактный кузов — это удачное решение и для города, и для леса. А скругленные линии капота, дверей и колесных арок — классическое решение, актуальное всегда и везде.",
      ["Внедорожник","1610 кг", "бензиновый", "1690 см³","83"],
      "https://youtu.be/9qVk5tH9nsM"),
  Auto(4, "УАЗ", "Patriot", "УАЗ Patriot", "от 1 500 000 ₽",  ["https://avatars.mds.yandex.net/i?id=aa474e846d9da63ac060c9d18835fc96aef2bc09-10445007-images-thumbs&n=13",
    "https://avatars.mds.yandex.net/i?id=1b20cc90f3744b20e795976ba4a2bc9ff2759dfb-9844469-images-thumbs&n=13",
    "https://yandex-images.clstorage.net/pu4cq8269/1eecafO-w5vI/_S6XGckEWYx5Bq0-edqHI0K1uuiuJYBjMd3Rs6x42kneBM83lZkJQDxDIW_Dv4QidkSHhQGjNBl-EJEiXwbvmIw6Uy34oZyoyGIp_glKxtfzYTrs3-Cg0kBt1FLM3S_JviKp0KIbHzfq5MYIFG40U9J1lGN1sjEN6lSlF1gTaJvOnxS6HTUo_S91_Bw5OGcHcCZKrI4ykbM3nXUh6Y7o7juy-nMQ2Cy1ePQl2YRPJhXwBaSCMPIRnmkltVUJoLu7fI_nCh7WKO0-199c6zrGBVC3uA6uAvHwJo6kUfgvCt84kzqBMuouFziH9Xm1HZYEEUfH8PARom9LhwUlyJAK-rz-5Au99Flvz4Q-LOq6ZQVjdWvs7iMh8tY_pCFZ_LhdOmJqsiLKf9Wb1xQ75n3ldaJ2F_PzQHAsGIdGl_lA2cu9LqUqr6cqvB9Xzc-runbn0xVpH17jceGUHGahuD2KTPhjKHLBKR_1eRbHa7R-JefB1EXzkNMyvimX9OQro7oILo4kyg03ivwPBA4dGavWJwD1295N0kIBlyy2IFgPGwxocCmg0ustl3qW5Jr0LZZ18AfWwSGAAq6JpAV2yIGbK91-tXgvJgmfb8eN76vpVhaBBOtcDHIhgQaexDG7Xqt-WXIK8hI6rga6xXf5p-wG5yIn5NPS0qIOq9e3VlpByIm8XNRJv8bJ_90Xf9wLyLQlMsfaD2xBMuHkrJSRGa_onDpTeGAg2nwUeTVkm-fPBBZRBrYScBECP8pnZxfII9gZfg6XqFxHGzw-hQ8NyyrEVvPVO3w_EVCgBpyWQSp_6k46MktSoOofZAimtdrWLMSUoSeVcYDRwmwZ5WRlCtDa6MxMVxhNFStsfyVsrhmK5IdAZHidfJNgUcTM9_MJfWo86bJIwdDofhZ5BybaNA0El0AnRjGAEdJ_ememlssQ-ouuTeeb7SZI7Xy3HIzrahf28ycZnfxy4uJHHJeCQ"],
      "УАЗ-3163 «Patriot» — полноприводный автомобиль повышенной проходимости (вседорожник) для эксплуатации на дорогах всех категорий, а также по пересечённой местности. Представляет собой IV поколение автомобилей повышенной проходимости ГАЗ/УАЗ, является рестайлинговой модификацией модели УАЗ-3162 и «преемником» модели УАЗ-469 (3151) — серийно выпускается Ульяновским автозаводом с августа 2005 года. Автомобиль оснащён цельнометаллическим пятидверным кузовом и предназначен для эксплуатации на дорогах всех категорий, а также в сельской местности. В прежние годы производился под именем собственным «Симбир».",
      ["Внедорожник","2650 кг", "бензиновый", "2693 см³","150"],
      "https://ya.ru/video/preview/12264046976527751022"),
  Auto(5, "УАЗ", "Pickup", "УАЗ Pickup", "от 1 000 000 ₽",  ["https://avatars.mds.yandex.net/i?id=4da475871399e0382e9f0bc1a03d9cba03d79dd2-10197150-images-thumbs&n=13"
    ,"https://avatars.mds.yandex.net/i?id=7997287e3f1b11994309004ca1e2cabaad3721d4-5219488-images-thumbs&n=13",
    "https://yandex-images.clstorage.net/pu4cq8269/1eecafO-w5vI/_S6XGckEWYx5Bq0-edqHI0K1uuiuJYBjMdiBFqxY-iyelApy0FxpgEymEfqTyqQSUxGnsKQmRDzeRaGHGgafiPkqUy34ofzYKPIJ_glKxtfzYTrs3-Cg0kBt1FLM3S_JviKp0KIbHzfq5MYIFG40U9J1lGN1sjEN6lSlF1gTaJvOnxS6HTUo_S91_Bw5OGcHcCZKrI4ykbM3nXUh6Y7o7juy-nMQ2Cy1ePQl2YRPJhXwBaSCMPIRnmkltVUJoLu7fI_nCh7WKO0-199c6zrGBVC3uA6uAvHwJo6kUfgvCt84kzqBMuouFziH9Xm1HZYEEUfH8PARom9LhwUlyJAK-rz-5Au99Flvz4Q-LOq6ZQVjdWvs7iMh8tY_pCFZ_LhdOmJqsiLKf9Wb1xQ75n3ldaJ2F_PzQHAsGIdGl_lA2cu9LqUqr6cqvB9Xzc-runbn0xVpH17jceGUHGahuD2KTPhjKHLBKR_1eRbHa7R-JefB1EXzkNMyvimX9OQro7oILo4kyg03ivwPBA4dGavWJwD1295N0kIBlyy2IFgPGwxocCmg0ustl3qW5Jr0LZZ18AfWwSGAAq6JpAV2yIGbK91-tXgvJgmfb8eN76vpVhaBBOtcDHIhgQaexDG7Xqt-WXIK8hI6rga6xXf5p-wG5yIn5NPS0qIOq9e3VlpByIm8XNRJv8bJ_90Xf9wLyLQlMsfaD2xBMuHkrJSRGa_onDpTeGAg2nwUeTVkm-fPBBZRBrYScBECP8pnZxfII9gZfg6XqFxHGzw-hQ8NyyrEVvPVO3w_EVCgBpyWQSp_6k46MktSoOofZAimtdrWLMSUoSeVcYDRwmwZ5WRlCtDa6MxMVxhNFStsfyVsrhmK5IdAZHidfJNgUcTM9_MJfWo86bJIwdDofhZ5BybaNA0El0AnRjGAEdJ_ememlssQ-ouuTeeb7SZI7Xy3HIzrahf28ycZnfxy4uJHHJeCQ"],
      "Обновленный УАЗ Пикап сохранил все преимущества первоклассного внедорожника, которому по силам как перевезти груз, так и доставить охотников и рыбаков в самые труднодоступные уголки нашей страны.",
      ["Внедорожник", "2860 кг", "бензиновый", "2693 см³","135"],
      "https://youtu.be/Zb9OLYHTigA"),
  Auto(6, "УАЗ", "Профи", "УАЗ Профи", "от 1 300 000 ₽",  ["https://avatars.mds.yandex.net/i?id=b7b5981e5091a70035d0a08ddc0a2ce449f66e04-3598527-images-thumbs&n=13",
    "https://yandex-images.clstorage.net/pu4cq8269/1eecafO-w5vI/_S6XGckEWYx5Bq0-edqHI0K1uuiuJYBjMd2h45xdnyn-QR8ihRys0EzzUV-2n_RicwFHpaSGdDnrIKFyaibPmNkqUw2okbxYGPPtvkmKpvaWhKstDmBRxxQdFYZ5iB8JmOKoMKIqzjY7VCboZx-wphIHNGSAoxA9uiSUFWrRuYod_ATYLEW5r98mD447K3Z10fTrfNxRMLDkvGajKk84jAixC4JhGUykK7f3eEYN9oRiN9UhwIODvss01kTZApk4DQ-0289Fqb59BU9cOYp0VUAGSVzsMXOh920WsoutCY8pcfmgUxvu5FhnV0kUvedlIFSn4SMwcpxphKaF6bPY-HwMtXjtNCtPLuQ_XbkpdGaC1asczeFxUUZtZhNYH4uN2CHKsHNKLEcIhhUadM6W1hGEpOJy4jHPaccUtDlg6fmsTZRqvkf4n_0X3By5OpbW4tdYrA2xYhNlr-bymS2aT9ljClOQKgylyVVFSHcOBLWz1qSB4aCj_nl1Z2baAypqDMx0yC7nuI-u1A6uqJpWBQJlmb88goIQVX9nEqu82t_KYthAUhhupkl2tAgkvZaEYEWWMLKQs15KhPWF-CIJmfxdxuo_ZNvvbVf8HOoaZ4TzVRv-nOECgecNdvH6DKjuyEGKgIOb_2Ya5ddb5S0EVkB3hMPgMBN8OTbVFzhxq_jePPd636S7Xb2lz7zL-FQ3MGRInq_yYmPVXdZTC09KjekzGLJjSe2l6va1G8Yv9SVhJUVhI5AiHYnmlIVaYTs6jH8WmV52eL4v1R58KYgn9iKFO83_kCOB5V8GYNtNmI2IACoyUyqd1Hkn9Col73fVQAYmkeNQcc4L5eZHqWPKiM6_pogMRij_j7a9romo9kWTxtqOfaDSQ7U-tEPZzepeCAO5QlFL76XYtPTIBC90NEDVZpEjQGKtiScVhmlDqerPDyUoPyWp_B3Gn1xpW4f20KfaDpwiYcBlXsUB8",
    "https://avatars.mds.yandex.net/i?id=d83190f2d3ee7a7b2deab4548ae060630b72b637-4600733-images-thumbs&n=13"],
      "Грузовой УАЗ Профи — малотоннажный коммерческий автомобиль с огромным потенциалом. Практически не существует транспортных задач, которые невозможно решить с его помощью. Он целенаправленно создавался для того, чтобы груз можно было доставить в пункт назначения независимо от его месторасположения, а также дорожных и климатических условий.",
      ["Газель","3500 кг", "бензиновый", "2693 см³","150"],
      "https://youtu.be/VxinijfIHQU"),
  Auto(7, "ГАЗ", "Volga Siber", "ГАЗ Volga Siber", "от 300 000 ₽", ["https://avatars.mds.yandex.net/i?id=8293d2afc6b4f85d5bc78c3345e0385f9eaee2e9-12202401-images-thumbs&n=13",
    "https://avatars.mds.yandex.net/i?id=bdc550ee104d2852b5669463556bac5070c60484-8492509-images-thumbs&n=13",
    "https://avatars.mds.yandex.net/i?id=21188a70a4f8f0473d5f4e1208f6f898610b7c6f-11389617-images-thumbs&n=13"],
      "ГАЗ Volga Siber (рус. Волга Сайбер) — российский среднеразмерный седан, выпускавшийся с 2008 по 2010 год. Представлен российской компанией «Группа ГАЗ» на выставке «Интеравто-2007» в Москве 29 августа 2007 года как GAZ Siber. В дальнейшем торговое название модели было изменено на Volga Siber[1][2]. В 2008—2010 годах было выпущено лишь несколько небольших партий.",
      ["Седан","1920 кг", "бензиновый", "2429 см³","143"],
      "https://youtu.be/rgZwJU9wKGM")
];
List <String> characteristicName = ["Тип машины","Масса", "Тип двигателя","Рабочий объем двигателя", "Мощность двигателя (л/с)"];

List <Auto> basketList = [];

List <Auto> favouriteList = [];

