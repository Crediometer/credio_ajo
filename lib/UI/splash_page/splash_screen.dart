import 'dart:async';

import 'package:credio/values/colors.dart';
import 'package:flutter/material.dart';

import '../onBoarding_page/onBoarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Credio.",
          style: TextStyle(
              color: AppColors().wine,
              fontSize: 55,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
