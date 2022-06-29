import 'package:flutter/material.dart';

class IconPage extends StatefulWidget {
  const IconPage({Key? key}) : super(key: key);

  @override
  State<IconPage> createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children:const  <Widget>[
        Icon(Icons.directions_transit, size: 70, color: Colors.green),
        Text("Train"),
        Icon(Icons.accessibility_new,color: Colors.pink,size:40.0,semanticLabel: "Text  to announce in accessiblility modes",)
      ],
    ));
  }
}
