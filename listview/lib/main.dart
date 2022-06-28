import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo -Custome Fonts',
      theme: ThemeData(fontFamily: 'RobotoMono',
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "productlayout demo home page"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Listing")),
     
        body:
         ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              height: 50,
              color: Colors.amber[400],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 50,
              color: Colors.amber[200],
              child: const Center(child: Text('Entry C')),
            ),
              Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Roboto Mono sample',style:TextStyle(fontFamily: 'Roboto'))
              ),
            ),
          ],
        ),
        );
  }
}
