import 'package:flutter/material.dart';
import 'Accountpage.dart';
import 'Homepage.dart';
import 'Searchpage.dart';
import 'Settingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexpage = 0;
  List<Widget> pages = [Homepage(), Accountpage(), Searchpage(), Settingpage()];
  String _gettitle(int index) {
    switch (index) {
      case 0:
        return "الصفحة الرئيسية";
      case 1:
        return "صفحة الحساب";
      case 2:
        return "صفحة البحث";
      case 3:
        return "صفحة الاعدادات";
      default:
        return "data";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(_gettitle(indexpage))),
        body: IndexedStack(index: indexpage, children: pages),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexpage,
          onTap: (value) {
            setState(() {
              indexpage = value;
            });
          },
          selectedItemColor: Colors.blue[700],
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(label: "الرئيسية", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "الحساب", icon: Icon(Icons.person)),
            BottomNavigationBarItem(label: "البحث", icon: Icon(Icons.search)),
            BottomNavigationBarItem(
              label: "الاعددات",
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
