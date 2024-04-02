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
            Padding(padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                     const Row(
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
                     const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image(width:100,
                                height: 100,
                                image: AssetImage('./assets/angel_hair.jpeg')
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Calas"),
                                Text("\$15.00", style:TextStyle(fontSize: 20))
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
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                             Image(width:100,
                                height: 100,
                                image: AssetImage('./assets/calas.jpeg')
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Angel Hair"),
                                Text("Salmon, Mozzarella"),
                                Text("\$22.99", style:TextStyle(fontSize: 20))
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
                        Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Subtotal"),
                              Text("\$60.98")
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("TAX (10.0%)"),
                                Text("\$6.10")
                              ],
                            ),
                            Padding(padding: const EdgeInsets.fromLTRB(0,30,0,10),
                            child:
                            Container(
                              padding: const EdgeInsets.all(10),
                              color: Colors.deepOrange,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Checkout", style: TextStyle(color: Colors.white, fontSize: 20),),
                                  Text("\67.08", style: TextStyle(color: Colors.white))
                                ],
                              )
                            ),
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