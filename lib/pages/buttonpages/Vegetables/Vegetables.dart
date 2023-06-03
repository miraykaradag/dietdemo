import 'package:dietdemo/pages/buttonpages/Vegetables/vegetables_detail.dart';
import 'package:flutter/material.dart';

import '../../../data/vegetable.dart';
import '../../../models/vegetable/vegetable_model.dart';

class VegetablesPages extends StatefulWidget {
  const VegetablesPages({super.key});

  @override
  State<VegetablesPages> createState() => _VegetablesPagesState();
}

class _VegetablesPagesState extends State<VegetablesPages> {
  late List<VegetableModel> vegetableModels;
  List<Color> colors = [
    const Color.fromARGB(255, 222, 163, 197),
    const Color.fromARGB(255, 175, 145, 181),
    const Color.fromARGB(255, 237, 242, 203),
    const Color.fromARGB(255, 219, 208, 191),
    const Color.fromARGB(255, 119, 231, 119),
    const Color.fromARGB(255, 226, 233, 219),
    const Color.fromARGB(255, 126, 206, 137),
    const Color.fromARGB(255, 248, 191, 99),
    const Color.fromARGB(255, 100, 204, 149),
    const Color.fromARGB(255, 174, 223, 151),
    const Color.fromARGB(255, 121, 143, 114),
  ];

  @override
  void initState() {
    vegetableModels =
        VEGETABLES_DATA.map((e) => VegetableModel.fromJson(e)).toList();
    super.initState();
  }

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
                children: [
                  const CloseIconButton(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Besleyici 12 Sebze",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                  ),
                  const Divider(),
                  for (int i = 0; i < vegetableModels.length; i++)
                    EatCards(
                      color: colors[i],
                      text: vegetableModels[i].title!,
                      imagePath: vegetableModels[i].image!,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VegetableDetails(
                                model: vegetableModels[i],
                                color: colors[i],
                              ),
                            ));
                      },
                    )
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
      onPressed: () async {
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
    required this.onTap,
  }) : super(key: key);

  final Color color;
  final String text;
  final String imagePath;
  final Function onTap; // Yeni fonksiyon parametresi

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
          onTap: () {
            onTap();
          },
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
          leading: SizedBox(
              width: 100,
              child: Image(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              )),
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
