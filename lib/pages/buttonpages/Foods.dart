import 'package:flutter/material.dart';

class FoodsCalories extends StatefulWidget {
  const FoodsCalories({super.key});

  @override
  State<FoodsCalories> createState() => _FoodsCaloriesState();
}

class _FoodsCaloriesState extends State<FoodsCalories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: const [
              FoodCards(
                cardBg: Color.fromARGB(255, 180, 250, 207),
                cardImage: "myassets/png/spaghetti.png",
                cardText: "Spaghetti",
                value: 25 / 100,
                oranC: 30 / 100,
                oranF: 15 / 100,
                oranP: 48 / 100,
                totalCal: "100 kcal",
              ),
              FoodCards(
                cardBg: Color.fromARGB(255, 255, 179, 237),
                cardImage: "myassets/png/spaghetti.png",
                cardText: "Chicken Picatta",
                value: 50 / 100,
                oranC: 30 / 100,
                oranF: 56 / 100,
                oranP: 74 / 100,
                totalCal: "530 kcal",
              ),
              FoodCards(
                cardBg: Color.fromARGB(255, 162, 211, 239),
                cardImage: "myassets/png/spaghetti.png",
                cardText: "House Salad",
                value: 25 / 100,
                oranC: 30 / 100,
                oranF: 13 / 100,
                oranP: 5 / 100,
                totalCal: "350 kcal",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FoodCards extends StatelessWidget {
  const FoodCards({
    Key? key,
    required this.cardBg,
    required this.cardText,
    required this.cardImage,
    required this.value,
    required this.totalCal,
    required this.oranC,
    required this.oranF,
    required this.oranP,
  }) : super(key: key);

  final Color cardBg;
  final String cardText;
  final String cardImage;
  final double value;
  final double oranC;
  final double oranF;
  final double oranP;

  final String totalCal;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardBg,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  cardImage,
                  // "myassets/png/spaghetti.png",
                  fit: BoxFit.cover,
                  height: 120,
                  width: 120,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              color: Color.fromARGB(255, 169, 162, 162),
            ),
            Text(
              cardText,
              style: const TextStyle(color: Colors.black, fontSize: 25),
            ),
            const Divider(
              color: Color.fromARGB(255, 169, 162, 162),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "DETAILS PER SERVING",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const TextServing(
              text: "Calories",
            ),
            Calories(color: Colors.pink, bgcolor: Colors.pink.shade100, oran: oranC, value: value.toString()),
            const TextServing(
              text: "Fat",
            ),
            Calories(
              color: Colors.blue,
              bgcolor: Colors.blue.shade100,
              oran: oranF,
              value: value.toString(),
            ),
            const TextServing(
              text: "Protein",
            ),
            Calories(
              color: Colors.green,
              bgcolor: const Color.fromARGB(255, 176, 223, 178),
              oran: oranP,
              value: value.toString(),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              width: 400,
              height: 50,
              color: const Color.fromARGB(255, 114, 199, 131),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [const Text("Total Calories"), Text(totalCal)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextServing extends StatelessWidget {
  const TextServing({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
    );
  }
}

class Calories extends StatelessWidget {
  const Calories({
    Key? key,
    required this.bgcolor,
    required this.color,
    required this.oran,
    required this.value,
  }) : super(key: key);

  final Color bgcolor;
  final Color color;
  final double oran;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 10,
              child: LinearProgressIndicator(
                value: oran, //current / max

                backgroundColor: bgcolor,
                color: color,
              ),
            ),
          ),
        ),
        Text(
          value,
          style: const TextStyle(color: Colors.black),
        )
      ],
    );
  }
}
