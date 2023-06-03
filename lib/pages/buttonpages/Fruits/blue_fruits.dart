import 'package:dietdemo/data/blue_fruits.dart';
import 'package:dietdemo/models/blue_fruits/blue_fruits_model.dart';
import 'package:flutter/material.dart';

class BlueFruits extends StatefulWidget {
  const BlueFruits({super.key});

  @override
  State<BlueFruits> createState() => _BlueFruitsState();
}

class _BlueFruitsState extends State<BlueFruits> {
  late List<BlueFruitsModel> fruits;

  List<Color> colors = [
    const Color.fromARGB(160, 107, 71, 250),
    const Color.fromARGB(255, 180, 81, 233),
    const Color.fromARGB(160, 107, 71, 250),
    const Color.fromARGB(159, 208, 59, 245),
    const Color.fromARGB(159, 43, 180, 109),
    const Color.fromARGB(159, 64, 175, 255),
  ];

  @override
  void initState() {
    fruits = BLUE_FRUITS_DATA.map((e) => BlueFruitsModel.fromJson(e)).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("5 Lezzetli Mavi Meyve"),
      ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Mavi meyveler canlı renklerini polifenol adı verilen faydalı bitki bileşiklerinden alır. Özellikle, mavi tonlar veren bir polifenol grubu olan antosiyaninler bakımından zengindirler. Bununla birlikte, bu bileşikler renkten daha fazlasını sağlar. Araştırmalar, antosiyaninlerde yüksek diyetlerin kalp sağlığını iyileştirebileceğini ve obezite, tip 2 diyabet, belirli kanserler ve diğer hastalıklara yakalanma riskinizi azaltabileceğini gösteriyor. İşte güçlü sağlık yararları olan 5 lezzetli mavi meyve.",
                      style: TextStyle(color: Colors.black),
                    ),
                    const Divider(),

                    for (int i = 0; i < fruits.length; i++) ...[
                      FruitCont(
                        title: fruits[i].title!,
                        bgcolor: colors[i],
                        text2: fruits[i].content!,
                        imagePath: fruits[i].image!,
                      ),
                      const SizedBox(height: 20)
                    ]

                    // FruitCont(
                    //     title: "Yaban Mersini",
                    //     text2: lorem(paragraphs: 2, words: 75),
                    //     ImagePath: "myassets/png/yabanmersini.jpg",
                    //     bgcolor: const Color.fromARGB(255, 180, 81, 233)),
                    // const Divider(),
                    // FruitCont(
                    //     title: "Böğürtlen",
                    //     bgcolor: const Color.fromARGB(160, 107, 71, 250),
                    //     text2: lorem(paragraphs: 2, words: 75),
                    //     ImagePath: "myassets/png/bogurtlen.jpg"),
                    // const Divider(),
                    // FruitCont(
                    //     title: "Mürver Ağacı Meyvesi",
                    //     bgcolor: const Color.fromARGB(159, 208, 59, 245),
                    //     text2: lorem(paragraphs: 2, words: 75),
                    //     ImagePath: "myassets/png/murver.jpg"),
                    // const Divider(),
                    // FruitCont(
                    //     title: "Concard Üzümleri",
                    //     bgcolor: const Color.fromARGB(159, 43, 180, 109),
                    //     text2: lorem(paragraphs: 2, words: 75),
                    //     ImagePath: "myassets/png/concord.jpg"),
                    // const Divider(),
                    // FruitCont(
                    //     title: "Mavi Domates",
                    //     bgcolor: const Color.fromARGB(159, 64, 175, 255),
                    //     text2: lorem(paragraphs: 2, words: 75),
                    //     ImagePath: "myassets/png/mavidom.jpg"),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class FruitCont extends StatelessWidget {
  const FruitCont({
    Key? key,
    required this.title,
    required this.bgcolor,
    required this.text2,
    required this.imagePath,
  }) : super(key: key);

  final String title;
  final Color bgcolor;
  final String text2;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: bgcolor, borderRadius: const BorderRadius.all(Radius.circular(50))),
      width: 400,
      height: MediaQuery.of(context).size.height * 0.8,
      //color: Color.fromARGB(255, 143, 149, 211),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20),
            ),
            const Divider(),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: 250,
                width: 300,
              ),
            ),
            const Divider(),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(text2),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
