import 'dart:html';

import 'package:button/layout/dashboard.dart';
import 'package:button/layout/signup_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/btn3.png",
                height: 150,
                width: 150,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: Text(
              "Log In Now",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const Text(
            "Please Login to continue using our app",
            style: TextStyle(
                fontSize: 15, color: Color.fromARGB(200, 112, 122, 122)),
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter the Email",
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder()),
              )),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                    hintText: "Enter the password",
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off)))),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 16,
                    decorationColor: Color.fromARGB(200, 112, 122, 122),
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                print("Forgot Password Clicked");
              },
              child: const Text('Forgot Password?'),
            )
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 50.0, right: 15.0, left: 15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.cyan,
                  padding: const EdgeInsets.all(25),
                  textStyle: const TextStyle(fontSize: 17, color: Colors.black),
                  minimumSize: const Size.fromHeight(50.0)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DashBoard()));
              },
              child: const Text("Log In"),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 15.0),
              child: Text.rich(TextSpan(
                  text: "Don't have an account? ",
                  style:
                      const TextStyle(color: Color.fromARGB(199, 89, 93, 93)),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Sign Up",
                        style: const TextStyle(
                            color: Color.fromARGB(255, 6, 167, 189),
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Signup()));
                          })
                  ]))),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("or connect with",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(199, 89, 93, 93))),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RawMaterialButton(
                  key: const Key("btnFacebook"),
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: const Color.fromARGB(255, 6, 167, 189),
                  splashColor: const Color.fromARGB(255, 96, 214, 229),
                  focusColor: const Color.fromARGB(255, 2, 95, 107),
                  child: Icon(
                    Icons.factory_outlined,
                    size: 35.0,
                  ),
                  padding: const EdgeInsets.all(15.0),
                  shape: const CircleBorder(),
                ),
                RawMaterialButton(
                  key: const Key("btnSkype"),
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: const Color.fromARGB(255, 6, 167, 189),
                  splashColor: const Color.fromARGB(255, 96, 214, 229),
                  focusColor: const Color.fromARGB(255, 2, 95, 107),
                  child: Icon(
                    Icons.add_chart_sharp,
                    size: 35.0,
                  ),
                  padding: const EdgeInsets.all(15.0),
                  shape: const CircleBorder(),
                ),
                RawMaterialButton(
                  key: const Key("btnGoogle"),
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: const Color.fromARGB(255, 6, 167, 189),
                  splashColor: const Color.fromARGB(255, 96, 214, 229),
                  focusColor: const Color.fromARGB(255, 2, 95, 107),
                  child: Icon(
                    Icons.group_outlined,
                    size: 35.0,
                  ),
                  padding: const EdgeInsets.all(15.0),
                  shape: const CircleBorder(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
