import 'package:flutter/material.dart';
import './app.dart';
void main() {
  runApp(const MyApp());
}
class Course{
  String code;
  String title;
  String description;
  Course({
    required this.code,
    required this.title,
    this.description = ""
});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home: App(),
    );
  }
}
