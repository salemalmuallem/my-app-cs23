import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'حاسبة كروت شبكة الصقر نت',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const Directionality(
        textDirection: TextDirection.rtl, // جعل التطبيق من اليمين لليسار
        child: CardCalculator(),
      ),
    );
  }
}

class CardCalculator extends StatefulWidget {
  const CardCalculator({super.key});

  @override
  State<CardCalculator> createState() => _CardCalculatorState();
}

class _CardCalculatorState extends State<CardCalculator> {
  // البيانات الأساسية
  final List<Map<String, dynamic>> _cards = [
    {"name": "كرت أبو 100", "price": 70},
    {"name": "كرت أبو 200", "price": 150},
    {"name": "كرت أبو 300", "price": 250},
    {"name": "كرت أبو 500", "price": 450},
    {"name": "كرت أبو 1000", "price": 900},
    {"name": "كرت أبو 1500", "price": 1350},
    {"name": "كرت أبو 2000", "price": 1800},
    {"name": "كرت أبو 3000", "price": 2700},
    {"name": "كرت أبو 5000", "price": 4500},
    {"name": "كرت أبو 7500", "price": 6750},
  ];

  final List<TextEditingController> _nameControllers = [];
  final List<TextEditingController> _priceControllers = [];
  final List<TextEditingController> _qtyControllers = [];

  double _total = 0;

  @override
  void initState() {
    super.initState();
    for (var card in _cards) {
      _nameControllers.add(
        TextEditingController(text: card["name"].toString()),
      );
      _priceControllers.add(
        TextEditingController(text: card["price"].toString()),
      );
      _qtyControllers.add(TextEditingController());
    }
    _calculateTotal();
  }

  @override
  void dispose() {
    for (var c in [
      ..._nameControllers,
      ..._priceControllers,
      ..._qtyControllers,
    ]) {
      c.dispose();
    }
    super.dispose();
  }

  void _calculateTotal() {
    double sum = 0;
    for (int i = 0; i < _cards.length; i++) {
      final price = double.tryParse(_priceControllers[i].text) ?? 0;
      final qty = int.tryParse(_qtyControllers[i].text) ?? 0;
      sum += price * qty;
    }
    setState(() {
      _total = sum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("حاسبة كروت شبكة الصقر نت"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Table(
              border: TableBorder.all(color: Colors.black26),
              columnWidths: const {
                0: FlexColumnWidth(2), // الباقة
                1: FlexColumnWidth(1.5), // السعر
                2: FlexColumnWidth(1), // العدد
                3: FlexColumnWidth(1.5), // الإجمالي
              },
              children: [
                const TableRow(
                  decoration: BoxDecoration(color: Color(0xFFE0E0E0)),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("الباقة", textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("السعر", textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("العدد", textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("الإجمالي", textAlign: TextAlign.center),
                    ),
                  ],
                ),
                ...List.generate(_cards.length, (i) {
                  final price = double.tryParse(_priceControllers[i].text) ?? 0;
                  final qty = int.tryParse(_qtyControllers[i].text) ?? 0;
                  final rowTotal = price * qty;

                  return TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: TextField(
                          controller: _nameControllers[i],
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            isDense: true,
                            contentPadding: EdgeInsets.all(8),
                          ),
                          onChanged: (_) => _calculateTotal(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: TextField(
                          controller: _priceControllers[i],
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            isDense: true,
                            contentPadding: EdgeInsets.all(8),
                          ),
                          onChanged: (_) => _calculateTotal(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: TextField(
                          controller: _qtyControllers[i],
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            isDense: true,
                            contentPadding: EdgeInsets.all(8),
                          ),
                          onChanged: (_) => _calculateTotal(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "$rowTotal",
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "الإجمالي الكلي: $_total ريال",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
