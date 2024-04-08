import 'package:flutter/material.dart';
import './main.dart';

class CourseDetails extends StatelessWidget {
  final Course course;
  const CourseDetails({required this.course, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: Center(
        child: Column(
          children: [
            Text(course.title),
            Text(course.code),
            Text(course.description),
          ],
        ),),);
  }
}