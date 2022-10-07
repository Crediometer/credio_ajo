import 'package:credio/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TransactionScreen> {
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
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: (_transaction_selector == 0)
                    ? BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2.0, color: AppColors().wine)))
                    : null,
                child: TextButton(
                  onPressed: () {
                    updateTransactionDisplay();
                  },
                  child: Text(
                    "Previous Ajo",
                    style: TextStyle(
                        color: (_transaction_selector == 0)
                            ? AppColors().wine
                            : Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                decoration: (_transaction_selector == 1)
                    ? BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2.0, color: AppColors().wine)))
                    : null,
                child: TextButton(
                    onPressed: () {
                      updateTransactionDisplay();
                    },
                    child: Text(
                      "Current Ajo",
                      style: TextStyle(
                          color: (_transaction_selector == 1)
                              ? AppColors().wine
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Card(
                          margin: const EdgeInsets.all(10),
                          color: Colors.blue,
                          child: Container(
                            width: 150,
                            height: 150,
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 30),
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              children: const [
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
                          margin: const EdgeInsets.all(10),
                          color: Colors.green,
                          child: Container(
                            width: 150,
                            height: 150,
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 30),
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              children: const [
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
                          margin: const EdgeInsets.all(10),
                          color: Colors.red,
                          child: Container(
                            width: 150,
                            height: 150,
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 30),
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              children: const [
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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Recent transactions",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  child: const SingleChildScrollView(),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
