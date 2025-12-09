import 'package:flutter/material.dart';

class Settingpage extends StatelessWidget {
  const Settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings, color: Colors.black87, size: 70),
          Text(
            "صفحة الاعدادات",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ],
      ),
      )
    );
  }
}
