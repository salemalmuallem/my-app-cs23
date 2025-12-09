import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? selectedValue;
  String? selectedGender;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.person, color: Colors.white, size: 30),
                        Text(
                          " Create account",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      left: 10,
                      right: 10,
                      bottom: 20,
                    ),
                    padding: EdgeInsets.only(
                      top: 20,
                      right: 10,
                      left: 10,
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter your name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Divider(),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter your emil',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Divider(),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter your phone',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Divider(),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter your password',
                            border: OutlineInputBorder(),
                          ),
                          obscureText: true,
                        ),
                        Divider(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DropdownButton<String>(
                              hint: Text('Your country'),
                              value: selectedValue,
                              items: ['Yemen', 'Saudi Arabia', 'Egypt', 'UAE']
                                  .map((String item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(item),
                                    );
                                  })
                                  .toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue;
                                });
                              },
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            Text("Nationality:  "),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedGender = "male";
                                          });
                                        },
                                        child: Text("Male"),
                                      ),
                                      Radio(
                                        value: 'male',
                                        groupValue: selectedGender,
                                        onChanged: (val) {
                                          setState(() {
                                            selectedGender = val;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedGender = "feminine";
                                          });
                                        },
                                        child: Text("Feminine"),
                                      ),
                                      Radio(
                                        value: 'feminine',
                                        groupValue: selectedGender,
                                        onChanged: (val) {
                                          setState(() {
                                            selectedGender = val;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (newvalue) {
                                setState(() {
                                  isChecked = newvalue!;
                                });
                              },
                            ),
                            Text(" Agreeing to the terms"),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 26, 240, 115),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "sind",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 17, 17, 17),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
