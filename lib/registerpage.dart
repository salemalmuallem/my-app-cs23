import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController majorController = TextEditingController();

  String message = "";

  Future<void> saveAccount() async {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();
    String major = majorController.text.trim();

    if (username.isEmpty || password.isEmpty || major.isEmpty) {
      setState(() {
        message = "⚠️ يرجى تعبئة جميع الحقول";
      });
      return;
    }

    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString("username", username);
    await prefs.setString("password", password);
    await prefs.setString("major", major);

    setState(() {
      message = "✔ تم إنشاء الحساب بنجاح!";
    });

    Future.delayed(Duration(seconds: 1), () {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("إنشاء حساب"),
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
              obscureText: true,
              decoration: InputDecoration(
                labelText: "كلمة المرور",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: majorController,
              decoration: InputDecoration(
                labelText: "التخصص",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: saveAccount,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 14),
              ),
              child: Text(
                "إنشاء الحساب",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),

            if (message.isNotEmpty) ...[
              SizedBox(height: 15),
              Text(
                message,
                style: TextStyle(
                  color: message.contains("✔") ? Colors.green : Colors.red,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
