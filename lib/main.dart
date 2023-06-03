import 'package:dietdemo/models/user_model.dart';
import 'package:dietdemo/models/vki_model.dart';
import 'package:dietdemo/pages/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive
    ..registerAdapter(UserModelAdapter())
    ..registerAdapter(VKIModelAdapter());
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
          scaffoldBackgroundColor: Colors.white,
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.white),
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
            // toolbarTextStyle: TextStyle(color: Colors.black),
            foregroundColor: Color.fromARGB(255, 0, 0, 0),

            /*color: Colors.transparent,*/

            systemOverlayStyle: SystemUiOverlayStyle.dark,
          )),
      home: const SplashView(),
    );
  }
}
