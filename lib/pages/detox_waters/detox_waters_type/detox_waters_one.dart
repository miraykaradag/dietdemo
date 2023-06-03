import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../buttonpages/Vegetables/Vegetables.dart';

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
            child: const ListViewFoods(
              headertext: "Detox Waters",
              imagepath: "myassets/png/detoxwatersr.png",
            ),
          ),
        ],
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
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              imagepath,
              fit: BoxFit.cover,
              height: 250,
              width: 340,
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                headertext,
                style: TextStyle(
                    color: Color.fromARGB(255, 158, 57, 57), fontSize: 22),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: [
                    Text("İçindekiler",
                        style: TextStyle(
                            color: Color.fromARGB(255, 158, 57, 57),
                            fontSize: 20)),
                    const Divider(),
                    Text(
                        lorem(
                          paragraphs: 1,
                          words: 2,
                        ),
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black)),
                    Text(lorem(paragraphs: 1, words: 2),
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black)),
                    Text(lorem(paragraphs: 1, words: 2),
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black)),
                    const Divider(),
                    Text(
                        lorem(
                          paragraphs: 3,
                          words: 150,
                        ),
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black))
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
