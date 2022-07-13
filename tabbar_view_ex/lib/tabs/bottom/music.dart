import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MusicTab extends StatelessWidget {
  const MusicTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:const Center(child: Text("Music Tab",style: TextStyle(fontSize: 24),))
    );
  }
}