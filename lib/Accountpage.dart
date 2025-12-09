import 'package:flutter/material.dart';

class Accountpage extends StatelessWidget {
  const Accountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.person, color: Colors.black87, size: 70),
            Text(
              "صفحة الحساب",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
