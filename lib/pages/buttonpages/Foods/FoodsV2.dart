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
      appBar: AppBar(
          title: Text(
        "Sık Yenilen FastFoodlar",
      )),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ListView(
            children: const [
              FoodCards(
                imagePath: "myassets/png/spaghetti.png",
                cardColor: Color.fromARGB(255, 251, 186, 111),
                CaPercent: 0.27,
                FatPercent: 0.0084,
                PrPercent: 0.05,
                CaText: "27.53  gr",
                FatText: "0.84 gr",
                PrText: "5.22 gr",
                foodText: "Makarna ",
                totalCal: "141 kcal",
              ),
              FoodCards(
                imagePath: "myassets/png/tavuk_doner.jpg",
                cardColor: Color.fromARGB(255, 245, 241, 184),
                CaPercent: 0.05,
                FatPercent: 0.16,
                PrPercent: 0.17,
                CaText: " 6 gr",
                FatText: "16 gr",
                PrText: "17 gr",
                foodText: "Tavuk Döner",
                totalCal: "149 kcal",
              ),
              FoodCards(
                imagePath: "myassets/png/big_mac.jpg",
                cardColor: Color.fromARGB(255, 240, 210, 210),
                CaPercent: 0.43,
                FatPercent: 0.22,
                PrPercent: 0.28,
                CaText: "43  gr",
                FatText: "22 gr",
                PrText: "28   gr",
                foodText: " McDonald's Big Mac",
                totalCal: "479 kcal",
              ),
              FoodCards(
                imagePath: "myassets/png/lahmacun.jpg",
                cardColor: Color.fromARGB(255, 201, 232, 248),
                CaPercent: 0.26,
                FatPercent: 0.04,
                PrPercent: 0.08,
                CaText: "26 gr",
                FatText: "4.44 gr",
                PrText: "8 gr",
                foodText: "Lahmacun",
                totalCal: "176 kcal",
              ),
              FoodCards(
                imagePath: "myassets/png/patateskızartma.jpg",
                cardColor: Color.fromARGB(255, 246, 204, 233),
                CaPercent: 0.37,
                FatPercent: 0.13,
                PrPercent: 0.03,
                CaText: "37 gr",
                FatText: "13 gr",
                PrText: "3.09 gr",
                foodText: "Patates Kızartması",
                totalCal: "281 kcal",
              ),
              FoodCards(
                imagePath: "myassets/png/kokoreç.jpg",
                cardColor: Color.fromARGB(255, 146, 113, 174),
                CaPercent: 0.69,
                FatPercent: 0.03,
                PrPercent: 0.28,
                CaText: "69 gr",
                FatText: "3.93 gr",
                PrText: "28 gr",
                foodText: "Yarım Ekmek Kokoreç",
                totalCal: "431 kcal",
              ),
              FoodCards(
                imagePath: "myassets/png/et_doner.jpg",
                cardColor: Color.fromARGB(255, 141, 205, 172),
                CaPercent: 0.2,
                FatPercent: 0.5,
                PrPercent: 0.3,
                CaText: "20 gr",
                FatText: "47 gr",
                PrText: "30 gr",
                foodText: "Et Döner Dürüm",
                totalCal: "298  kcal",
              ),
              FoodCards(
                imagePath: "myassets/png/pizza.jpg",
                cardColor: Color.fromARGB(255, 255, 94, 105),
                CaPercent: 0.56,
                FatPercent: 0.8,
                PrPercent: 0.53,
                CaText: "56.44  gr",
                FatText: "8.02 gr",
                PrText: "53 gr",
                foodText: "Pizza Karışık (185 gr)",
                totalCal: "344 kcal",
              ),
              FoodCards(
                imagePath: "myassets/png/sebzelipizza.jpg",
                cardColor: Color.fromARGB(255, 209, 111, 251),
                CaPercent: 0.8,
                FatPercent: 0.13,
                PrPercent: 0.26,
                CaText: "82  gr",
                FatText: "13 gr",
                PrText: "26  gr",
                foodText: "Sebzeli Pizza (439 gr) ",
                totalCal: "527 kcal",
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
                          "Karbonhidrat",
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
                          "Yağ",
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
