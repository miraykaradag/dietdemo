// ignore_for_file: use_build_context_synchronously

import 'package:dietdemo/models/user_model.dart';
import 'package:dietdemo/pages/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_validator/form_validator.dart';

import '../repositories/user_repository.dart';
import 'components/base_custom_text_field.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController usernameController = TextEditingController();
    TextEditingController ageController = TextEditingController();
    TextEditingController genderController = TextEditingController();
    TextEditingController weightController = TextEditingController();
    TextEditingController heightController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 90, 199, 94),
            title: const Text(
              'Profile',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 253, 253),
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
          )),
      body: FutureBuilder<UserModel?>(
        future: BASE_REPO.getUser(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const CircularProgressIndicator.adaptive();
          }

          if (snapshot.hasData) {
            final user = snapshot.data;

            emailController.text = user!.email!;
            usernameController.text = user.username!;
            ageController.text = user.age!.toString();
            genderController.text = user.gender!;
            weightController.text = user.weight.toString();
            heightController.text = user.height.toString();

            return GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          BaseCustomTextField(
                            validator: ValidationBuilder().minLength(3).maxLength(15).required('Cant be empty').build(),
                            controller: usernameController,
                            hintText: 'Username',
                          ),
                          _divider,
                          BaseCustomTextField(
                            validator: ValidationBuilder().email().maxLength(50).required('Cant be empty').build(),
                            controller: emailController,
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
                                controller: ageController,
                                hintText: 'Age',
                              )),
                              const Spacer(),
                              Expanded(
                                child: BaseCustomTextField(
                                  validator: ValidationBuilder().required().build(),
                                  controller: genderController,
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
                                controller: weightController,
                                hintText: 'Weight',
                              )),
                              const Spacer(),
                              Expanded(
                                  child: BaseCustomTextField(
                                validator: ValidationBuilder().required().build(),
                                keyboardType: TextInputType.number,
                                onylNums: true,
                                controller: heightController,
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    style:
                                        ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 119, 205, 122)),
                                    onPressed: () async {
                                      final isSuccess = await BASE_REPO.deleteUser();

                                      if (isSuccess) {
                                        await Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => const SplashView(),
                                            ),
                                            (route) => false);
                                      }
                                    },
                                    child: const Text(
                                      'Sign Out',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    style:
                                        ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 119, 205, 122)),
                                    onPressed: () async {
                                      if (formKey.currentState!.validate()) {
                                        final isSuccess = await BASE_REPO.updateUser(
                                          UserModel(
                                            age: int.tryParse(ageController.text),
                                            height: double.tryParse(heightController.text),
                                            weight: double.tryParse(weightController.text),
                                            username: usernameController.text,
                                            email: emailController.text,
                                            gender: genderController.text,
                                          ),
                                        );

                                        if (isSuccess) {
                                          Fluttertoast.showToast(
                                            msg: "Success",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.BOTTOM,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.green,
                                            textColor: Colors.white,
                                            fontSize: 16.0,
                                          );
                                        }
                                      }
                                    },
                                    child: const Text(
                                      'Update',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
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
          return Container();
        },
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
