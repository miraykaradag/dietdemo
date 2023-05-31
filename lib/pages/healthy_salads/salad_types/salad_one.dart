import 'package:dietdemo/pages/buttonpages/Vegetables/Vegetables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../detox_waters/detox_waters_type/detox_waters_one.dart';

class SaladOne extends StatefulWidget {
  const SaladOne({super.key});

  @override
  State<SaladOne> createState() => _SaladOne();
}

class _SaladOne extends State<SaladOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const ListViewFoods(
          headertext: "Mercimekli Semizotu Salatası ",
          imagepath: "myassets/png/mercimekli.jpg",
        ),
      ),
    );
  }
}
