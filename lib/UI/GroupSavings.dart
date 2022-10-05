import 'package:credio/values/colors.dart';
import 'package:flutter/material.dart';

class GroupSavings extends StatefulWidget {
  const GroupSavings({
    Key? key,
  }) : super(key: key);

  @override
  State<GroupSavings> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<GroupSavings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(70, 100, 70, 10),
              child: Image.asset("assets/images/group.png"),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Text(
                "Group saving and thrifts",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Text(
                  "No-questions, No-quibbles, save your cash personally or with your folks\nMoney increase guarantee",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 44, 44, 44),
                    fontSize: 17,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors().wine,
                ),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
