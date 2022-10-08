import 'package:flutter/material.dart';

import '../auth_page/Login.dart';
import '../group_savings_page/GroupSavingsScreen.dart';
import '../home_page/home_screen.dart';
import '../onBoarding_page/onBoarding_screen.dart';
import '../people_page/people.dart';
import '../transaction_page/transactions.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/OnBoarding":
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case "/LoginScreen":
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case "/TransactionPage":
        return MaterialPageRoute(builder: (_) => const TransactionScreen());

      case "/PeopleScreen":
        return MaterialPageRoute(builder: (_) => const PeopleScreen());

      case "/HomeScreen":
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case "/GroupSavingsScreen":
        return MaterialPageRoute(builder: (_) => const GroupSavingsScreen());

        // if(args is String){
        //   //do something
        // }
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text(" error 404"),
        ),
      );
    });
  }
}
