import 'dart:math';

import 'package:dietdemo/pages/detox_waters/detox_waters_type/detox_waters_one.dart';
import 'package:dietdemo/pages/diet/diet_page.dart';
import 'package:dietdemo/pages/diet_types.dart';
import 'package:dietdemo/pages/green_drinks/Green_Drinks.dart';
import 'package:dietdemo/pages/green_drinks/green_teas/drink1.dart';
import 'package:dietdemo/pages/buttonpages/Foods/FoodsV2.dart';
import 'package:dietdemo/pages/buttonpages/Fruits/Fruits.dart';
import 'package:dietdemo/pages/buttonpages/Vegetables/Vegetables.dart';
import 'package:dietdemo/pages/info_box/info_box.dart';
import 'package:dietdemo/pages/profile_view.dart';
import 'package:dietdemo/pages/vki_view.dart';
import 'package:flutter/material.dart';

import 'detox_waters/Detox_Waters.dart';
import 'healthy_salads/HealthySalad.dart';

class FoodsMenu extends StatefulWidget {
  const FoodsMenu({super.key, required this.username});

  final String username;

  @override
  State<FoodsMenu> createState() => _FoodsMenuState();
}

class _FoodsMenuState extends State<FoodsMenu> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String greeting;

    if (now.hour < 12) {
      greeting = 'Günaydın,';
    } else if (now.hour < 18) {
      greeting = 'Tünaydın,';
    } else {
      greeting = 'İyi akşamlar,';
    }
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        title: Text(
          'Merhaba ${widget.username}',
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 118, 179, 108),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 254, 255, 253),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "myassets/png/fk_icon.png",
                      width: 137,
                    )
                  ],
                )),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text('Anasayfa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
              ),
              title: const Text('Profil'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileView(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.rice_bowl,
              ),
              title: const Text('Sebzeler'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VegetablesPages()),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.apple, // Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                 builder: (context) =>  FoodsMenu(),
                //               ),
                //             ),
              ),
              title: const Text('Meyveler'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FruitsInfo()),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.food_bank,
              ),
              title: const Text('Yiyecekler'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FoodsView()),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.food_bank,
              ),
              title: const Text('Vücut Kitle Indeksi Hesaplama'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VkiView()),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Column(children: [
                Text(
                  greeting,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.grey),
                ),
                Text(
                  "Sağlıklı yiyecekler ister misin?",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.black),
                ),

                // TextFormField(
                //   style: const TextStyle(color: Colors.grey),
                //   decoration: InputDecoration(
                //     filled: true,
                //     prefixIcon: const Icon(
                //       Icons.search,
                //       color: Colors.green,
                //     ),
                //     suffixIcon: const Icon(
                //       Icons.filter_list_rounded,
                //       color: Colors.green,
                //     ),
                //     labelText: "Search",
                //     labelStyle: const TextStyle(
                //         fontSize: 20, color: Color.fromARGB(255, 90, 89, 89)),
                //     enabledBorder: OutlineInputBorder(
                //         borderSide: const BorderSide(
                //             width: 1,
                //             color: Color.fromARGB(255, 234, 235, 234)),
                //         borderRadius: BorderRadius.circular(10)),
                //     hintText: "Search",
                //     hintStyle: const TextStyle(
                //         color: Color.fromARGB(255, 110, 110, 110)),
                //     fillColor: const Color.fromARGB(255, 255, 252, 252),
                //   ),
                // ),
                const Divider(),
                const Divider(),
                SizedBox(
                  height: 120,
                  width: 400,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Cards(
                        text: "MEYVELER",
                        imagePath: "myassets/png/fruits.png",
                        onpressed: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FruitsInfo()),
                          );
                        }),
                      ),
                      Cards(
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const VegetablesPages()));
                        },
                        imagePath: "myassets/png/vegetables.png",
                        text: "SEBZELER",
                      ),
                      Cards(
                        text: "YIYECEKLER",
                        imagePath: "myassets/png/foods.png",
                        onpressed: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FoodsView()),
                          );
                        }),
                      )
                    ],
                  ),
                ),

                Stack(children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 350,
                        height: 140,
                        // ignore: sort_child_properties_last
                        child: Padding(
                          padding: const EdgeInsets.only(left: 130, top: 20),
                          child: Column(
                            children: [
                              Text(
                                "Sağlıklı vücut sağlıklı yiyeceklerle birlikte gelir.",
                                style: Theme.of(context).textTheme.titleLarge,
                                overflow: TextOverflow.clip,
                              ),
                              const Divider(),
                              Text(
                                "organik al, sağlıklı ol",
                                style: Theme.of(context).textTheme.titleLarge,
                                overflow: TextOverflow.clip,
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 244, 198, 92),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Transform.rotate(
                              angle: -pi * 1 / 8,
                              child: Image.asset(
                                'myassets/png/avacado.png',
                                width: 130,
                                height: 120,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
                const Divider(),
                CardFoods(
                  imagepath: "myassets/png/dieticn.png",
                  text: "Hangi Diyet Bana Göre?",
                  onpressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DietPage()),
                    );
                  }),
                ),
                CardFoods(
                  imagepath: "myassets/png/salad.png",
                  text: "Sağlıklı Salatalar",
                  onpressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HealthySalad()),
                    );
                  }),
                ),
                CardFoods(
                  imagepath: "myassets/png/detox.png",
                  text: "Detoks Suları",
                  onpressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GreenDrinks()),
                    );
                  }),
                ),
                // CardFoods(
                //   imagepath: "myassets/png/detox.png",
                //   text: "Dengeli Öğünler",
                //   onpressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => const Detox_Waters()),
                //     );
                //   },
                // ),
                CardFoods(
                  imagepath: "myassets/png/question.png",
                  text: "Bilgi Kutusu",
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ExtansionCardClass()),
                    );
                  },
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class CardFoods extends StatelessWidget {
  const CardFoods({
    Key? key,
    required this.imagepath,
    required this.text,
    required this.onpressed,
  }) : super(key: key);

  final String imagepath;
  final String text;

  final void Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Color.fromARGB(255, 188, 186, 186),
          )),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          onTap: onpressed,
          contentPadding: EdgeInsets.zero,
          title: Center(
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.grey),
            ),
          ),
          leading: Image(image: AssetImage(imagepath)),
          trailing: const SizedBox(
            width: 40,
            child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                    width: 10,
                    child: Icon(
                      Icons.chevron_right,
                      color: Colors.black,
                    ))),
          ),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.onpressed,
  }) : super(key: key);
  final String text;
  final String imagePath;
  final void Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Card(
        color: const Color.fromARGB(255, 141, 231, 144),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 50,
              width: 110,
            ),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 117, 116, 116)),
            )

            /*Text(
              text,
              style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
            ),**/
          ],
        ),
      ),
    );
  }
}
