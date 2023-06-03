import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class FiveFruit extends StatefulWidget {
  const FiveFruit({super.key});

  @override
  State<FiveFruit> createState() => _FiveFruitState();
}

class _FiveFruitState extends State<FiveFruit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("5 Lezzetli Mavi Meyve"),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Mavi meyveler canlı renklerini polifenol adı verilen faydalı bitki bileşiklerinden alır. Özellikle, mavi tonlar veren bir polifenol grubu olan antosiyaninler bakımından zengindirler. Bununla birlikte, bu bileşikler renkten daha fazlasını sağlar. Araştırmalar, antosiyaninlerde yüksek diyetlerin kalp sağlığını iyileştirebileceğini ve obezite, tip 2 diyabet, belirli kanserler ve diğer hastalıklara yakalanma riskinizi azaltabileceğini gösteriyor. İşte güçlü sağlık yararları olan 5 lezzetli mavi meyve.",
                      style: TextStyle(color: Colors.black),
                    ),
                    Divider(),
                    FruitCont(
                        title: "Yaban Mersini",
                        text2: lorem(paragraphs: 2, words: 75),
                        ImagePath: "myassets/png/yabanmersini.jpg",
                        bgcolor: Color.fromARGB(255, 180, 81, 233)),
                    Divider(),
                    FruitCont(
                        title: "Böğürtlen",
                        bgcolor: Color.fromARGB(160, 107, 71, 250),
                        text2: lorem(paragraphs: 2, words: 75),
                        ImagePath: "myassets/png/bogurtlen.jpg"),
                    Divider(),
                    FruitCont(
                        title: "Mürver Ağacı Meyvesi",
                        bgcolor: Color.fromARGB(159, 208, 59, 245),
                        text2: lorem(paragraphs: 2, words: 75),
                        ImagePath: "myassets/png/murver.jpg"),
                    Divider(),
                    FruitCont(
                        title: "Concard Üzümleri",
                        bgcolor: Color.fromARGB(159, 43, 180, 109),
                        text2: lorem(paragraphs: 2, words: 75),
                        ImagePath: "myassets/png/concord.jpg"),
                    Divider(),
                    FruitCont(
                        title: "Mavi Domates",
                        bgcolor: Color.fromARGB(159, 64, 175, 255),
                        text2: lorem(paragraphs: 2, words: 75),
                        ImagePath: "myassets/png/mavidom.jpg"),
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
    required this.ImagePath,
  }) : super(key: key);

  final String title;
  final Color bgcolor;
  final String text2;
  final String ImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgcolor, borderRadius: BorderRadius.all(Radius.circular(50))),
      width: 400,
      height: MediaQuery.of(context).size.height * 0.7,
      //color: Color.fromARGB(255, 143, 149, 211),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
            Divider(),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                ImagePath,
                fit: BoxFit.cover,
                height: 250,
                width: 300,
              ),
            ),
            Divider(),
            Text(text2)
          ],
        ),
      ),
    );
  }
}
