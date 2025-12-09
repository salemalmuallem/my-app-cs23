import 'package:dailyhabitsapp/homepage.dart';
import 'package:dailyhabitsapp/loginpage.dart';
import 'package:dailyhabitsapp/registerpage.dart';
import 'package:dailyhabitsapp/startpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DailyHabitsApp());
}

class DailyHabitsApp extends StatelessWidget {
  const DailyHabitsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
      routes: {
        "/login": (context) => LoginPage(),
        "/register": (context) => RegisterPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
