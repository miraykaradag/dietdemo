import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class ExtansionCardClass extends StatelessWidget {
  String text1 =
      "65 gram basmati pirinç, 320 gram normal patates,  250 gram tatlı patates,";
  String text2 =
      "8 adet yumurta beyazı,   120 gram hindi göğüs eti, 120 gram tavuk göğüs eti, 120 gram balık eti,               120 gram süzülmüş ton balığı, ";
  String text3 = "";
  String text4 = "";

  ExtansionCardClass({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 90, 199, 94),
            title: const Text(
              'Bilgi Kutusu',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 253, 253),
                fontWeight: FontWeight.w500,
                fontSize: 28,
              ),
            ),
          )),
      body: ListView(
        children: [
          // Expansion Card Fonksiyonu
          CardPlus(
              "1 öğünde 50 gram karbonhidrat almak için hangi besinleri ne kadar tüketebilirim?",
              "salad",
              text1),
          CardPlus(
              "1 öğünde 20-30 gram protein almak için hangi besinleri ne kadar tüketebilirim?",
              "vegetables",
              text2),
          CardPlus("", "saladreel", text3),
          CardPlus("", "kale", text4),
        ],
      ),
    );
  }

  CardPlus(String title, String logo, String hakkinda) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ExpansionTileCard(
        borderRadius: BorderRadius.circular(50.0),
        expandedColor: const Color.fromARGB(255, 255, 255, 255),
        baseColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 15,
        initialElevation: 35,

        shadowColor: Colors.black,

        title: Text(
          title,
          style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
        ),
        subtitle: const Text(
          " ",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        leading: Image.asset(
          "myassets/png/$logo.png",
          height: 30,
        ),
        trailing: const Icon(
          Icons.add,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        //Açıldığında alt tarafta çıkacak torun Widgetlar
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 80, left: 80),
                  child: Text(
                    hakkinda,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
