import 'package:dietdemo/models/detoks/detoks_model.dart';
import 'package:flutter/material.dart';

import '../buttonpages/Vegetables/Vegetables.dart';

class ListViewDetoks extends StatelessWidget {
  const ListViewDetoks({
    Key? key,
    required this.model,
  }) : super(key: key);

  final DetoksModel model;
  /*final IconData iconData;*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Column(children: [
              const CloseIconButton(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    model.image!,
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
                      model.title!,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 158, 57, 57),
                          fontSize: 22),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("İçindekiler",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 158, 57, 57),
                                  fontSize: 20)),
                          const Divider(),
                          Text(model.malzemeler!,
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.black)),
                          const SizedBox(height: 50),
                          Text(model.content!,
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.black)),
                          const SizedBox(height: 70),
                          Text(model.tarifKSm ?? '',
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.black)),
                          const SizedBox(height: 70),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
