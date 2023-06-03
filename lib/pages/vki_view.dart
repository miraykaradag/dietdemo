import 'package:dietdemo/models/user_model.dart';
import 'package:dietdemo/models/vki_model.dart';
import 'package:dietdemo/pages/components/base_custom_text_field.dart';
import 'package:dietdemo/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:intl/intl.dart';

class VkiView extends StatefulWidget {
  const VkiView({super.key});

  @override
  State<VkiView> createState() => _VkiViewState();
}

class _VkiViewState extends State<VkiView> {
  String result = '';
  bool isLoading = true;

  late UserModel user;

  final heightController = TextEditingController();
  final weightController = TextEditingController();

  @override
  void initState() {
    BASE_REPO.getUser().then((user) {
      heightController.text = user!.height.toString();
      weightController.text = user.weight.toString();
      setState(() {
        isLoading = false;
      });
      this.user = user;
      return;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('VKI Calculator'),
        ),
        body: Builder(builder: (context) {
          if (isLoading) {
            return Container();
          } else {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Height', style: TextStyle(color: Colors.black)),
                    const SizedBox(height: 10),
                    BaseCustomTextField(
                      controller: heightController,
                      validator: ValidationBuilder().required().build(),
                    ),
                    const SizedBox(height: 40),
                    const Text('Weight', style: TextStyle(color: Colors.black)),
                    const SizedBox(height: 10),
                    BaseCustomTextField(
                      controller: weightController,
                      validator: ValidationBuilder().required().build(),
                    ),
                    const SizedBox(height: 50),
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                          (states) => const Color.fromARGB(255, 244, 198, 92),
                        )),
                        onPressed: () async {
                          final height =
                              double.tryParse(heightController.text)!;
                          final weight =
                              double.tryParse(weightController.text)!;

                          final vki = weight / ((height * height) / 10000);
                          String info = '';

                          if (vki < 18.5) {
                            info = 'Below ideal weight';
                          } else if (18.5 <= vki && vki < 24.4) {
                            info = 'Ideal weight';
                          } else if (25 <= vki && vki < 29.9) {
                            info = 'Above ideal weight';
                          } else if (30 <= vki && vki < 39.9) {
                            info = 'Well above ideal weight (obese)';
                          } else if (40 <= vki) {
                            info = 'Well above ideal weight (morbidly obese)';
                          }
                          await BASE_REPO.addVKI(VKIModel(
                            date: DateTime.now(),
                            value: vki.toString(),
                          ));

                          setState(() {
                            result = '$info : $vki';
                            user.vki!.add(VKIModel(
                                date: DateTime.now(), value: vki.toString()));
                          });
                        },
                        child: const Text(
                          'CALCULATE',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(result, style: const TextStyle(color: Colors.red)),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 500,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Date',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Value',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 300,
                      width: 500,
                      color: const Color.fromARGB(255, 118, 179, 108),
                      child: ListView.separated(
                        padding: const EdgeInsets.all(10),
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(DateFormat("yyyy-MM-dd")
                                  .format(user.vki![index].date!)),
                              Text(double.tryParse(user.vki![index].value!)!
                                  .round()
                                  .toString()),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 40,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Divider(thickness: 0.2, color: Colors.black),
                          ),
                        ),
                        itemCount: user.vki!.length,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        }));
  }
}
