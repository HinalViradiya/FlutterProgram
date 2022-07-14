
import 'package:flutter/material.dart';

class MusicTab extends StatelessWidget {
  const MusicTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      // child:const Center(child: Text("Music Tab",style: TextStyle(fontSize: 24),))
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children:  <Widget> [
               const  Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  Text(
                    "New Realese",
                    style: TextStyle(color: Colors.black87,fontSize: 18),
                  ),
                ),
               const Spacer(),
                TextButton(onPressed: (){}, child:const  Text("MORE",style: TextStyle(fontSize: 15),),)
              ],
            ),    
            Container(
              
            )       
          ],
        ),
      ),
    );
  }
}
