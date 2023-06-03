import 'package:dietdemo/data/detoks.dart';
import 'package:dietdemo/models/detoks/detoks_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../detox_waters/list_view_detoks.dart';
import '../healthy_salads/HealthySalad.dart';

class GreenDrinks extends StatefulWidget {
  const GreenDrinks({super.key});

  @override
  State<GreenDrinks> createState() => _GreenDrinksState();
}

class _GreenDrinksState extends State<GreenDrinks> {
  late List<DetoksModel> detoxwaters;

  @override
  void initState() {
    detoxwaters = DETOKS_DATA.map((e) => DetoksModel.fromJson(e)).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
            backgroundColor: const Color.fromARGB(255, 75, 210, 80),
            centerTitle: true,
            title: const Text(
              'Yeşil İçecekler',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 253, 253),
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(200)),
            )),
      ),
      body: ListView(children: [
        Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    lorem(paragraphs: 2, words: 70),
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                for (int i = 0; i < detoxwaters.length; i++)
                  FruitCards(
                    text: detoxwaters[i].title!,
                    imagepath: detoxwaters[i].image!,
                    color: const Color.fromARGB(173, 255, 143, 69),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ListViewDetoks(model: detoxwaters[i])),
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
