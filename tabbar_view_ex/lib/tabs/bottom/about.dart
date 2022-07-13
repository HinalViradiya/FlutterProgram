import 'package:flutter/cupertino.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:const Center(child: Text("About Tab",style: TextStyle(fontSize: 24),))
    );
  }
}