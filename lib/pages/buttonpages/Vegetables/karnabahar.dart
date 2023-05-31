import 'package:dietdemo/pages/buttonpages/Vegetables/pazi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class Karnabahar extends StatefulWidget {
  const Karnabahar({super.key});

  @override
  State<Karnabahar> createState() => _KarnabaharState();
}

class _KarnabaharState extends State<Karnabahar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
            backgroundColor: Color.fromARGB(255, 90, 199, 94),
            centerTitle: true,
            title: const Text(
              'Karnabahar',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 253, 253),
                fontWeight: FontWeight.w500,
                fontSize: 28,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(200)),
            )),
      ),
      body: ListView(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Text(
                  lorem(paragraphs: 3, words: 100),
                  style: TextStyle(color: Colors.black),
                ),
                Divider(
                  color: Colors.black,
                ),
                Image.asset(
                  "myassets/png/spinach.png",
                  width: 150,
                ),
                Divider(
                  color: Colors.black,
                ),
                VegCard(text: "", color: Color.fromARGB(255, 250, 176, 65))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
