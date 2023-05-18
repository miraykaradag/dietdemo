import 'package:dietdemo/pages/register_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RegisterView(),
        ),
      ),
    );
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
