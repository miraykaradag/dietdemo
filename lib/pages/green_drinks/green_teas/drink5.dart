import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../buttonpages/Vegetables/Vegetables.dart';
import '../../detox_waters/detox_waters_type/detox_waters_one.dart';

class GreenTeaFive extends StatefulWidget {
  const GreenTeaFive({super.key});

  @override
  State<GreenTeaFive> createState() => _GreenTeaFiveState();
}

class _GreenTeaFiveState extends State<GreenTeaFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const ListViewFoods(
          headertext: "Elmalı Detox Suyu",
          imagepath: "myassets/png/elmali.jpg",
        ),
      ),
    );
  }
}
