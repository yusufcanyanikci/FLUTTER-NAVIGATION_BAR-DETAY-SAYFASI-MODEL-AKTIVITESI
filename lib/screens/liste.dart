import 'dart:math';
import 'package:bottombar/models/todo.dart';
import 'package:flutter/material.dart';

class Liste extends StatefulWidget {
  const Liste({super.key});

  @override
  State<Liste> createState() => _ListeState();
}

class _ListeState extends State<Liste> {
  List<int> liste = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: TextButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 38, 0))),
                  onPressed: () {
                    setState(() {
                      liste =
                          List.generate(10, (index) => Random().nextInt(100));
                    });
                  },
                  child: const Text("Generate Number List")),
            )),
            Expanded(
              child: ListView.builder(
                itemCount: liste.length,
                itemBuilder: (context, index) {
                  var element = liste[index];
                  return Center(
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              liste.remove(element);
                            });
                          },
                          child: Text(element.toString())));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
