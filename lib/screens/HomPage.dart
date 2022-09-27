import 'dart:async';
import 'package:credio/screens/IntroPage.dart';
import 'package:credio/values/colors.dart';
import 'package:flutter/material.dart';

void main() {
  print("object");
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => IntroPage(
                  title: "Credio",
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Credio.",
          style: TextStyle(
              color: new AppColors().wine,
              fontSize: 55,
              fontWeight: FontWeight.bold),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
