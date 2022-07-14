import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final List<String> imagesList = [
  'assets/images/plant1.png',
  'assets/images/plant2.png',
  'assets/images/plant3.png',
  'assets/images/plant4.png',
  'assets/images/plant5.png',
  'assets/images/plant6.png',
  'assets/images/plant7.jpg',
  'assets/images/plant8.png',
  'assets/images/plant9.png',
  'assets/images/plant10.png',
];
List icons1 = [
  Icons.cake,
  Icons.add_location_sharp,
  Icons.zoom_in_outlined,
  Icons.auto_awesome_motion,
  Icons.call_end_sharp,
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 6, 72, 49),
          title: Text("Dashboard"),
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
                        "Selena Gombez",
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
                                image: AssetImage("1.jpg"), fit: BoxFit.cover),
                            shape: BoxShape.circle),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                        )),
                  ],
                ),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("back.jpg"), fit: BoxFit.fill)),
              ),
              ListTile(
                leading: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 6, 72, 49),
                ),
                title: const Text('Search'),
                onTap: () {
                  // Navigator.pop(context);

                  // Two way to navigate in pages
                  Navigator.pushNamed(context, '/ SearchPage');
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const MusicPage()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.camera_indoor,
                  color: Color.fromARGB(255, 6, 72, 49),
                ),
                title: const Text('Indoor'),
                onTap: () {
                  Navigator.pushNamed(context, '/ MoviePage');
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.camera_outdoor,
                  color: Color.fromARGB(255, 6, 72, 49),
                ),
                title: const Text('Outdoor'),
                onTap: () {
                  Navigator.pushNamed(context, '/ ShoppingPage');
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.play_lesson_outlined,
                  color: Color.fromARGB(255, 6, 72, 49),
                ),
                title: const Text('Garden'),
                onTap: () {
                  Navigator.pushNamed(context, '/ AppPage');
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.one_k_sharp,
                  color: Color.fromARGB(255, 6, 72, 49),
                ),
                title: const Text('Office'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 6, 72, 49),
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
              const VerticalDivider(
                width: 2,
                thickness: 1,
              ),
              ListTile(
                leading: const Icon(
                  Icons.info_outline,
                  color: Color.fromARGB(255, 6, 72, 49),
                ),
                title: const Text('About'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.login_outlined,
                  color: Color.fromARGB(255, 6, 72, 49),
                ),
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 700),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: imagesList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: Colors.white),
                          child: Image.asset(i)
                          
                          //AssetImage("assets/images/launcher.jpg"),

                          );
                    },
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Plants',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ],
            ),
            Container(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagesList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Colors.white,                      
                      child: Image.asset(imagesList[index], fit: BoxFit.cover),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),                        
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(10));
                  }
                 
                 
                ),
              ),
          
            /* ListView.builder(
                itemCount: imagesList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(imagesList[index]),
                    title: Text(
                      imagesList[index].toString(),
                      style: const TextStyle(color: Colors.green, fontSize: 28),
                    ),
                  );
                }), */
          ],
        ));
  }
}
