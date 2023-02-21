import 'package:dietdemo/pages/buttonpages/Vegetables.dart';
import 'package:flutter/material.dart';

import 'HealthySalad.dart';

class DetoxWaters extends StatefulWidget {
  const DetoxWaters({super.key});

  @override
  State<DetoxWaters> createState() => _DetoxWatersState();
}

class _DetoxWatersState extends State<DetoxWaters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListViewFoods(
              headertext: "Detox Waters",
              imagepath: "myassets/png/detoxwatersr.png",
            ),
          ),
        ],
      ),
    );
  }
}
