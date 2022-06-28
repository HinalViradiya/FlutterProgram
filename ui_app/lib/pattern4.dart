import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class pattern4 extends StatefulWidget {
  const pattern4({Key? key}) : super(key: key);

  @override
  State<pattern4> createState() => _pattern4State();
}

class _pattern4State extends State<pattern4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              )
            ],
           
         ),
          Center(
            child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.pink,
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              )
            ],
           
         ),
        ],
      )
    );
  }
}