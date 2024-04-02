import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: const IconButton(icon: Icon(Icons.arrow_back), onPressed: null),
            title: const Center(child: 
            Text("Cart", textAlign: TextAlign.center, style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),)
              ,)
        ),
        body:
           const Padding(padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child:
                Column(
                  children: [
                     Row(
                      children: [
                         IconButton(icon: Icon(Icons.shopping_cart, color: Colors.indigo,), onPressed: null),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shopping Cart", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.indigo),),
                            Text("Verify your quantity and click checkout", style: TextStyle(fontWeight: FontWeight.w200, color: Colors.indigo))
                          ],
                        )
                      ],
                    ),
                     Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Image Placeholder"),
                            Column(
                              children: [
                                Text("Calas"),
                                Text("15.00", style:TextStyle(fontSize: 20))
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(icon: Icon(Icons.add, color: Colors.indigo,), onPressed: null),
                                Text("1.0"),
                                IconButton(icon: Icon(Icons.minimize, color: Colors.indigo,), onPressed: null),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],),
            ),
      ),
    );


  }
}