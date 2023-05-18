import 'package:dietdemo/pages/buttonpages/Vegetables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class HealthySalad extends StatefulWidget {
  const HealthySalad({super.key});

  @override
  State<HealthySalad> createState() => _HealthySaladState();
}

class _HealthySaladState extends State<HealthySalad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const ListViewFoods(
          headertext: "Healthy Salad",
          imagepath: "myassets/png/saladreel.png",
        ),
      ),
    );
  }
}

class ListViewFoods extends StatelessWidget {
  const ListViewFoods({
    Key? key,
    required this.imagepath,
    required this.headertext,
  }) : super(key: key);

  final String imagepath;
  final String headertext;
  /*final IconData iconData;*/

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(children: [
        const CloseIconButton(),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(70.0),
            child: Image.asset(
              imagepath,
              fit: BoxFit.cover,
              height: 270,
              width: 300,
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                headertext,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.black),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: [
                    Text("Ingredients", style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black)),
                    const Divider(),
                    Text(
                        lorem(
                          paragraphs: 1,
                          words: 2,
                        ),
                        style: const TextStyle(fontSize: 15, color: Colors.black)),
                    Text(lorem(paragraphs: 1, words: 2), style: const TextStyle(fontSize: 15, color: Colors.black)),
                    Text(lorem(paragraphs: 1, words: 2), style: const TextStyle(fontSize: 15, color: Colors.black)),
                    const Divider(),
                    Text(
                        lorem(
                          paragraphs: 3,
                          words: 150,
                        ),
                        style: const TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
            )
          ],
        ),
      ]),
    ]);
  }
}
