import 'package:dietdemo/pages/buttonpages/Vegetables/%C4%B1spanak.dart';
import 'package:dietdemo/pages/buttonpages/Vegetables/brokoli.dart';
import 'package:dietdemo/pages/buttonpages/Vegetables/bruksel.dart';
import 'package:dietdemo/pages/buttonpages/Vegetables/havuc.dart';
import 'package:dietdemo/pages/buttonpages/Vegetables/kara_lahana.dart';
import 'package:dietdemo/pages/buttonpages/Vegetables/karnabahar.dart';
import 'package:dietdemo/pages/buttonpages/Vegetables/kirmizi_lahana.dart';
import 'package:dietdemo/pages/buttonpages/Vegetables/patates.dart';
import 'package:dietdemo/pages/buttonpages/Vegetables/pazi.dart';
import 'package:dietdemo/pages/buttonpages/Vegetables/sarimsak.dart';
import 'package:dietdemo/pages/buttonpages/Vegetables/yesilfas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../detox_waters/detox_waters_type/detox_waters_one.dart';

class VegetablesPages extends StatefulWidget {
  const VegetablesPages({super.key});

  @override
  State<VegetablesPages> createState() => _VegetablesPagesState();
}

class _VegetablesPagesState extends State<VegetablesPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: ListView(
                children: [
                  CloseIconButton(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Besleyici 12 Sebze",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                  ),
                  Divider(),
                  EatCards(
                      color: Color.fromARGB(255, 222, 163, 197),
                      text: "Pazı",
                      imagePath: "myassets/png/chards.png",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Pazi()),
                        );
                      }),
                  EatCards(
                      color: Color.fromARGB(255, 175, 145, 181),
                      text: "Kırmızı Lahana",
                      imagePath: "myassets/png/redcabbage.png",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const KirmiziLahana()),
                        );
                      }),
                  EatCards(
                      color: Color.fromARGB(255, 237, 242, 203),
                      text: "Patates",
                      imagePath: "myassets/png/sweetpatatoes.png",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Patates()),
                        );
                      }),
                  EatCards(
                      color: Color.fromARGB(255, 219, 208, 191),
                      text: "Kara Lahana",
                      imagePath: "myassets/png/collardgreen.png",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const KaraLahana()),
                        );
                      }),
                  EatCards(
                      color: Color.fromARGB(255, 84, 131, 84),
                      text: "Ispanak",
                      imagePath: "myassets/png/spinach.png",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Ispanak()),
                        );
                      }),
                  EatCards(
                      color: Color.fromARGB(255, 226, 233, 219),
                      text: "Sarımsak",
                      imagePath: "myassets/png/garlic.png",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Sarimsak()),
                        );
                      }),
                  EatCards(
                      color: Color.fromARGB(255, 126, 206, 137),
                      text: "Brokoli",
                      imagePath: "myassets/png/brocoli.png",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Brokoli()),
                        );
                      }),
                  EatCards(
                      color: Color.fromARGB(255, 248, 191, 99),
                      text: "Havuç",
                      imagePath: "myassets/png/carrots.png",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Havuc()),
                        );
                      }),
                  EatCards(
                    color: Color.fromARGB(255, 100, 204, 149),
                    text: "Brüksel Lahanası",
                    imagePath: "myassets/png/brussels.png",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Brussel()),
                      );
                    },
                  ),
                  EatCards(
                    color: Color.fromARGB(255, 174, 223, 151),
                    text: "Yeşil Fasulye",
                    imagePath: "myassets/png/greenpea.png",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const YesilFas()),
                      );
                    },
                  ),
                  EatCards(
                      color: Color.fromARGB(255, 121, 143, 114),
                      text: "Karnabahar",
                      imagePath: "myassets/png/spinach.png",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Karnabahar()),
                        );
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CloseIconButton extends StatelessWidget {
  const CloseIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.close),
      color: Colors.black,
    );
  }
}

class EatCards extends StatelessWidget {
  const EatCards({
    Key? key,
    required this.color,
    required this.text,
    required this.imagePath,
    required this.onTap,
  }) : super(key: key);

  final Color color;
  final String text;
  final String imagePath;
  final Function onTap; // Yeni fonksiyon parametresi

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), side: const BorderSide(color: Color.fromARGB(255, 242, 224, 224))),
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          onTap: () {
            onTap();
          },
          contentPadding: EdgeInsets.zero,
          title: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black),
            ),
          ),
          leading: Image(image: AssetImage(imagePath)),
          trailing: const SizedBox(
            width: 20,
            child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                    width: 20,
                    child: Icon(
                      Icons.chevron_right,
                      color: Colors.black,
                    ))),
          ),
        ),
      ),
    );
  }
}
