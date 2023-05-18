import 'package:flutter/material.dart';

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
                children: const [
                  CloseIconButton(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "The 14 Most Nutrient-Dense Vegetables",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                  ),
                  Divider(),
                  EatCards(
                      color: Color.fromARGB(255, 222, 163, 197),
                      text: "Swiss Chards",
                      imagePath: "myassets/png/chards.png"),
                  EatCards(
                      color: Color.fromARGB(255, 184, 230, 181),
                      text: "Asparagus",
                      imagePath: "myassets/png/asparagus.png"),
                  EatCards(
                      color: Color.fromARGB(255, 175, 145, 181),
                      text: "Red cabbage",
                      imagePath: "myassets/png/redcabbage.png"),
                  EatCards(
                      color: Color.fromARGB(255, 237, 242, 203),
                      text: "Sweet potatoes",
                      imagePath: "myassets/png/sweetpatatoes.png"),
                  EatCards(
                      color: Color.fromARGB(255, 219, 208, 191),
                      text: "Collard greens",
                      imagePath: "myassets/png/collardgreen.png"),
                  EatCards(
                    color: Color.fromARGB(255, 84, 131, 84),
                    text: "Spinach",
                    imagePath: "myassets/png/spinach.png",
                  ),
                  EatCards(
                      color: Color.fromARGB(255, 226, 233, 219),
                      text: "Garlic",
                      imagePath: "myassets/png/garlic.png"),
                  EatCards(
                      color: Color.fromARGB(255, 126, 206, 137),
                      text: "Broccoli",
                      imagePath: "myassets/png/brocoli.png"),
                  EatCards(
                      color: Color.fromARGB(255, 248, 191, 99),
                      text: "Carrots",
                      imagePath: "myassets/png/carrots.png"),
                  EatCards(
                      color: Color.fromARGB(255, 100, 204, 149),
                      text: "Brussels Sprouts",
                      imagePath: "myassets/png/brussels.png"),
                  EatCards(
                      color: Color.fromARGB(255, 160, 192, 148),
                      text: "Kale",
                      imagePath: "myassets/png/kale.png"),
                  EatCards(
                      color: Color.fromARGB(255, 218, 188, 198),
                      text: "Beets",
                      imagePath: "myassets/png/beet.png"),
                  EatCards(
                      color: Color.fromARGB(255, 174, 223, 151),
                      text: "Green Peas",
                      imagePath: "myassets/png/greenpea.png"),
                  EatCards(
                      color: Color.fromARGB(255, 121, 143, 114),
                      text: "Cauliflower",
                      imagePath: "myassets/png/spinach.png"),
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
  }) : super(key: key);

  final Color color;
  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Color.fromARGB(255, 242, 224, 224))),
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          onTap: () {},
          contentPadding: EdgeInsets.zero,
          title: Center(
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.black),
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
