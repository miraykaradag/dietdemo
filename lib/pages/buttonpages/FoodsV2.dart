import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class FoodsView extends StatefulWidget {
  const FoodsView({super.key});

  @override
  State<FoodsView> createState() => _FoodsViewState();
}

class _FoodsViewState extends State<FoodsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ListView(
            children: const [
              CloseButton(
                color: Colors.black,
              ),
              FoodCards(
                imagePath: "myassets/png/steak.jpg",
                cardColor: Color.fromARGB(255, 245, 241, 184),
                CaPercent: 0.88,
                FatPercent: 0.85,
                PrPercent: 0.05,
                CaText: "88gr",
                FatText: "85 gr",
                PrText: "5 gr",
                foodText: "Steak Gorgonzola Alfredo",
                totalCal: "1,380 kcal",
              ),
              FoodCards(
                imagePath: "myassets/png/spaghetti.png",
                cardColor: Color.fromARGB(255, 240, 210, 210),
                CaPercent: 0.85,
                FatPercent: 0.88,
                PrPercent: 0.20,
                CaText: "85gr",
                FatText: "88 gr",
                PrText: "20 gr",
                foodText: " Spaghetti & Mariana",
                totalCal: "500 kcal",
              ),
              FoodCards(
                imagePath: "myassets/png/chicken.jpg",
                cardColor: Color.fromARGB(255, 201, 232, 248),
                CaPercent: 0.12,
                FatPercent: 0.26,
                PrPercent: 0.03,
                CaText: "12gr",
                FatText: "26 gr",
                PrText: "3 gr",
                foodText: "Chicken Picatta",
                totalCal: "530 kcal",
              ),
              FoodCards(
                imagePath: "myassets/png/cake.jpg",
                cardColor: Color.fromARGB(255, 246, 204, 233),
                CaPercent: 0.8,
                FatPercent: 0.4,
                PrPercent: 0.2,
                CaText: "38 gr",
                FatText: "22 gr",
                PrText: "10 gr",
                foodText: "Chocolate Mus Cake",
                totalCal: "330 kcal",
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
    required this.imagePath,
    required this.cardColor,
    required this.CaText,
    required this.FatText,
    required this.PrText,
    required this.CaPercent,
    required this.FatPercent,
    required this.PrPercent,
    required this.foodText,
    required this.totalCal,
  }) : super(key: key);

  final String imagePath;
  final Color cardColor;
  final String CaText;
  final String FatText;
  final String PrText;
  final double CaPercent;
  final double FatPercent;
  final double PrPercent;
  final String foodText;
  final String totalCal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
              Text(
                foodText,
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            imagePath,
                            //"myassets/png/spaghetti.png",
                            fit: BoxFit.cover,
                            height: 140,
                            width: 140,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        const Text(
                          "Carbohydrates",
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.left,
                        ),
                        Calories(
                          color: Colors.pink,
                          bgcolor: Colors.pink.shade100,
                          indText: CaText,
                          percent: CaPercent,
                        ),
                        const Text(
                          "Fat",
                          style: TextStyle(color: Colors.black),
                        ),
                        Calories(
                          color: Colors.blue,
                          bgcolor: Colors.blue.shade100,
                          indText: FatText,
                          percent: FatPercent,
                        ),
                        const Text(
                          "Protein",
                          style: TextStyle(color: Colors.black),
                        ),
                        Calories(
                          indText: PrText,
                          color: Colors.green,
                          bgcolor: Colors.green.shade100,
                          percent: PrPercent,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          width: 175,
                          height: 30,
                          color: const Color.fromARGB(255, 251, 127, 127),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text("Total Calories"),
                              Text(totalCal)
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Calories extends StatelessWidget {
  const Calories({
    Key? key,
    required this.color,
    required this.bgcolor,
    required this.indText,
    required this.percent,
  }) : super(key: key);
  final Color color;
  final Color bgcolor;
  final String indText;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: LinearPercentIndicator(
            width: MediaQuery.of(context).size.width - 200,
            animation: false,
            lineHeight: 15,
            animationDuration: 2500,
            percent: percent,
            center: Text(indText),
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: color,
            backgroundColor: bgcolor,
          ),
        ),
      ],
    );
  }
}
