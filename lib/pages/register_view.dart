import 'package:dietdemo/pages/HomePage.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Welcome',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 32,
          ),
        ),
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
                  const SizedBox(height: 100),
                  const Text(
                    'Enter your personal informations',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 100),
                  BaseCustomTextField(
                    controller: _emailController,
                    hintText: 'Username',
                  ),
                  _divider,
                  BaseCustomTextField(
                    controller: _usernameController,
                    hintText: 'E-mail',
                  ),
                  _divider,
                  Row(
                    children: [
                      Expanded(
                          child: BaseCustomTextField(
                        controller: _ageController,
                        hintText: 'Age',
                      )),
                      const Spacer(),
                      Expanded(
                        child: BaseCustomTextField(
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
                        controller: _weightController,
                        hintText: 'Weight',
                      )),
                      const Spacer(),
                      Expanded(
                          child: BaseCustomTextField(
                        controller: _heightController,
                        hintText: 'Height',
                      ))
                    ],
                  ),
                  const SizedBox(height: 25),
                  _divider,
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FoodsMenu(
                                username: 'ewq',
                              ),
                            ),
                          );
                          // await showDialog(
                          //   context: context,
                          //   builder: (context) => const AlertDialog(
                          //     title: Text('Error'),
                          //     content: Text('ERROR'),
                          //   ),
                          // );
                          if (formKey.currentState!.validate()) {
                            return;
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
