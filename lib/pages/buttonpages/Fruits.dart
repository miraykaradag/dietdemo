import 'package:dietdemo/pages/buttonpages/Vegetables.dart';
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
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: Column(
                children: const [
                  CloseIconButton(),
                  Text(
                    "Curious more about fruits? See these.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color.fromARGB(255, 94, 94, 94), fontSize: 30),
                  ),
                  FruitCards(
                      text: "7 Delicious Blue Fruits with Powerful Health Benefits",
                      imagepath: "myassets/png/blueberry.jpg",
                      color: Color.fromARGB(255, 147, 193, 230)),
                  FruitCards(
                    color: Color.fromARGB(255, 149, 111, 214),
                    imagepath: "myassets/png/kayisi.jpg",
                    text: "17 Unique and Nutritious Fruits",
                  ),
                  FruitCards(
                      color: Color.fromARGB(255, 198, 144, 144),
                      imagepath: "myassets/png/mix.jpg",
                      text: "13 of the Least Healthy Fruits: Sugar, Diabetes, and More"),
                  FruitCards(
                      text: "12 Beneficial Fruits to Eat During and After Cancer Treatment",
                      imagepath: "myassets/png/apples.jpg",
                      color: Color.fromARGB(199, 227, 183, 183)),
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
  }) : super(key: key);
  final String text;
  final String imagepath;
  final Color color;

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
          width: 400,
          height: 400,
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
                  style: const TextStyle(fontSize: 25),
                ),
                ListTile(
                  onTap: () {},
                  contentPadding: EdgeInsets.zero,
                  title: Text(lorem(paragraphs: 1, words: 15)),
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
