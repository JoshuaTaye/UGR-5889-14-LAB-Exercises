import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:lab3/page2.dart';


class Screen1 extends StatelessWidget {
  const Screen1({super.key});



  @override
   build(BuildContext context) {
    //  final result = await Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => Screen2())
    // );
    return  MaterialApp(
      home:  Scaffold(
        appBar:AppBar(
          title: const Text("Hello Niggas"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () async{
                final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Screen2()));
              },      child: const Text("result"),
          ),
        ),
      ),
    );
  }
}
