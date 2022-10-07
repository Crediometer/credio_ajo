import 'package:flutter/material.dart';

import 'UI/splash_page/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.white)),
      home: const SplashScreen(),
    );
  }
}
