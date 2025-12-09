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
      home: Center(
        child: Scaffold(
          appBar: AppBar(title: Text("السيرة الذاتية")),
          body: Container(
            color: Colors.blueAccent,
            margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 5,
                      left: 10,
                      right: 10,
                      bottom: 5,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 144, 144, 145),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: Image.asset(
                            "images/img-per.png",
                          ).image,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Name: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Salem Almuallem"),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Job tilte: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Mobaile Devlober"),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Address: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Shabwah-Dohor"),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Birth: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("5/12/2003"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 0,
                      right: 10,
                      left: 10,
                    ),

                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "qualification:",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 4, 3, 116),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" High school"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" Diploma in Sharia Sciences"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" Bachelor's CS"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 0,
                      right: 10,
                      left: 10,
                    ),

                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Experiences:",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 4, 3, 116),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" Online application developer"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" Online web developer"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" Digital marketer"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" Data entry"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" graphic designer"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 0,
                      right: 10,
                      left: 10,
                    ),

                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Skiles:",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 4, 3, 116),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" Flutter"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" React"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" Web Development"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" Use AI"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" Marketing"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 0,
                      right: 10,
                      left: 10,
                    ),

                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Languages:",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 4, 3, 116),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" Arabc"),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 20,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 20,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 20,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 20,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle, size: 10),
                                      Text(" English"),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 20,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 20,
                                            ),
                                            Icon(
                                              Icons.star_half,
                                              color: Colors.amber,
                                              size: 20,
                                            ),
                                            Icon(
                                              Icons.star_border_sharp,
                                              color: Colors.amber,
                                              size: 20,
                                            ),
                                            Icon(
                                              Icons.star_border_sharp,
                                              color: Colors.amber,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 0,
                      right: 10,
                      left: 10,
                    ),

                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "communication:",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 4, 3, 116),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.phone, size: 20),
                                      Text(" 779445713"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.email, size: 20),
                                      Text(" almuallem714@gmail.com"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.language_outlined, size: 20),
                                      Text(" salem-almuallem.netlify.app"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
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
