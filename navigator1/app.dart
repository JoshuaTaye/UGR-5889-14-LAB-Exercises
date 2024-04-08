import 'package:flutter/material.dart';
import './main.dart';
import './details.dart';
import './courseList.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  Course? chosen;

  List<Course> courses = [
    Course(
        code: "0071",
        title: "Mathematics",
        description: "calculus, matrices, and more!"),
    Course(
        code: "1011",
        title: "Communicative English",
        description: "Reading, Writing, Listening, Speaking"),
    Course(
        code: "1903",
        title: "Introduction To Mobile App Development",
        description: "Flutter, Kotlin")
  ];

  @override
  Widget build(BuildContext context) {
    void handler(Course course) {
      setState(() {
        chosen = course;
      });
    }

    return MaterialApp(
      home: Navigator(
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          setState(() {
            chosen = null;
          });
          return true;
        },
        pages: [
          MaterialPage(
            key: const ValueKey('CourseListScreen'),
            child: CourseList(
              courses: courses,
              onTapped: handler,
            ),
          ),
          if (chosen != null)
            MaterialPage(
                key: ValueKey(chosen),
                child: CourseDetails(
                  course: chosen!,
                ))
        ],
      ),
    );
  }
}