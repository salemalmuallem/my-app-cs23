import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();
    void submit() {
      setState(() {
        controller2.text = controller1.text;
        
      });
    }

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          TextField(
            controller: controller1,
            decoration: InputDecoration(
              labelText: 'name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: controller2,
            decoration: InputDecoration(
              labelText: 'coped name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            readOnly: true,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              submit();
            },
            child: Text('Copy'),
          ),
        ],
      ),
    );
  }
}
