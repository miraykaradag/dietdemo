import 'package:flutter/material.dart';

class DietTypes extends StatefulWidget {
  const DietTypes({super.key});

  @override
  State<DietTypes> createState() => _DietTypesState();
}

class _DietTypesState extends State<DietTypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
              // FruitCards(color: Colors.green,imagepath: "",onTap: (){},text: "",)
              ),
        ),
      ]),
    );
  }
}
