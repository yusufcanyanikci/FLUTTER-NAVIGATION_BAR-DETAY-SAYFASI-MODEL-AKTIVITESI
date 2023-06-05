import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  String title = "Yusufcan Yanıkcı";
  num counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "$counter",
          style: TextStyle(fontSize: 20), 
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black, 
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
