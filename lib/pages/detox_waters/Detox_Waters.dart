import 'package:dietdemo/pages/buttonpages/Vegetables/Vegetables.dart';
import 'package:dietdemo/pages/detox_waters/detox_waters_type/detox_waters_one.dart';

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class Detox_Waters extends StatefulWidget {
  const Detox_Waters({super.key});

  @override
  State<Detox_Waters> createState() => _Detox_WatersState();
}

class _Detox_WatersState extends State<Detox_Waters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBar(
            backgroundColor: Color.fromARGB(255, 90, 199, 94),
            centerTitle: true,
            title: const Text(
              'Dengeli Yemek Menüleri',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 253, 253),
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(200)),
            )),
      ),
      body: ListView(children: [
        Container(
          color: Color.fromARGB(255, 255, 255, 255),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // const Text(
                //   "Detox Suları",
                //   style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25, fontWeight: FontWeight.w600),
                // ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  lorem(paragraphs: 2, words: 100),
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                ),
                const FruitCards(
                    text: "Maydanoz Suyu",
                    imagepath: "myassets/png/saladreel.png",
                    color: Color.fromARGB(175, 49, 99, 47)),
                const FruitCards(
                    text: "Yeşil Çay", imagepath: "myassets/png/saladreel.png", color: Color.fromARGB(175, 49, 99, 47)),
                const FruitCards(
                    text: "Limonlu Su",
                    imagepath: "myassets/png/saladreel.png",
                    color: Color.fromARGB(175, 49, 99, 47)),
                const FruitCards(
                    text: "Sebze Suyu",
                    imagepath: "myassets/png/saladreel.png",
                    color: Color.fromARGB(175, 49, 99, 47)),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class FruitCards extends StatelessWidget {
  const FruitCards({
    Key? key,
    required this.text,
    required this.imagepath,
    required this.color,
  }) : super(key: key);
  final String text;
  final String imagepath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 50,
        color: color,
        child: SizedBox(
          width: 400,
          height: 250,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      imagepath,
                      fit: BoxFit.cover,
                      height: 100,
                      width: 200,
                    ),
                  ),
                ),
                const Divider(),
                Text(
                  text,
                  style: const TextStyle(fontSize: 25),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DetoxWaters()),
                    );
                  },
                  contentPadding: EdgeInsets.zero,
                  title: Text(lorem(paragraphs: 1, words: 5)),
                  trailing: const SizedBox(
                    width: 20,
                    child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            width: 20,
                            child: Icon(
                              Icons.chevron_right,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
