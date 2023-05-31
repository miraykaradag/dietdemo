import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class Patates extends StatefulWidget {
  const Patates({super.key});

  @override
  State<Patates> createState() => _PatatesState();
}

class _PatatesState extends State<Patates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
            backgroundColor: Color.fromARGB(255, 90, 199, 94),
            centerTitle: true,
            title: const Text(
              'Pazı',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 253, 253),
                fontWeight: FontWeight.w500,
                fontSize: 28,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(200)),
            )),
      ),
      body: ListView(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Text(
                  lorem(paragraphs: 3, words: 100),
                  style: TextStyle(color: Colors.black),
                ),
                Divider(
                  color: Colors.black,
                ),
                Image.asset(
                  "myassets/png/spinach.png",
                  width: 150,
                ),
                Divider(
                  color: Colors.black,
                ),
                VegCard(text: "", color: Color.fromARGB(255, 250, 176, 65))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class VegCard extends StatelessWidget {
  const VegCard({
    Key? key,
    required this.text,
    /*required this.imagepath,*/
    required this.color,
  }) : super(key: key);
  final String text;
  //final String imagepath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 40,
        color: color,
        child: SizedBox(
          width: 300,
          height: 210,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    // child: Image.asset(
                    //   imagepath,
                    //   fit: BoxFit.cover,
                    //   height: 150,
                    //   width: 300,
                    // ),
                  ),
                ),
                const Text(
                  "100 gramı aşağıdaki besin değerlerini içerir:",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  text,
                  style: const TextStyle(fontSize: 20),
                ),
                const ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(""),
                  trailing: SizedBox(
                      width: 20,
                      child: Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 20,
                          ))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
