import 'dart:math';

import 'package:dietdemo/data/info.dart';
import 'package:dietdemo/models/info/info_model.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class ExtansionCardClass extends StatefulWidget {
  const ExtansionCardClass({super.key});

  @override
  State<ExtansionCardClass> createState() => _ExtansionCardClassState();
}

class _ExtansionCardClassState extends State<ExtansionCardClass> {
  String text1 =
      "65 gram basmati pirinç, 320 gram normal patates,  250 gram tatlı patates,";

  String text2 =
      "8 adet yumurta beyazı,   120 gram hindi göğüs eti, 120 gram tavuk göğüs eti, 120 gram balık eti,               120 gram süzülmüş ton balığı, ";

  String text3 = "";

  String text4 = "";

  late List<InfoModel> infos;

  @override
  void initState() {
    infos = INFO_DATA.map((e) => InfoModel.fromJson(e)).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 90, 199, 94),
            title: const Text(
              'Bilgi Kutusu',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 253, 253),
                fontWeight: FontWeight.w500,
                fontSize: 28,
              ),
            ),
          )),
      body: ListView(
          children: infos.map((e) => cardPlus(e.title!, e.content!)).toList()),
    );
  }

  Widget cardPlus(String title, String hakkinda) {
    final random = Random().nextInt(4);

    final logo = random % 3 == 0
        ? 'kale'
        : random % 3 == 1
            ? 'saladreel'
            : 'vegetables';

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ExpansionTileCard(
        borderRadius: BorderRadius.circular(50.0),
        expandedColor: const Color.fromARGB(255, 255, 255, 255),
        baseColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 15,
        initialElevation: 35,
        shadowColor: Colors.black,

        title: Text(
          title,
          style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
        ),
        subtitle: const Text(
          " ",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        leading: Image.asset(
          "myassets/png/$logo.png",
          height: 30,
        ),
        trailing: const Icon(
          Icons.add,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        //Açıldığında alt tarafta çıkacak torun Widgetlar
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 80, left: 80),
                  child: Text(
                    hakkinda,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
