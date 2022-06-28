//import 'dart:ffi';
import 'dart:html';
import 'dart:ui';

import 'package:button/layout/dashboard.dart';
import 'package:button/layout/demo.dart';
import 'package:button/layout/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class StartedPade extends StatefulWidget {
  const StartedPade({Key? key}) : super(key: key);

  @override
  State<StartedPade> createState() => _StartedPadeState();
}

class _StartedPadeState extends State<StartedPade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/btn1.png",
                  height: 150,
                  width: 150,
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/login1.png",
            height: 400,
            width: 350,
            fit: BoxFit.fill,
          ),
          const Text("WelCome",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 80.0),
            child: Text(
              "Create a account and access a thousand \nof cool stuffs",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(200, 112, 122, 122)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 15.0, left: 15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.cyan,
                  padding: const EdgeInsets.all(25),
                  textStyle: const TextStyle(fontSize: 17, color: Colors.black),
                  minimumSize: const Size.fromHeight(50.0)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const DashBoard()));
              },
              child: const Text("Getting Strated"),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text.rich(TextSpan(
                  text: "Already have an Account? ",
                  children: <TextSpan>[
                    TextSpan(
                        text: "Log in",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            );
                          })
                  ]))),
        ],
      ),
    );
  }
}


/* style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.cyan),
                padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                textStyle: MaterialStateProperty.all(const TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ))), */