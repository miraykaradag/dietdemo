import 'package:dietdemo/data/healty_fruits.dart';
import 'package:dietdemo/models/healty_fruits/healty_fruits_model.dart';
import 'package:flutter/material.dart';

class SugarFruits extends StatefulWidget {
  const SugarFruits({super.key});

  @override
  State<SugarFruits> createState() => _SugarFruitsState();
}

class _SugarFruitsState extends State<SugarFruits> {
  late List<HealtyFruitsModel> healtyFruits;

  @override
  void initState() {
    healtyFruits =
        HEALTY_FRUITS.map((e) => HealtyFruitsModel.fromJson(e)).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sağlık Açısından Riskli Meyveler"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const Text(
                  "Lif, vitaminler, mineraller ve antioksidanlar açısından zengin olan taze meyve, çok yönlü bir diyete mükemmel bir katkı olabilir .Bununla birlikte, bazı meyve türleri diğerlerinden daha fazla şeker ve kalori içerir. Ayrıca, bazı meyveler diyabet ve asit reflü gibi sağlık sorunları olan kişilerde yan etkilere neden olabilir. Bu meyvelerin tadını çıkarmaya devam edebilirsiniz, ancak daha küçük porsiyon boyutlarında. \n Bu makale, şeker ve kalori bakımından en yüksek meyveler ile diyabet veya asit reflünüz varsa sınırlamanız gerekebilecek meyvelere daha yakından bakmaktadır.",
                  style: TextStyle(color: Colors.black),
                ),
                const Divider(height: 48, thickness: 1.2, color: Colors.black),
                const Baslik(
                  title: "1-3. Şeker Oranı En Yüksek",
                ),
                const SizedBox(height: 25),
                const Text(
                  "Hem taze hem de kurutulmuş bazı meyve türleri doğal şeker bakımından yüksektir. Karbonhidrat veya şeker alımınızı azaltmayı hedefliyorsanız, bunların tadını çıkarırken küçük miktarlara sadık kalın.",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                for (int i = 0; i < 3; i++) ...[
                  const Divider(),
                  Fruits(model: healtyFruits[i])
                ],
                const Divider(height: 48, thickness: 1.2, color: Colors.black),
                const Baslik(
                  title: "4-6. En Yüksek Kalorili",
                ),
                const SizedBox(height: 25),
                const Text(
                  "Birçok meyve türü kalori bakımından yüksektir. Besin açısından yoğun, çok yönlü bir diyetin parçası olarak tüketilebilseler de, kalori alımınızı azaltmaya veya kilo vermeye çalışıyorsanız porsiyon boyutlarınıza dikkat etmek isteyebilirsiniz.",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                const SizedBox(height: 50),
                for (int i = 4; i < 7; i++) ...[
                  const Divider(),
                  Fruits(model: healtyFruits[i])
                ],
                const SizedBox(height: 50),
                const Divider(height: 48, thickness: 1.2, color: Colors.black),
                const Baslik(
                  title: "7-9 Şeker Hastalığınız Varsa",
                ),
                const SizedBox(height: 50),
                const Text(
                  "Diyabetiniz varsa, sağlıklı kan şekeri düzeylerini desteklemek için bol miktarda lif açısından zengin, yoğun besleyici gıdalar yemeniz önemlidir .Bu arada, belirli meyve türleri de dahil olmak üzere lif oranı düşük ve ilave şeker oranı yüksek yiyecekler sınırlandırılmalıdır.",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                const SizedBox(height: 25),
                for (int i = 7; i < 10; i++) ...[
                  const Divider(),
                  Fruits(model: healtyFruits[i])
                ],
                const Divider(height: 48, thickness: 1.2, color: Colors.black),
                const Baslik(title: "10-12. Asit Refliniz var ise"),
                const SizedBox(height: 25),
                const Text(
                  "Mandalina gibi bazı meyveler, asit reflü olarak da bilinen gastroözofageal reflü hastalığı (GERD) olanlarda zarar verebilir .Bu meyvelerin son besleyici olmalarına ve süregelen bir diyete uymalarına rağmen, asit reflü zincirlerini tetiklediklerini farklı bir şekilde alımınızı sınırlamaları derece çalıştırır.",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                const Divider(),
                for (int i = 10; i < healtyFruits.length; i++) ...[
                  const Divider(),
                  Fruits(model: healtyFruits[i])
                ],
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Fruits extends StatelessWidget {
  const Fruits({
    Key? key,
    required this.model,
  }) : super(key: key);

  final HealtyFruitsModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 250,
          height: 50,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 225, 161, 179),
            borderRadius: (BorderRadius.all(Radius.circular(8))),
          ),
          child: Center(
            child: Text(
              model.title!,
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 18),
            ),
          ),
        ),
        const SizedBox(height: 50),
        SizedBox(
          height: 200,
          child: Image.asset(model.image!),
        ),
        const SizedBox(height: 50),
        Text(
          model.content!,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.carbonhydrat!,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                model.protein!,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                model.fat!,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                model.kalori!,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                model.sugar!,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Divider(
            thickness: 0.1,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}

class Kalori extends StatelessWidget {
  const Kalori({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            imagePath, // Resmin dosya yolu
            width: 150,
            height: 150,
          ),
        ),

        const SizedBox(width: 1), // Resim ile metin arasında boşluk
      ],
    );
  }
}

class Baslik extends StatelessWidget {
  const Baslik({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: (BorderRadius.all(Radius.circular(10))),
      ),
      child: Center(
        child: Text(title,
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20)),
      ),
    );
  }
}
