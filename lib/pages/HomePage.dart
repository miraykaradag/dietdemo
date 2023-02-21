import 'package:dietdemo/pages/DetoxWaters.dart';
import 'package:dietdemo/pages/GreenTea.dart';
import 'package:dietdemo/pages/HealthySalad.dart';
import 'package:dietdemo/pages/buttonpages/Foods.dart';
import 'package:dietdemo/pages/buttonpages/FoodsV2.dart';
import 'package:dietdemo/pages/buttonpages/Fruits.dart';
import 'package:dietdemo/pages/buttonpages/Vegetables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class FoodsMenu extends StatefulWidget {
  const FoodsMenu({super.key});

  @override
  State<FoodsMenu> createState() => _FoodsMenuState();
}

class _FoodsMenuState extends State<FoodsMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        title: const Text(
          '',
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 42, 46, 42),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 254, 255, 253),
              ),
              child: Text(
                'Diet App',
                style: TextStyle(color: Color.fromARGB(255, 105, 102, 102), fontSize: 25),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.rice_bowl,
              ),
              title: const Text('Vegetables'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VegetablesPages()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.apple,
              ),
              title: const Text('Fruits'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FruitsInfo()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.food_bank,
              ),
              title: const Text('Foods'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FoodsView()),
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
                  "Good morning,",
                  style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.grey),
                ),
                Text(
                  "Want to healty food?",
                  style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black),
                ),
                Divider(),
                Divider(),
                TextFormField(
                  style: TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.green,
                    ),
                    suffixIcon: const Icon(
                      Icons.filter_list_rounded,
                      color: Colors.green,
                    ),
                    labelText: "Search",
                    labelStyle: TextStyle(fontSize: 20, color: Color.fromARGB(255, 90, 89, 89)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color.fromARGB(255, 234, 235, 234)),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 110, 110, 110)),
                    fillColor: Color.fromARGB(255, 255, 252, 252),
                  ),
                ),
                const Divider(),
                const Divider(),
                SizedBox(
                  height: 130,
                  width: 400,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Cards(
                        onpressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const VegetablesPages()));
                        },
                        imagePath: "myassets/png/vegetables.png",
                        text: "VEGETABLES",
                      ),
                      Cards(
                        text: "FRUITS",
                        imagePath: "myassets/png/fruits.png",
                        onpressed: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FruitsInfo()),
                          );
                        }),
                      ),
                      Cards(
                        text: "FOODS",
                        imagePath: "myassets/png/foods.png",
                        onpressed: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FoodsView()),
                          );
                        }),
                      )
                    ],
                  ),
                ),
                const Divider(),
                Stack(children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 350,
                        height: 150,
                        // ignore: sort_child_properties_last
                        child: Padding(
                          padding: const EdgeInsets.only(left: 130, top: 20),
                          child: Column(
                            children: [
                              Text(
                                "HEALTH BODY COMES WITH GOOD NUTRIENTS",
                                style: Theme.of(context).textTheme.headline6,
                                overflow: TextOverflow.clip,
                              ),
                              const Divider(),
                              Text(
                                "be organic,be health",
                                style: Theme.of(context).textTheme.headline6,
                                overflow: TextOverflow.clip,
                              ),
                            ],
                          ),
                        ),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 138, 180, 150),
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
                            Image.asset(
                              'myassets/png/avacado.png',
                              width: 140,
                              height: 120,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
                Divider(),
                CardFoods(
                  imagepath: "myassets/png/salad.png",
                  text: "Healthy Salad",
                  onpressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HealthySalad()),
                    );
                  }),
                ),
                CardFoods(
                  imagepath: "myassets/png/greentea.png",
                  text: "Green Tea",
                  onpressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GreenTea()),
                    );
                  }),
                ),
                CardFoods(
                  imagepath: "myassets/png/detox.png",
                  text: "Detox Waters",
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DetoxWaters()),
                    );
                  },
                )
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
          borderRadius: BorderRadius.circular(10), side: BorderSide(color: Color.fromARGB(255, 188, 186, 186))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          onTap: onpressed,
          contentPadding: EdgeInsets.zero,
          title: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.grey),
            ),
          ),
          leading: Image(image: AssetImage(imagepath)),
          trailing: const SizedBox(
            width: 20,
            child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                    width: 20,
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
    return Card(
      color: Color.fromARGB(255, 141, 231, 144),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 70,
            width: 130,
          ),
          TextButton(
              onPressed: onpressed,
              child: Text(
                text,
                style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 117, 116, 116)),
              ))
          /*Text(
            text,
            style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
          ),**/
        ],
      ),
    );
  }
}
