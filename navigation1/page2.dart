import 'package:flutter/material.dart';
import 'package:lab3/page1.dart';
import './main.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("Back to page 1"),
            onPressed: () {
              Navigator.pop(context, "Nigress");
            }),
      ),
    )
    );
  }
}
