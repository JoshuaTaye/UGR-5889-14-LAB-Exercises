import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

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
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   IconButton(icon: Icon(Icons.drive_folder_upload_rounded), onPressed: null),
                   IconButton(icon: Icon(Icons.settings), onPressed: null ),
                ],
              )

          ),
              body:
               Column(
                  children:[
                     const Image(width: 384,
                        image: AssetImage('./assets/porche.jpeg')
                        ),
                    Padding(padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child:
                        Column(
                          children: [
                            const Text("1975 Porsche 911 Carrera", textAlign: TextAlign.start,
                            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35,),
                              ),
                            const Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              IconButton(icon: Icon(Icons.thumb_up_alt_rounded), onPressed: null),
                                              Text('0')
                                            ]
                                        ),
                                      ],
                                    ),
                                    Column(
                                        children:[
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                IconButton(icon: Icon(Icons.comment), onPressed: null),
                                                Text('0')
                                              ]
                                          ),
                                        ]
                                    ),
                                    Column(
                                        children:[
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                IconButton(icon: Icon(Icons.share), onPressed: null),
                                                Text('Share', style:TextStyle( fontSize: 18))
                                              ]
                                          )
                                        ]
                                    )
                                  ],
                                )
                              ],
                            ),
                            const Padding(padding: EdgeInsets.fromLTRB(10, 10, 15, 15),
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Essential Information", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                                  Text("1 of 3 done")
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.black,
                              width:300,
                              height: 1,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children:[
                                IconButton(icon: Icon(Icons.verified, color: Colors.green, size: 30,), onPressed: null),
                                Text("Year, Make, Model, VIN", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),),],),
                                IconButton(icon: Icon(Icons.edit, color: Colors.grey, size: 23,), onPressed: null),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text("Year: 1975", textAlign: TextAlign.start,),
                                Text("Make: Porsche"),
                                Text("Model: 911 Carrera"),
                                Text("VIN: 9115400029"),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              child:
                            Container(
                              color: Colors.grey,
                              width:300,
                              height: 1,
                            ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children:[
                                    IconButton(icon: Icon(Icons.verified, color: Colors.grey, size: 30,), onPressed: null),
                                    Text("Description", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),),],),
                                IconButton(icon: Icon(Icons.edit, color: Colors.grey, size: 23,), onPressed: null),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              child:
                              Container(
                                color: Colors.grey,
                                width:300,
                                height: 1,
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children:[
                                    IconButton(icon: Icon(Icons.verified, color: Colors.grey, size: 30,), onPressed: null),
                                    Text("Photos", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),),],),
                                IconButton(icon: Icon(Icons.edit, color: Colors.grey, size: 23,), onPressed: null),
                              ],
                            ),
                          ],)
                    ),
                  ],),
        ),
    );


  }
}