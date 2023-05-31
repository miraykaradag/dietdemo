import 'package:dietdemo/pages/buttonpages/Fruits/first_card.dart';
import 'package:dietdemo/pages/buttonpages/Fruits/secondcard.dart';
import 'package:dietdemo/pages/buttonpages/Fruits/third_dard.dart';
import 'package:dietdemo/pages/buttonpages/Vegetables/Vegetables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class FruitsInfo extends StatefulWidget {
  const FruitsInfo({super.key});

  @override
  State<FruitsInfo> createState() => _FruitsInfoState();
}

class _FruitsInfoState extends State<FruitsInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                children: [
                  CloseIconButton(),
                  Text(
                    "Meyveler hakkında daha fazla bilgi ister misin? Bunlara bak.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color.fromARGB(255, 94, 94, 94), fontSize: 25),
                  ),
                  FruitCards(
                      text: "Sağlığınız İçin Güçlü 5 Lezzetli Mavi Meyve",
                      imagepath: "myassets/png/blueberry.jpg",
                      color: Color.fromARGB(255, 147, 193, 230),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FiveFruit()),
                        );
                      }),
                  FruitCards(
                      color: Color.fromARGB(255, 198, 144, 144),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SugarFruits()),
                        );
                      },
                      imagepath: "myassets/png/mix.jpg",
                      text: "Sağlığınız İçin Risk Oluşturabilecek Meyveler: Şeker, Diyabet, ve fazlası"),
                  FruitCards(
                      color: Color.fromARGB(255, 149, 111, 214),
                      imagepath: "myassets/png/kayisi.jpg",
                      text: "10 Eşsiz ve Besleyici Meyve",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const UniqueFruit()),
                        );
                      }),
                  FruitCards(
                    text: "Kanser Sırası ve Sonrasında Tüketilebilecek 10 Yararlı Meyve",
                    imagepath: "myassets/png/apples.jpg",
                    color: Color.fromARGB(199, 227, 183, 183),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FiveFruit()),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FruitCards extends StatelessWidget {
  const FruitCards({
    Key? key,
    required this.text,
    required this.imagepath,
    required this.color,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final String imagepath;
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 50,
        color: color,
        child: SizedBox(
          width: 450,
          height: 350,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      imagepath,
                      fit: BoxFit.cover,
                      height: 150,
                      width: 300,
                    ),
                  ),
                ),
                const Divider(),
                Text(
                  text,
                  style: const TextStyle(fontSize: 22),
                ),
                ListTile(
                  onTap: () {
                    onTap();
                  },
                  contentPadding: EdgeInsets.zero,
                  title: Text(text),
                  trailing: const SizedBox(
                    width: 20,
                    child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            width: 20,
                            child: Icon(
                              Icons.chevron_right,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
