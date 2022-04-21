import 'package:flutter/material.dart';
import 'package:flutter_task_manager/screens/auth/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter workos',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFEDE7C),
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

