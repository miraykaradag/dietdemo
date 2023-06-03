import 'package:dietdemo/data/salads.dart';
import 'package:dietdemo/models/salads/salads_model.dart';
import 'package:dietdemo/pages/detox_waters/list_view_salads.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class HealthySalad extends StatefulWidget {
  const HealthySalad({super.key});

  @override
  State<HealthySalad> createState() => _HealthySaladState();
}

class _HealthySaladState extends State<HealthySalad> {
  late List<SaladsModel> salads;

  @override
  void initState() {
    salads = SALADS_DATA.map((e) => SaladsModel.fromJson(e)).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: AppBar(
            backgroundColor: const Color.fromARGB(255, 90, 199, 94),
            centerTitle: true,
            title: const Text(
              'Sağlıklı Salatalar',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 253, 253),
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(200)),
            )),
      ),
      body: ListView(children: [
        Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // const Text(
                //   "Sağlıklı Salatalar",
                //   style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25, fontWeight: FontWeight.w600),
                // ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    lorem(paragraphs: 2, words: 100),
                    style: const TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),

                for (int i = 0; i < salads.length; i++)
                  FruitCards(
                    text: salads[i].title!,
                    imagepath: salads[i].image!,
                    color: const Color.fromARGB(173, 255, 143, 69),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListViewSalads(model: salads[i])),
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class FruitCards extends StatelessWidget {
  const FruitCards({
    Key? key,
    required this.text,
    required this.imagepath,
    required this.color,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final String imagepath;
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 50,
        color: color,
        child: SizedBox(
          width: 400,
          height: 300,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      imagepath,
                      fit: BoxFit.cover,
                      height: 150,
                      width: 250,
                    ),
                  ),
                ),
                const Divider(),
                // Text(
                //   text,
                //   style: const TextStyle(fontSize: 20),
                // ),
                ListTile(
                  onTap: () {
                    onTap();
                  },
                  contentPadding: EdgeInsets.zero,
                  title: Align(
                    alignment: Alignment.center,
                    child: Text(text, style: const TextStyle(fontSize: 20)),
                  ), //Text(lorem(paragraphs: 1, words: 5)),
                  trailing: const SizedBox(
                    width: 20,
                    child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            width: 20,
                            child: Icon(
                              Icons.chevron_right,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
