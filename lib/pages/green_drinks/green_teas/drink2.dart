import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../buttonpages/Vegetables/Vegetables.dart';
import '../../detox_waters/detox_waters_type/detox_waters_one.dart';

class GreenTeaTwo extends StatefulWidget {
  const GreenTeaTwo({super.key});

  @override
  State<GreenTeaTwo> createState() => _GreenTeaTwoState();
}

class _GreenTeaTwoState extends State<GreenTeaTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const ListViewFoods(
          headertext: "Salatalık, Limon ve Nane Detoksu",
          imagepath: "myassets/png/salatalık_limon.jpg",
        ),
      ),
    );
  }
}
