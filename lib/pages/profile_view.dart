import 'package:dietdemo/pages/components/base_custom_text_field.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BaseCustomTextField(
                    controller: TextEditingController(),
                    hintText: 'Username',
                  ),
                  _divider,
                  BaseCustomTextField(
                    controller: TextEditingController(),
                    hintText: 'E-mail',
                  ),
                  _divider,
                  Row(
                    children: [
                      Expanded(
                          child: BaseCustomTextField(
                        controller: TextEditingController(),
                        hintText: 'Age',
                      )),
                      const Spacer(),
                      Expanded(
                        child: BaseCustomTextField(
                          controller: TextEditingController(),
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
                        controller: TextEditingController(),
                        hintText: 'Weight',
                      )),
                      const Spacer(),
                      Expanded(
                          child: BaseCustomTextField(
                        controller: TextEditingController(),
                        hintText: 'Height',
                      ))
                    ],
                  )
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
