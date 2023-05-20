import 'package:dietdemo/pages/HomePage.dart';
import 'package:dietdemo/pages/register_view.dart';
import 'package:flutter/material.dart';

import '../repositories/user_repository.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    BASE_REPO.getUser().then((user) => Future.delayed(const Duration(seconds: 1)).then(
          (_) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => user != null ? FoodsMenu(username: user.username!) : const RegisterView(),
            ),
          ),
        ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'SPLASH',
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}
