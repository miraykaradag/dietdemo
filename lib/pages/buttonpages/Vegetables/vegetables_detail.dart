import 'package:dietdemo/models/vegetable/vegetable_model.dart';
import 'package:flutter/material.dart';

class VegetableDetails extends StatefulWidget {
  const VegetableDetails({super.key, required this.model, required this.color});

  final VegetableModel model;
  final Color color;

  @override
  State<VegetableDetails> createState() => _VegetableDetailsState();
}

class _VegetableDetailsState extends State<VegetableDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
              backgroundColor: widget.color,
              centerTitle: true,
              title: Text(
                widget.model.title!,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 253, 253),
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                ),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(200)),
              )),
        ),
        body: ListView(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Text(
                    widget.model.content!,
                    //   lorem(paragraphs: 3, words: 100),
                    style: const TextStyle(color: Colors.black),
                  ),
                  const Divider(),
                  Image.asset(
                    widget.model.image!,
                    width: 350,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 40,
                      child: SizedBox(
                        width: 300,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "100 gramı aşağıdaki besin değerlerini içerir:",
                                style: TextStyle(fontSize: 18),
                              ),
                              Column(
                                children: [
                                  Text(
                                    widget.model.carbonhydrat!,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    widget.model.protein!,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    widget.model.fat!,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    widget.model.kalori!,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    widget.model.lif!,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
