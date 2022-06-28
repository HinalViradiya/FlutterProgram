import 'dart:html';

import 'package:flutter/material.dart';

class pattern3 extends StatefulWidget {
  const pattern3({Key? key}) : super(key: key);

  @override
  State<pattern3> createState() => _pattern3State();
}

class _pattern3State extends State<pattern3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
          Center(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
