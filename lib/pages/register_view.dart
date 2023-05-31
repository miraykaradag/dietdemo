// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dietdemo/models/user_model.dart';
import 'package:dietdemo/pages/HomePage.dart';
import 'package:dietdemo/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

import 'components/base_custom_text_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late TextEditingController _emailController;
  late TextEditingController _usernameController;
  late TextEditingController _ageController;
  late TextEditingController _genderController;
  late TextEditingController _weightController;
  late TextEditingController _heightController;

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    _usernameController = TextEditingController();
    _ageController = TextEditingController();
    _genderController = TextEditingController();
    _weightController = TextEditingController();
    _heightController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
            backgroundColor: Color.fromARGB(255, 90, 199, 94),
            centerTitle: true,
            title: const Text(
              'Hoşgeldin',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 253, 253),
                fontWeight: FontWeight.w500,
                fontSize: 38,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(200)),
            )),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 70),
                  const Text(
                    'Kişisel bilgilerinizi Girin',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 50),
                  BaseCustomTextField(
                    validator: ValidationBuilder().minLength(3).maxLength(15).required('Cant be empty').build(),
                    controller: _usernameController,
                    hintText: 'Username',
                  ),
                  _divider,
                  BaseCustomTextField(
                    validator: ValidationBuilder().email().maxLength(50).required('Cant be empty').build(),
                    controller: _emailController,
                    hintText: 'E-mail',
                  ),
                  _divider,
                  Row(
                    children: [
                      Expanded(
                          child: BaseCustomTextField(
                        validator: ValidationBuilder().maxLength(4).required().build(),
                        keyboardType: TextInputType.number,
                        onylNums: true,
                        controller: _ageController,
                        hintText: 'Age',
                      )),
                      const Spacer(),
                      Expanded(
                        child: BaseCustomTextField(
                          validator: ValidationBuilder().required().build(),
                          controller: _genderController,
                          hintText: 'Gender',
                        ),
                      )
                    ],
                  ),
                  _divider,
                  Row(
                    children: [
                      Expanded(
                          child: BaseCustomTextField(
                        validator: ValidationBuilder().required().build(),
                        keyboardType: TextInputType.number,
                        onylNums: true,
                        controller: _weightController,
                        hintText: 'Weight',
                      )),
                      const Spacer(),
                      Expanded(
                          child: BaseCustomTextField(
                        validator: ValidationBuilder().required().build(),
                        keyboardType: TextInputType.number,
                        onylNums: true,
                        controller: _heightController,
                        hintText: 'Height',
                      ))
                    ],
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 119, 205, 122)),
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            await BASE_REPO
                                .saveUser(
                              UserModel(
                                email: _emailController.text,
                                username: _usernameController.text,
                                gender: _genderController.text,
                                age: int.tryParse(_ageController.text),
                                weight: double.tryParse(_weightController.text),
                                height: double.tryParse(_heightController.text),
                                vki: [],
                              ),
                            )
                                .then((value) {
                              if (value) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const FoodsMenu(
                                      username: 'ewq',
                                    ),
                                  ),
                                );
                              }
                            });
                          }
                        },
                        child: const Text(
                          'Resume',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget get _divider => const SizedBox(
        height: 40,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Divider(thickness: 0.2, color: Colors.black),
        ),
      );
}
