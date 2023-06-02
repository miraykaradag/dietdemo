import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import 'first_card.dart';

class CancerFruit extends StatefulWidget {
  const CancerFruit({super.key});

  @override
  State<CancerFruit> createState() => _CancerFruitState();
}

class _CancerFruitState extends State<CancerFruit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kanser"),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      lorem(paragraphs: 2, words: 50),
                      style: TextStyle(color: Colors.black),
                    ),
                    Divider(),
                    FruitCont(
                        title: "Meyveler",
                        text2: lorem(paragraphs: 2, words: 75),
                        ImagePath: "myassets/png/yabanmersini.jpg",
                        bgcolor: Color.fromARGB(255, 81, 112, 233)),
                    Divider()
                  ],
                ),
              )
            ],
          )),
    );
  }
}
