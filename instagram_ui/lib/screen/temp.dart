import 'package:flutter/material.dart';


class Temp extends StatefulWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius:const BorderRadius.all(Radius.circular(50)),
                  ),
                  child: IconButton(
                    icon:const Icon(Icons.share_outlined),
                    color: Colors.black,
                    iconSize: 30,
                    onPressed: () {},
                  ),
                ),
               const Padding(
                  padding:  EdgeInsets.only(top:10.0),
                  child: Text("Share",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
