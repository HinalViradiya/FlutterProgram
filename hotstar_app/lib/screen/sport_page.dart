import 'package:flutter/material.dart';
import 'package:hotstar_app/screen/port_folio_subpage.dart';

class SportPage extends StatefulWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:const [
               GallerySubPage()
        ],
      ),
    );
  }
}