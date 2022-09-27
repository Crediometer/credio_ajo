import 'package:credio/screens/Login.dart';
import 'package:credio/values/colors.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<IntroPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<IntroPage> {
  PageController controller = PageController();
  List<Widget> _list = <Widget>[
    new Center(
        child: Container(
      decoration: BoxDecoration(color: Colors.white),
      child: new Pages(
        text: "100% Secure Thrifting",
        message:
            "Safe and secured saving made possible, personally and your peers inclusive",
        source: Image.asset("assets/images/credit.png"),
        nextBtn: null,
      ),
    )),
    new Center(
        child: Container(
      decoration: BoxDecoration(color: Colors.white),
      child: new Pages(
        text: "Track your thrift savings",
        message:
            "Nothing is more interesting than watching how your money grow",
        source: Image.asset("assets/images/pana.png"),
        nextBtn: null,
      ),
    )),
    new Center(
        child: Container(
      decoration: BoxDecoration(color: Colors.white),
      child: new Pages(
        text: "A better way of saving",
        message: "Life is made with saving with credio",
        source: Image.asset("assets/images/pana.png"),
        nextBtn: TextButton(
            onPressed: () {},
            child: Text(
              "Get Started",
              style: TextStyle(color: Colors.white),
            )),
      ),
    ))
  ];
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Credio"),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              children: [
                Text(
                  "Skip",
                  style: TextStyle(
                      color: new AppColors().wine, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage(
                                      title: "credio",
                                    )));
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        color: new AppColors().wine,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
      body: PageView(
        children: _list,
        scrollDirection: Axis.horizontal,
        // reverse: true,
        // physics: BouncingScrollPhysics(),
        controller: controller,
        onPageChanged: (num) {
          setState(() {
            _curr = num;
          });
        },
      ),
    );
  }
}

class Pages extends StatelessWidget {
  final text;
  var message;
  var source;
  var nextBtn;
  Pages(
      {required this.text,
      required this.message,
      required this.source,
      required this.nextBtn});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(50),
              child: source,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
              child: Text(
                message,
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 44, 43, 43)),
              ),
            ),
            Container(
              child: nextBtn,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: new AppColors().wine,
              ),
            )
          ]),
    );
  }
}
