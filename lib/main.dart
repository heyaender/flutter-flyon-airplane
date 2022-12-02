// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/ui/pages/bonus_page.dart';
import 'package:flyon_airplane_app/ui/pages/getstarted_page.dart';
import 'package:flyon_airplane_app/ui/pages/main_page.dart';
import 'package:flyon_airplane_app/ui/pages/signin_page.dart';
import 'package:flyon_airplane_app/ui/pages/signup_page.dart';
import 'package:flyon_airplane_app/ui/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/getstarted': (context) => GetStarted(),
        '/signup': (context) => SignUpPage(),
        '/signin': (context) => SignInPages(),
        '/bonus': (context) => BonusPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
