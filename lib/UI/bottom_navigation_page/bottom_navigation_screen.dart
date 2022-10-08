import 'package:credio/UI/people_page/people.dart';
import 'package:credio/UI/transaction_page/transactions.dart';
import 'package:credio/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import '../home_page/home_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);
  @override
  State<BottomNavigationScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BottomNavigationScreen> {
  int _pages = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const TransactionScreen(),
    const PeopleScreen()
  ];

  var appTitles = ["", "Transaction", "Contacts", "Profile"];

  void toggleScreen(int screen) {
    setState(() {
      _pages = screen;
    });
  }

  Widget getScreen() {
    return screens[_pages];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          systemNavigationBarDividerColor: Colors.white,
          systemNavigationBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: (_pages == 1 || _pages == 2) ? 3 : 0,
        leadingWidth: (_pages >= 1) ? 50 : 400,
        title: (_pages >= 1)
            ? Center(
                child: Text(
                  textAlign: TextAlign.center,
                  appTitles[_pages],
                  style: const TextStyle(color: Colors.black),
                ),
              )
            : null,
        leading: (_pages >= 1)
            ? IconButton(
                onPressed: () {
                  toggleScreen(_pages - 1);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              )
            : Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.fromLTRB(10, 5, 4, 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset("assets/images/jilo.jpg"),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    width: 400,
                    child: const Text(
                      "Good day\nJilo",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ))
                ],
              ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_sharp,
                color: AppColors().wine,
              ))
        ],
      ),
      body: getScreen(),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          fixedColor: Colors.grey,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                    color: AppColors().wine,
                    iconSize: 30,
                    onPressed: () {
                      toggleScreen(0);
                    },
                    splashColor: AppColors().wine,
                    icon: Icon(
                      Icons.home_filled,
                      color: (_pages == 0) ? AppColors().wine : Colors.grey,
                    )),
                label: "Home"),
            BottomNavigationBarItem(
                icon: IconButton(
                    iconSize: 30,
                    onPressed: () {
                      toggleScreen(1);
                    },
                    splashColor: AppColors().wine,
                    icon: Icon(Icons.swap_horiz_outlined,
                        color: (_pages == 1) ? AppColors().wine : Colors.grey)),
                label: "Transaction"),
            BottomNavigationBarItem(
                icon: IconButton(
                    iconSize: 30,
                    onPressed: () {
                      toggleScreen(2);
                    },
                    icon: Icon(Icons.people,
                        color: (_pages == 2) ? AppColors().wine : Colors.grey)),
                label: "People"),
            BottomNavigationBarItem(
                icon: IconButton(
                    iconSize: 30,
                    onPressed: () {
                      toggleScreen(3);
                    },
                    icon: Icon(Icons.person,
                        color: (_pages == 3) ? AppColors().wine : Colors.grey)),
                label: "Profile"),
          ]),
    );
  }
}
