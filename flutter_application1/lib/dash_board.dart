import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 86, 32, 162),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Navigation Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            /* const UserAccountsDrawerHeader(  
              accountName:  Text("Abhishek Mishra"),  
              accountEmail:  Text("abhishekm977@gmail.com"),  
              currentAccountPicture: CircleAvatar(  
                backgroundImage: NetworkImage(""),
                backgroundColor: Color.fromARGB(255, 73, 39, 167),  
                child: Text(  
                  "A",  
                  
                  style: TextStyle(fontSize: 40.0),  
                ),  
              ),  
            ),  */

            DrawerHeader(
                child: Stack(
              children:const [
                Image(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/1172253/pexels-photo-1172253.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),fit: BoxFit.fill,
                ),
              ],
            )),
            ListTile(
              leading: const Icon(
                Icons.music_note,
                color: Color.fromARGB(255, 73, 39, 167),
              ),
              title: const Text('Music'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.movie,
                color: Color.fromARGB(255, 73, 39, 167),
              ),
              title: const Text('Movie'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(255, 73, 39, 167),
              ),
              title: const Text('Shopping'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.app_blocking,
                color: Color.fromARGB(255, 73, 39, 167),
              ),
              title: const Text('App'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.document_scanner_sharp,
                color: Color.fromARGB(255, 73, 39, 167),
              ),
              title: const Text('Docs'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Color.fromARGB(255, 73, 39, 167),
              ),
              title: const Text('Setting'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 1.0,
              child:
                  DecoratedBox(decoration: BoxDecoration(color: Colors.grey)),
            ),
            ListTile(
              leading: const Icon(
                Icons.info_outline,
                color: Color.fromARGB(255, 73, 39, 167),
              ),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.login_outlined,
                color: Color.fromARGB(255, 73, 39, 167),
              ),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
