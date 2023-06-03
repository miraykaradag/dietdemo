import 'package:dietdemo/pages/buttonpages/Fruits/first_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class UniqueFruit extends StatefulWidget {
  const UniqueFruit({super.key});

  @override
  State<UniqueFruit> createState() => _UniqueFruitState();
}

class _UniqueFruitState extends State<UniqueFruit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                  "Her meyve severin favorileri vardır. Muz, elma ve kavun dünya çapında popüler seçeneklerdir ve neredeyse her yerden satın alınabilir.Bazı insanlar her gün aynı meyveleri yemekten mutlu olsalar da, siz biraz daha çeşitlilik isteyebilirsiniz.İlginç bir şekilde, dünyanın her yerinde, bazılarının adını hiç duymamış olabileceğiniz binlerce meyve yetişiyor.İşte denemek için 10 eşsiz ve besleyici meyve.",
                  style: TextStyle(color: Colors.black),
                ),
                Divider(),
                FruitCont(
                    title: "İşte Denemeniz İçin 10 Eşsiz Meyve",
                    bgcolor: Colors.pink,
                    text2: "",
                    ImagePath: "myassets/png/yabanmersini.jpg")
              ],
            ),
          )
        ],
      ),
    );
  }
}
