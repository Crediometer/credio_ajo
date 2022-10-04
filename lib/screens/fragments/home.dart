import 'package:credio/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomeFragment extends StatefulWidget {
  const MyHomeFragment({Key? key}) : super(key: key);
  @override
  State<MyHomeFragment> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomeFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 3,
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                color: new AppColors().wine,
                child: Container(
                    width: double.infinity,
                    height: 180,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.start,
                  "Quick Action",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 8),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Card(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                              width: 60,
                              height: 55,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                              ),
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            elevation: 3,
                            color: Color.fromARGB(255, 216, 216, 216),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          Text("\nFund account",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            elevation: 3,
                            color: Color.fromARGB(255, 216, 216, 216),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              width: 60,
                              height: 55,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(CupertinoIcons.paperplane_fill),
                              ),
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                          Text("\nTransfer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                              width: 60,
                              height: 55,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.person),
                              ),
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            elevation: 3,
                            color: Color.fromARGB(255, 216, 216, 216),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          Text("\nAsk a friend",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ],
                      )
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    elevation: 3,
                    margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(8, 20, 8, 8),
                        width: 180,
                        height: 180,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 40, 0, 2),
                              child: IconButton(
                                  iconSize: 50,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.people_outline_rounded,
                                    color: Colors.white,
                                  )),
                            ),
                            Text(
                              "Group Ajo",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    color: Colors.purple,
                  ),
                  Card(
                    elevation: 3,
                    margin: EdgeInsets.fromLTRB(5, 25, 0, 0),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(8, 20, 8, 8),
                        width: 178,
                        height: 180,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 40, 0, 2),
                              child: IconButton(
                                  iconSize: 50,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.supervised_user_circle_sharp,
                                    color: Colors.white,
                                  )),
                            ),
                            Text(
                              "Matching Ajo",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    color: Colors.orange,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                      color: Color.fromARGB(255, 4, 131, 204),
                      elevation: 3,
                      margin: EdgeInsets.fromLTRB(0, 11, 0, 0),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(8, 15, 8, 8),
                          width: 180,
                          height: 180,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 50, 0, 2),
                                child: IconButton(
                                    iconSize: 50,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.savings,
                                      color: Colors.white,
                                    )),
                              ),
                              Text(
                                "Personal Saving",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      )),
                  Card(
                      elevation: 3,
                      color: Color.fromARGB(255, 3, 233, 118),
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Center(
                          child: Container(
                        margin: EdgeInsets.fromLTRB(0, 8, 0, 2),
                        width: 190,
                        height: 190,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 50, 0, 2),
                              child: IconButton(
                                  iconSize: 50,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  )),
                            ),
                            Text(
                              "More",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                      ))),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
