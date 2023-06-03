import 'package:dietdemo/data/diet.dart';
import 'package:dietdemo/models/diet/diet_model.dart';
import 'package:dietdemo/pages/buttonpages/Fruits/third_dard.dart';
import 'package:flutter/material.dart';

class DietPage extends StatefulWidget {
  const DietPage({super.key});

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  late List<DietModel> dietList;

  @override
  void initState() {
    dietList = DIET_DATA.map((e) => DietModel.fromJson(e)).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
            backgroundColor: const Color.fromARGB(255, 90, 199, 94),
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
        child: ListView.separated(
          itemBuilder: (context, index) {
            return DietTypes(
              baslik: "${index + 1}-${dietList[index].title}",
              dietType: dietList[index].title!.split(' ')[0],
              imagePath: "${dietList[index].image}",
              content: "${dietList[index].content}",
              breakfast: dietList[index].breakfast!,
              dinner: dietList[index].dinner!,
              launch: dietList[index].launch!,
            );
          },
          separatorBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 3),
            child: Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
          ),
          itemCount: dietList.length,
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
    required this.content,
    required this.breakfast,
    required this.dinner,
    required this.launch,
  }) : super(key: key);

  final String baslik;
  final String content;
  final String imagePath;
  final String dietType;
  final String breakfast;
  final String dinner;
  final String launch;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Baslik(title: baslik),
        const SizedBox(
          height: 20,
        ),
        Text(
          content,
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
        const Divider(),
        Text(
          "Örnek $dietType Beslenme Paketi Menüsü",
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Ogunler(
              title: "Kahvaltı",
              content: breakfast,
            ),
            const SizedBox(
              width: 2,
            ),
            Ogunler(
              title: "Öğle",
              content: launch,
            ),
            const SizedBox(
              width: 2,
            ),
            Ogunler(
              title: "Akşam",
              content: dinner,
            ),
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
    required this.content,
  }) : super(key: key);

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 200,
      color: Colors.green,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(title),
          const SizedBox(height: 10),
          Expanded(child: SingleChildScrollView(child: Text(content))),
        ],
      ),
    );
  }
}
