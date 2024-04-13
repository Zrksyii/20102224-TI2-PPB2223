// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:praktikum_06/pages/main_page.dart';
import 'package:praktikum_06/pages/on_boarding_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Saving App',
        routes: {
          OnBoardingPage.nameRoute: (context) => OnBoardingPage(),
          MainPage.nameRoute: (context) => MainPage(),
        });
  }
}
