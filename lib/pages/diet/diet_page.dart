import 'package:dietdemo/pages/buttonpages/Fruits/third_dard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class DietPage extends StatefulWidget {
  const DietPage({super.key});

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
            backgroundColor: Color.fromARGB(255, 90, 199, 94),
            centerTitle: true,
            title: const Text(
              'Hangi Diyet Bana Göre?',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 253, 253),
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(200)),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: ListView(children: const [
            DietTypes(baslik: "1-Ketojenik Diyet", dietType: "Ketojenik", imagePath: "myassets/png/keto.jpg"),
            SizedBox(
              height: 20,
            ),
            DietTypes(
                baslik: "2- If Diyeti (ARALIKLI ORUÇ)", dietType: "If Diyeti", imagePath: "myassets/png/if_diyeti.jpg"),
            SizedBox(
              height: 20,
            ),
            DietTypes(baslik: "3- Paleo Diyeti", dietType: "Paleo Diyeti", imagePath: "myassets/png/paleo_diyeti.jpg"),
            SizedBox(
              height: 20,
            ),
            DietTypes(
                baslik: "4- Akdeniz Diyeti ", dietType: "Akdeniz Diyeti", imagePath: "myassets/png/akdeniz_diyeti.jpg"),
            SizedBox(
              height: 20,
            ),
            DietTypes(baslik: "5- Dash  Diyeti ", dietType: "Dash Diyeti", imagePath: "myassets/png/dash-diyeti.jpg"),
            SizedBox(
              height: 20,
            ),
            DietTypes(baslik: "7- Vegan Diyeti", dietType: "Vegan Diyeti", imagePath: "myassets/png/vegan.jpg"),
            SizedBox(
              height: 20,
            ),
            DietTypes(
                baslik: "8- Karatay Diyeti", dietType: "Karatay Diyeti", imagePath: "myassets/png/karatay_diyeti.jpg"),
            SizedBox(
              height: 20,
            ),
            //   DietTypes(baslik: "9- İsveç Diyeti", dietType: "İsveç Diyeti", imagePath: "myassets/png/isveç_diyeti.jpg"),
          ]),
        ),
      ),
    );
  }
}

class DietTypes extends StatelessWidget {
  const DietTypes({
    Key? key,
    required this.baslik,
    required this.imagePath,
    required this.dietType,
  }) : super(key: key);

  final String baslik;

  final String imagePath;
  final String dietType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Baslik(title: baslik),
        const SizedBox(
          height: 20,
        ),
        Text(
          lorem(paragraphs: 2, words: 50),
          style: const TextStyle(color: Colors.black),
        ),
        const SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: Image.asset(
            imagePath, // "myassets/png/keto.jpg",
            width: 350,
          ),
        ),
        Divider(),
        Text(
          "Örnek ${dietType} Beslenme Paketi Menüsü",
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
        Divider(),
        Row(
          children: const [
            Ogunler(
              title: "Kahvaltı",
              color: Colors.green,
            ),
            SizedBox(
              width: 2,
            ),
            Ogunler(
              title: "Öğle",
              color: Colors.green,
            ),
            SizedBox(
              width: 2,
            ),
            Ogunler(
              title: "Akşam",
              color: Color.fromARGB(255, 234, 208, 81),
            ),
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Ogunler(title: "1. Ara", color: Colors.green),
            SizedBox(
              width: 2,
            ),
            Ogunler(title: "2. Ara", color: Color.fromARGB(255, 250, 204, 139))
          ],
        ),
      ],
    );
  }
}

class Ogunler extends StatelessWidget {
  const Ogunler({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 150,
      color: Colors.green,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          )
        ],
      ),
    );
  }
}
