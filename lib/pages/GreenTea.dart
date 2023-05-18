import 'package:flutter/material.dart';

import 'HealthySalad.dart';

class GreenTea extends StatefulWidget {
  const GreenTea({super.key});

  @override
  State<GreenTea> createState() => _GreenTeaState();
}

class _GreenTeaState extends State<GreenTea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const ListViewFoods(
          headertext: "Green Tea",
          imagepath: "myassets/png/greentear.png",
        ),
      ),
    );
  }
}
