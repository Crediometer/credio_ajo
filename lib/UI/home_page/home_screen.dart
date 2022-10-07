import 'package:credio/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 3,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                color: AppColors().wine,
                child: Container(
                    width: double.infinity,
                    height: 180,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                child: const Text(
                  textAlign: TextAlign.start,
                  "Quick Action",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 8),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Card(
                            elevation: 3,
                            color: const Color.fromARGB(255, 216, 216, 216),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                              width: 60,
                              height: 55,
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add),
                              ),
                            ),
                          ),
                          const Text("\nFund account",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            elevation: 3,
                            color: const Color.fromARGB(255, 216, 216, 216),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              width: 60,
                              height: 55,
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: IconButton(
                                onPressed: () {},
                                icon:
                                    const Icon(CupertinoIcons.paperplane_fill),
                              ),
                            ),
                          ),
                          const Text("\nTransfer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            elevation: 3,
                            color: const Color.fromARGB(255, 216, 216, 216),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                              width: 60,
                              height: 55,
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.person),
                              ),
                            ),
                          ),
                          const Text("\nAsk a friend",
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
                    margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                    color: Colors.purple,
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 40, 0, 2),
                              child: IconButton(
                                  iconSize: 50,
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.people_outline_rounded,
                                    color: Colors.white,
                                  )),
                            ),
                            const Text(
                              "Group Ajo",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 3,
                    margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
                    color: Colors.orange,
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                        width: 178,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 40, 0, 2),
                              child: IconButton(
                                  iconSize: 50,
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.supervised_user_circle_sharp,
                                    color: Colors.white,
                                  )),
                            ),
                            const Text(
                              "Matching Ajo",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                      color: const Color.fromARGB(255, 4, 131, 204),
                      elevation: 3,
                      margin: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                      child: Center(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(8, 15, 8, 8),
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 50, 0, 2),
                                child: IconButton(
                                    iconSize: 50,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.savings,
                                      color: Colors.white,
                                    )),
                              ),
                              const Text(
                                "Personal Saving",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )),
                  Card(
                      elevation: 3,
                      color: const Color.fromARGB(255, 3, 233, 118),
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Center(
                          child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 8, 0, 2),
                        width: 190,
                        height: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 50, 0, 2),
                              child: IconButton(
                                  iconSize: 50,
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  )),
                            ),
                            const Text(
                              "More",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ))),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
