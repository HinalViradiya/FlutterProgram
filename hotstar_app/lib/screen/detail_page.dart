

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static const routeName = '/DetailPage';
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  static const routeName = '/DetailPage';
  
  String text="";
  
  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context).settings.arguments;
 
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("The Fitness Hours"),

        
        
      ),
      //body :


    );
  }
}