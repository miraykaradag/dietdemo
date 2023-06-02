import 'package:dietdemo/pages/buttonpages/Vegetables/pazi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class Brussel extends StatefulWidget {
  const Brussel({super.key});

  @override
  State<Brussel> createState() => _BrusselState();
}

class _BrusselState extends State<Brussel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
            backgroundColor: Color.fromARGB(255, 90, 199, 94),
            centerTitle: true,
            title: const Text(
              'Brüksel Lahanası',
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
      body: VegetablesInfo(
        imagePath: "myassets/png/bruksellahana.jpg",
        text: lorem(paragraphs: 3, words: 100),
      ),
    );
  }
}
