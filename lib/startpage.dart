import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // عنوان التطبيق
              Text(
                "مرحباً بك في تطبيق المهام اليومية",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),

              SizedBox(height: 30),

              // أيقونة التطبيق
              CircleAvatar(
                radius: 50,
                backgroundImage: Image.asset('../images/icon.png').image,
              ),

              SizedBox(height: 40),

              // زر الانتقال لتسجيل الدخول
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  backgroundColor: Colors.deepPurple,
                ),
                child: Text(
                  "بدء الاستخدام",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
