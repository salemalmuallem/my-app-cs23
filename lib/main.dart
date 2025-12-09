//Name: Salem Mubarak Salem Almuallem.
//Major: Computer Science
//Level: 4

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'المسبحة الإلكترونية',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 14, 18, 241),
        ),
      ),
      home: const MyHomePage(title: 'المسبحة الإلكترونية'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _step = 0;
  String _text = "سبحان الله";
  String _buttonText = "سبح";

  void _incrementCounter() {
    setState(() {
      if (_step < 3) {
        _counter++;
        if (_counter > 33) {
          _counter = 0;
          _step++;

          if (_step == 1) {
            _text = "الحمد لله";
            _buttonText = "حمد";
          } else if (_step == 2) {
            _text = "الله أكبر";
            _buttonText = "كبر";
          } else if (_step == 3) {
            _text =
                "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير";
            _buttonText = "تم";
          }
        }
      } else {
        // بعد الانتهاء من الذكر الأخير
        _showFinishDialog();
      }
    });
  }

  void _showFinishDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("انتهاء التسبيح"),
          content: const Text("لقد أنهيت جميع الأذكار. تقبل الله منك 🌸"),
          actions: [
            TextButton(
              child: const Text("إعادة"),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _counter = 0;
                  _step = 0;
                  _text = "سبحان الله";
                  _buttonText = "سبح";
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            if (_step < 3)
              Text(
                "33/$_counter",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            const SizedBox(height: 20),
            FloatingActionButton.extended(
              onPressed: _incrementCounter,
              label: Text(_buttonText),
            ),
          ],
        ),
      ),
    );
  }
}
