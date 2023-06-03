import 'package:flutter/material.dart';

import 'blue_fruits.dart';

class CancerFruit extends StatefulWidget {
  const CancerFruit({super.key});

  @override
  State<CancerFruit> createState() => _CancerFruitState();
}

class _CancerFruitState extends State<CancerFruit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kanserde Meyve Tüketimi"),
      ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Diyetinizin kanser geliştirme riskinizi etkileyebileceği bir sır değil.Benzer şekilde, kanser tedavisi görüyorsanız veya kanserden kurtuluyorsanız, sağlıklı yiyeceklerle karnınızı doyurmak önemlidir.Meyveler de dahil olmak üzere bazı yiyecekler, iyileşmeye giden yolu kolaylaştırmak için tümör büyümesini yavaşlatabilen ve tedavinin belirli yan etkilerini azaltabilen sağlığı geliştirici bileşikler içerir. \nKanser tedavisi görürken veya kanserden kurtulurken, yiyecek seçimleriniz inanılmaz derecede önemlidir. \nKemoterapi ve radyasyon gibi kanser tedavileri, yediklerinize ve içtiklerinize göre kötüleşebilen veya iyileşebilen birçok yan etkiye neden olabilir.\nDiyetinizi meyveler de dahil olmak üzere besleyici gıdalarla doldurmak, kanser tedaviniz boyunca vücudunuza vitaminler, mineraller ve antioksidanlar sağlamaya yardımcı olur.Bununla birlikte, meyve seçimlerinizi spesifik semptomlarınıza göre uyarlamak önemlidir.Örneğin, yutma güçlüğü çekiyorsanız, püre haline getirilmiş meyveler veya meyveli smoothie'ler iyi bir seçenekken, lif açısından zengin meyveler kabızlık yaşıyorsanız düzenliliği artırmanıza yardımcı olabilir. Belirtilerinize göre bazı meyvelerden de kaçınmak isteyebilirsiniz. Örneğin, turunçgiller ağız yaralarını tahriş edebilir ve ağız kuruluğu hissini kötüleştirebilir.Son olarak, elma, kayısı ve armut gibi bütün meyveleri, ağız yaraları, yutma güçlüğü, ağız kuruluğu veya mide bulantısı nedeniyle kanserli bazı kişiler için yemek zordur. ",
                      style: TextStyle(color: Colors.black),
                    ),
                    Divider(),
                    FruitCont(
                        title: "Önerilen Meyveler",
                        text2:
                            'Yaban mersini \nPortakal \nMuz\nGreyfurt\nElma\nLimon\nNar\nDut\nArmut\nÇilek\nKiraz\nBöğürtlen',
                        imagePath: "myassets/png/yabanmersini.jpg",
                        bgcolor: Color.fromARGB(255, 81, 112, 233)),
                    Divider()
                  ],
                ),
              )
            ],
          )),
    );
  }
}
