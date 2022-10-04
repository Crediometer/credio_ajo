import 'package:credio/screens/empty.dart';
import 'package:credio/screens/fragments/home.dart';
import 'package:credio/screens/fragments/transactions.dart';
import 'package:credio/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class MyIndexPage extends StatefulWidget {
  const MyIndexPage({Key? key}) : super(key: key);
  @override
  State<MyIndexPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyIndexPage> {
  int _pages = 0;
  var screens = [new MyHomeFragment(), new TransactionPage()];

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
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          systemNavigationBarDividerColor: Colors.white,
          systemNavigationBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: (_pages == 1) ? 3 : 0,
        leadingWidth: (_pages == 1) ? 50 : 400,
        title: (_pages == 1)
            ? Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Transaction",
                  style: TextStyle(color: Colors.black),
                ),
              )
            : null,
        leading: (_pages == 1)
            ? IconButton(
                onPressed: () {
                  toggleScreen(_pages - 1);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              )
            : Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.fromLTRB(10, 5, 4, 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset("assets/images/jilo.jpg"),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    width: 400,
                    child: Text(
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
                color: new AppColors().wine,
              ))
        ],
      ),
      body: getScreen(),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          fixedColor: Colors.grey,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                    color: new AppColors().wine,
                    iconSize: 30,
                    onPressed: () {
                      toggleScreen(0);
                    },
                    splashColor: new AppColors().wine,
                    icon: Icon(
                      Icons.home_filled,
                      color: (_pages == 0) ? new AppColors().wine : Colors.grey,
                    )),
                label: "Home"),
            BottomNavigationBarItem(
                icon: IconButton(
                    iconSize: 30,
                    onPressed: () {
                      toggleScreen(1);
                    },
                    splashColor: new AppColors().wine,
                    icon: Icon(Icons.swap_horiz_outlined,
                        color: (_pages == 1)
                            ? new AppColors().wine
                            : Colors.grey)),
                label: "Transaction"),
            BottomNavigationBarItem(
                icon: IconButton(
                    iconSize: 30,
                    onPressed: () {
                      toggleScreen(3);
                    },
                    icon: Icon(Icons.person,
                        color: (_pages == 2)
                            ? new AppColors().wine
                            : Colors.grey)),
                label: "Profile"),
          ]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
