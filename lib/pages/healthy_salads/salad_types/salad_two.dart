import 'package:dietdemo/pages/buttonpages/Vegetables/Vegetables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../detox_waters/detox_waters_type/detox_waters_one.dart';

class SaladTwo extends StatefulWidget {
  const SaladTwo({super.key});

  @override
  State<SaladTwo> createState() => _SaladTwo();
}

class _SaladTwo extends State<SaladTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const ListViewFoods(
          headertext: "Ton Balıklı Fit Makarna Salatası",
          imagepath: "myassets/png/ton_balıklı.jpg",
        ),
      ),
    );
  }
}
