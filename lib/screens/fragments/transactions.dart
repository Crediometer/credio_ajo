import 'package:credio/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TransactionPage> {
  int _transaction_selector = 0;
  void updateTransactionDisplay() {
    setState(() {
      _transaction_selector = (_transaction_selector == 0) ? 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: TextButton(
                  onPressed: () {
                    updateTransactionDisplay();
                  },
                  child: Text(
                    "Previous Ajo",
                    style: TextStyle(
                        color: (_transaction_selector == 0)
                            ? new AppColors().wine
                            : Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: (_transaction_selector == 0)
                    ? BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2.0, color: new AppColors().wine)))
                    : null,
              ),
              Container(
                decoration: (_transaction_selector == 1)
                    ? BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2.0, color: new AppColors().wine)))
                    : null,
                child: TextButton(
                    onPressed: () {
                      updateTransactionDisplay();
                    },
                    child: Text(
                      "Current Ajo",
                      style: TextStyle(
                          color: (_transaction_selector == 1)
                              ? new AppColors().wine
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
              )
            ],
          ),
          decoration: BoxDecoration(color: Colors.white),
        ),
        SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Card(
                          margin: EdgeInsets.all(10),
                          color: Colors.blue,
                          child: Container(
                            width: 150,
                            height: 150,
                            padding: EdgeInsets.fromLTRB(0, 15, 0, 30),
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text("Group Ajo",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20)),
                                SizedBox(
                                  height: 30,
                                ),
                                Text("Dutse Market Ajo",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("              20k/Week",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        fontSize: 13)),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(10),
                          color: Colors.green,
                          child: Container(
                            width: 150,
                            height: 150,
                            padding: EdgeInsets.fromLTRB(0, 15, 0, 30),
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text("Personal Saving",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20)),
                                SizedBox(
                                  height: 30,
                                ),
                                Text("Life time",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("              20k/Week",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        fontSize: 13)),
                                Expanded(child: SizedBox())
                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(10),
                          color: Colors.red,
                          child: Container(
                            width: 150,
                            height: 150,
                            padding: EdgeInsets.fromLTRB(0, 15, 0, 30),
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text("Group Ajo",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20)),
                                SizedBox(
                                  height: 30,
                                ),
                                Text("Dutse Market Ajo",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("              20k/Week",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        fontSize: 13)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Recent transactions",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: SingleChildScrollView(),
                )
              ],
            ),
          ),
        ),
      ],
    )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
