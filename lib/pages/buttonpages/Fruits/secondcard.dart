import 'package:dietdemo/pages/buttonpages/Fruits/first_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class UniqueFruit extends StatefulWidget {
  const UniqueFruit({super.key});

  @override
  State<UniqueFruit> createState() => _UniqueFruitState();
}

class _UniqueFruitState extends State<UniqueFruit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                  lorem(paragraphs: 2, words: 75),
                  style: TextStyle(color: Colors.black),
                ),
                Divider(),
                FruitCont(
                    title: "İşte Denemeniz İçin 15 Eşsiz Meyve",
                    bgcolor: Colors.pink,
                    text2: "Meyveler buraya gelcek, hepsinin yanına bir resim alanı bırakabilir miyiz?",
                    ImagePath: "myassets/png/yabanmersini.jpg")
              ],
            ),
          )
        ],
      ),
    );
  }
}
