import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class text_textfield extends StatefulWidget {
  const text_textfield({Key? key}) : super(key: key);

  @override
  State<text_textfield> createState() => _text_textfieldState();
}

class _text_textfieldState extends State<text_textfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :Padding(padding:EdgeInsets.all(10),
      child: Column(
        children:  const <Widget>[
          Padding(padding: EdgeInsets.all(15),
          child: Text("UserName : ",
          style:  TextStyle(
            fontSize:  13,
            color: Colors.purple,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 3,
            wordSpacing: 8,
            backgroundColor: Colors.yellow,
          ),
          )
          ,)
        ],
      ),)
    );
  }
}