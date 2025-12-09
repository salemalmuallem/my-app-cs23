import 'package:dailyhabitsapp/MainNavigationPage.dart';
import 'package:dailyhabitsapp/registerpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String errorMessage = "";

  Future<void> login() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? savedUsername = prefs.getString("username");
    String? savedPassword = prefs.getString("password");

    if (usernameController.text == savedUsername &&
        passwordController.text == savedPassword) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainNavigationPage()),
      );
    } else {
      setState(() {
        errorMessage = "❌ اسم المستخدم أو كلمة المرور غير صحيحة";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تسجيل الدخول"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "اسم المستخدم",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "كلمة المرور",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: login,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 14),
              ),
              child: Text(
                "تسجيل الدخول",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),

            if (errorMessage.isNotEmpty) ...[
              SizedBox(height: 10),
              Text(errorMessage, style: TextStyle(color: Colors.red)),
            ],

            SizedBox(height: 20),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text("إنشاء حساب جديد", style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
