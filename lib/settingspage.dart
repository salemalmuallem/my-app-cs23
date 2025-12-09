import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'registerpage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController majorController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  // تحميل البيانات
  Future<void> loadUserData() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      usernameController.text = prefs.getString("username") ?? "";
      majorController.text = prefs.getString("major") ?? "";
    });
  }

  // حفظ التعديلات
  Future<void> saveChanges() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString("username", usernameController.text.trim());
    await prefs.setString("major", majorController.text.trim());

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("تم حفظ التغييرات بنجاح")));
  }

  // تسجيل الخروج
  void logout() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "الإعدادات",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            // تغيير اسم المستخدم
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "اسم المستخدم",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // تغيير التخصص
            TextField(
              controller: majorController,
              decoration: InputDecoration(
                labelText: "التخصص",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: saveChanges,
              child: Text("حفظ التغييرات"),
            ),

            const SizedBox(height: 40),

            // زر تسجيل الخروج
            ElevatedButton(
              onPressed: logout,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                "تسجيل الخروج",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
