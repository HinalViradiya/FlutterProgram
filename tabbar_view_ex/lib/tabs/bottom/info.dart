import 'package:flutter/cupertino.dart';

class InfoTab extends StatelessWidget {
  const InfoTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:const Center(child: Text("Info Tab",style: TextStyle(fontSize: 24),))
    );
  }
}