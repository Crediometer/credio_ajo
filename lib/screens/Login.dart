import 'package:credio/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome back",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your phone number",
                        labelText: "Phone Number",
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 40),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                        labelText: "Password",
                        border: OutlineInputBorder()),
                  ),
                ),
                Container(
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage(
                                        title: "credio",
                                      )));
                        },
                        child: Text(
                          "Log in",
                          style: TextStyle(color: Colors.white),
                        )),
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: new AppColors().wine,
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Forget password"),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Rest now ?",
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
