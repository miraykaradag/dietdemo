import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class SugarFruits extends StatefulWidget {
  const SugarFruits({super.key});

  @override
  State<SugarFruits> createState() => _SugarFruitsState();
}

class _SugarFruitsState extends State<SugarFruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sağlık Açısından Riskli Meyveler"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text(
                  "Lif, vitaminler, mineraller ve antioksidanlar açısından zengin olan taze meyve, çok yönlü bir diyete mükemmel bir katkı olabilir .Bununla birlikte, bazı meyve türleri diğerlerinden daha fazla şeker ve kalori içerir. Ayrıca, bazı meyveler diyabet ve asit reflü gibi sağlık sorunları olan kişilerde yan etkilere neden olabilir. Bu meyvelerin tadını çıkarmaya devam edebilirsiniz, ancak daha küçük porsiyon boyutlarında. \n Bu makale, şeker ve kalori bakımından en yüksek meyveler ile diyabet veya asit reflünüz varsa sınırlamanız gerekebilecek meyvelere daha yakından bakmaktadır.",
                  style: TextStyle(color: Colors.black),
                ),
                Column(
                  children: [],
                ),
                const Divider(),
                const Baslik(
                  title: "1-3. Şeker Oranı En Yüksek",
                ),
                const Divider(),
                Text(
                  "Hem taze hem de kurutulmuş bazı meyve türleri doğal şeker bakımından yüksektir. Karbonhidrat veya şeker alımınızı azaltmayı hedefliyorsanız, bunların tadını çıkarırken küçük miktarlara sadık kalın.",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                const Divider(),
                const Fruits(
                  title: "1-Hurma",
                  width: 100,
                ),
                const Divider(),
                const Kalori(
                  imagePath: "myassets/png/hurma.jpg",
                ),
                const Divider(),
                const InfoFruits(),
                const Divider(),
                const Fruits(
                  title: "2-Kuru Meyve",
                  width: 150,
                ),
                const Divider(),
                const Kalori(
                  imagePath: "myassets/png/kuru_meyve.jpg",
                ),
                const Divider(),
                const InfoFruits(),
                const Divider(),
                const Fruits(
                  title: "3-Mango",
                  width: 150,
                ),
                const Divider(),
                const Kalori(
                  imagePath: "myassets/png/mango.jpg",
                ),
                const Divider(),
                const InfoFruits(),
                const Divider(),
                const Baslik(
                  title: "4-6. En Yüksek Kalorili",
                ),
                Divider(),
                Text(
                  "Birçok meyve türü kalori bakımından yüksektir. Besin açısından yoğun, çok yönlü bir diyetin parçası olarak tüketilebilseler de, kalori alımınızı azaltmaya veya kilo vermeye çalışıyorsanız porsiyon boyutlarınıza dikkat etmek isteyebilirsiniz.",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                const Divider(),
                const Fruits(
                  title: "4-Avakado",
                  width: 100,
                ),
                const Kalori(
                  imagePath: "myassets/png/avakado.jpg",
                ),
                const Divider(),
                const InfoFruits(),
                const Divider(),
                const Fruits(
                  title: "5-Hindistan Cevizi",
                  width: 150,
                ),
                const Kalori(
                  imagePath: "myassets/png/hindistan_cevizi.jpg",
                ),
                const InfoFruits(),
                const Divider(),
                const Fruits(
                  title: "6-Kuru Erik",
                  width: 100,
                ),
                const Divider(),
                const Kalori(
                  imagePath: "myassets/png/kuru_erik.jpg",
                ),
                const Divider(),
                const InfoFruits(),
                const Divider(),
                const Baslik(
                  title: "7-9 Şeker Hastalığınız Varsa",
                ),
                Divider(),
                Text(
                  "Diyabetiniz varsa, sağlıklı kan şekeri düzeylerini desteklemek için bol miktarda lif açısından zengin, yoğun besleyici gıdalar yemeniz önemlidir .Bu arada, belirli meyve türleri de dahil olmak üzere lif oranı düşük ve ilave şeker oranı yüksek yiyecekler sınırlandırılmalıdır.",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                const Divider(),
                const Fruits(
                  title: "7-Şekerlenmiş",
                  width: 160,
                ),
                Divider(),
                const Kalori(
                  imagePath: "myassets/png/sekerlenmis.jpg",
                ),
                const Divider(),
                const InfoFruits(),
                const Divider(),
                const Fruits(
                  title: "8-Meyve Suyu",
                  width: 150,
                ),
                const Divider(),
                const Kalori(
                  imagePath: "myassets/png/meyvesuyu.jpg",
                ),
                const Divider(),
                const InfoFruits(),
                const Divider(),
                const Fruits(
                  title: "9-Şurupla konserve edilmiş meyve",
                  width: 150,
                ),
                const Divider(),
                const Kalori(
                  imagePath: "myassets/png/meyvesuyu.jpg",
                ),
                const Divider(),
                const InfoFruits(),
                const Divider(),
                const Baslik(
                  title: "10-12. Asit Refliniz var ise",
                ),
                Divider(),
                Text(
                  "Mandalina gibi bazı meyveler, asit reflü olarak da bilinen gastroözofageal reflü hastalığı (GERD) olanlarda zarar verebilir .Bu meyvelerin son besleyici olmalarına ve süregelen bir diyete uymalarına rağmen, asit reflü zincirlerini tetiklediklerini farklı bir şekilde alımınızı sınırlamaları derece çalıştırır.",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                const Divider(),
                const Fruits(
                  title: "10-Portakallar",
                  width: 150,
                ),
                const Divider(),
                const Kalori(
                  imagePath: "myassets/png/portakal.jpg",
                ),
                const Divider(),
                const InfoFruits(),
                const Divider(),
                const Fruits(
                  title: "11-Domates",
                  width: 150,
                ),
                const Divider(),
                const Kalori(
                  imagePath: "myassets/png/domates.jpg",
                ),
                const Divider(),
                const InfoFruits(),
                const Divider(),
                const Fruits(
                  title: "12-Greyfurt",
                  width: 150,
                ),
                const Kalori(
                  imagePath: "myassets/png/greyfurt.jpg",
                ),
                const InfoFruits(),
                const Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class InfoFruits extends StatelessWidget {
  const InfoFruits({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      lorem(paragraphs: 3, words: 75),
      style: TextStyle(color: Colors.black),
    );
  }
}

class Fruits extends StatelessWidget {
  const Fruits({
    Key? key,
    required this.title,
    required this.width,
  }) : super(key: key);

  final String title;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 30,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 225, 161, 179),
        borderRadius: (const BorderRadius.all(Radius.circular(8))),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), fontSize: 18),
        ),
      ),
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
        borderRadius: (const BorderRadius.all(Radius.circular(10))),
      ),
      child: Center(
        child: Text(title,
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20)),
      ),
    );
  }
}
