import 'package:credio/screens/GroupSavings.dart';
import 'package:credio/screens/HomPage.dart';
import 'package:credio/screens/IndexPage.dart';
import 'package:credio/screens/IntroPage.dart';
import 'package:credio/screens/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Credio',
      theme: ThemeData(accentColor: Colors.white, primaryColor: Colors.white),
      home: new MyIndexPage(),
    );
  }
}
