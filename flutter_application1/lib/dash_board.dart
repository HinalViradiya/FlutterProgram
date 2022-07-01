import 'dart:ui';

import 'package:flutter/material.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour }

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class PopupItem {
  int value;
  String name;
  PopupItem(this.value, this.name);
}

class _DashBoardState extends State<DashBoard> {
 // String _selectedMenu = 'Items1';
  PopupItem popupcls = new PopupItem(1, "First Value");
  final List<PopupItem> _list = [
    PopupItem(1, "First Value"),
    PopupItem(2, "Second Item"),
    PopupItem(3, "Third Item"),
    PopupItem(4, "Fourth Item")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.more_horiz_outlined),
              elevation: 20,
            enabled: true,
                onSelected: (PopupItem value) {
                  setState(() {
                     popupcls = value;
                  });
                },
            itemBuilder: (context) {
              return _list.map((PopupItem choice) {
                return PopupMenuItem(
                    value: choice,
                    child: Text(choice.name));
              }).toList();
            },
          )
        ],
        backgroundColor: const Color.fromARGB(255, 86, 32, 162),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Dashbord"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            /*  const  UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    fit: BoxFit.cover),
              ),
              accountName: Text("Abhishek Mishra"),
              accountEmail: Text("abhishekm977@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://pin.dekhnews.com/wp-content/uploads/2019/09/lord-shiva-images-1.jpg"),               
              ),
            ), */

            DrawerHeader(
              // ignore: sort_child_properties_last
              child: Stack(
                children: [
                  const Positioned(
                    bottom: 30.0,
                    left: 5.0,
                    child: Text(
                      "App Making.co",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  const Positioned(
                    bottom: 8.0,
                    left: 5.0,
                    child: Text(
                      "Manager",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  Container(
                      height: 85,
                      width: 85,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.edarabia.com/wp-content/uploads/2015/11/7-ways-to-become-the-person-everyone-respects.jpg"),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                      )),
                ],
              ),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://static.vecteezy.com/system/resources/thumbnails/002/221/733/small/abstract-flowing-light-ombre-gradient-background-free-video.jpg"),
                      fit: BoxFit.fill)),
            ),
            ListTile(
              leading: const Icon(
                Icons.music_note,
                color: Color.fromARGB(255, 73, 39, 167),
              ),
              title: const Text('Music'),
              onTap: () {
                // Navigator.pop(context);

                // Two way to navigate in pages
                Navigator.pushNamed(context, '/ MusicPage');
                //Navigator.push(context, MaterialPageRoute(builder: (context) => const MusicPage()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.movie,
                color: Color.fromARGB(255, 73, 39, 167),
              ),
              title: const Text('Movie'),
              onTap: () {
                Navigator.pushNamed(context, '/ MoviePage');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(255, 73, 39, 167),
              ),
              title: const Text('Shopping'),
              onTap: () {
               Navigator.pushNamed(context, '/ ShoppingPage');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.app_blocking,
                color: Color.fromARGB(255, 73, 39, 167),
              ),
              title: const Text('App'),
              onTap: () {
                  Navigator.pushNamed(context, '/ AppPage');
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
            const Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey,
            ),
            /*   const SizedBox(
              height: 1.0,
              child:
                  DecoratedBox(decoration: BoxDecoration(color: Colors.grey)),
            ), */

            const VerticalDivider(
              width: 2,
              thickness: 1,
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
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(popupcls.name.toString(),style: TextStyle(color: Colors.black),),
      ),
      /*   body:
       Column(
        children: [
          Stack(children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.pink,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.white,
            ),
            Text("data")
          ]),
        ],
      ), */
    );
  }
}
