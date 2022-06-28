import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class state_example extends StatefulWidget {
  const state_example({Key? key}) : super(key: key);

  @override
  State<state_example> createState() => _state_exampleState();
}

class _state_exampleState extends State<state_example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Column(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "Login Form",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.pink,
                      fontWeight: FontWeight.w100,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 1,
                      wordSpacing: 5,
                      backgroundColor: Color.fromARGB(255, 154, 218, 239),
                      shadows: [
                        Shadow(
                            color: Colors.blueAccent,
                            offset: Offset(2, 1),
                            blurRadius: 10)
                      ]),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'UserName',
                        hintText: 'Enter the User Name :'))),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Enter your password"),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
  /*   Container(
          color: Colors.green,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(13),
          alignment: Alignment.topCenter,
          width: double.infinity,
          height: 150.0,
          transform: Matrix4.rotationZ(0.1),
          child: const Text("Hello,Its my First Layout File !!",
              style: TextStyle(fontSize: 25)),
        ), */  // Container Wi