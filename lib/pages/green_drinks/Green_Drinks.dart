import 'package:dietdemo/pages/buttonpages/Vegetables/Vegetables.dart';
import 'package:dietdemo/pages/green_drinks/green_teas/drink2.dart';
import 'package:dietdemo/pages/green_drinks/green_teas/drink3.dart';
import 'package:dietdemo/pages/green_drinks/green_teas/drink4.dart';
import 'package:dietdemo/pages/green_drinks/green_teas/drink5.dart';

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../healthy_salads/HealthySalad.dart';
import 'green_teas/drink1.dart';

class GreenDrinks extends StatefulWidget {
  const GreenDrinks({super.key});

  @override
  State<GreenDrinks> createState() => _GreenDrinksState();
}

class _GreenDrinksState extends State<GreenDrinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
            backgroundColor: Color.fromARGB(255, 75, 210, 80),
            centerTitle: true,
            title: const Text(
              'Yeşil İçecekler',
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
                FruitCards(
                  text: "Portakal, Elma, Lime ve Havuç Detoksu",
                  imagepath: "myassets/png/portakallı.jpg",
                  color: Color.fromARGB(173, 255, 143, 69),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GreenTea()),
                    );
                  },
                ),
                FruitCards(
                  text: "Salatalık, Limon ve Nane Detoksu",
                  imagepath: "myassets/png/salatalık_limon.jpg",
                  color: Color.fromARGB(174, 45, 209, 141),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GreenTeaTwo()),
                    );
                  },
                ),
                FruitCards(
                  text: "Frambuaz, Elma ve Salatalık Detoksu",
                  imagepath: "myassets/png/frambuaz_detoks.jpg",
                  color: Color.fromARGB(173, 148, 60, 158),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GreenTeaThree()),
                    );
                  },
                ),
                FruitCards(
                  text: "Nar ve Elma Detoksu",
                  imagepath: "myassets/png/nar_detoks.jpg",
                  color: Color.fromARGB(255, 255, 38, 38),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GreenTeaFour()),
                    );
                  },
                ),
                FruitCards(
                  text: "Elmalı Detox Suyu",
                  imagepath: "myassets/png/elmali.jpg",
                  color: Color.fromARGB(172, 10, 157, 59),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GreenTeaFive()),
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
