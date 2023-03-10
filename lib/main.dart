import 'package:dietdemo/pages/HealthySalad.dart';
import 'package:dietdemo/pages/HomePage.dart';
import 'package:dietdemo/pages/buttonpages/Fruits.dart';
import 'package:dietdemo/pages/buttonpages/Vegetables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
            cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            appBarTheme: const AppBarTheme(
              centerTitle: true,
              elevation: 0,
              /*color: Colors.transparent,*/

              systemOverlayStyle: SystemUiOverlayStyle.dark,
            )),
        home: const FoodsMenu());
  }
}
