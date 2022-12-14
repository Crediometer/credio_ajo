import 'package:credio/values/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Welcome back",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your phone number",
                        labelText: "Phone Number",
                        border: OutlineInputBorder()),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 40),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                        labelText: "Password",
                        border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors().wine,
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/LoginScreen");
                      },
                      child: const Text(
                        "Log in",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Forget password"),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Reset now ?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 47, 121, 52)),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
