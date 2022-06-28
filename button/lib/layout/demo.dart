import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage2 extends StatefulWidget {
  const Homepage2({Key? key}) : super(key: key);

  @override
  State<Homepage2> createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.abc),
        onPressed: () {
           print("object");
      },),
      
      body: Column(
        children:  [
         const Text("Flutter",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          TextButton(onPressed: (){}, child: const Text("Click"),),
          ElevatedButton(onPressed: (){}, child:const  Text("Sign up")),
          IconButton(onPressed: (() {            
          }), icon:const Icon(Icons.person),),
          const SizedBox(height: 30,),
          Center(
            child: Container(width: 200,
            height: 200,color: Colors.black,
           child: const Image(
            fit: BoxFit.scaleDown,
            height: 100,width: 100,
            
            image: NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-674010.jpg&fm=jpg",)), 
            ),
          ), const SizedBox(height: 30,),
          Center(
            child: Container(width: 200,
            height: 200,color: Colors.black,
           child: const Image(image: AssetImage("assets/1.png"),fit: BoxFit.cover,), 
            ),
          ),  
         
        ],
      ),
    );
  }
}