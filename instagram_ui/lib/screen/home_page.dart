import 'package:flutter/material.dart';
import 'package:instagram_ui/custom_widget/description_text_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

@override
dispose() {
  Fluttertoast.cancel();
}

// double? height;
// double?  width;
String appName = "Instagram";

List<String> listProfile = [
  "assets/images/pic1.jpg",
  "assets/images/pic2.jpg",
  "assets/images/pic3.jpg",
  "assets/images/pic4.jpg",
  "assets/images/pic5.jpg",
  "assets/images/pic6.jpg",
  "assets/images/pic7.png",
  "assets/images/pic8.jpg",
  "assets/images/pic9.jpg",
  "assets/images/pic10.jpg",
  "assets/images/pic11.jpg",
];

List<Map<String, dynamic>> listUserPostData = [
  {
    "name": "Anny Roy",
    "profile": "assets/images/pic1.jpg",
    "likes": "1,024 Likes",
    "image": "assets/images/post1.jpg",
    "Comments":
        "Fantastic app, It has everything. You dont need to spend time of UI just import this UIs and focus on Coding part."
  },
  {
    "name": "Hinal Akbari",
    "profile": "assets/images/pic2.jpg",
    "likes": "3,352 Likes",
    "image": "assets/images/post2.jpg",
    "Comments":
        "Best app for reference and great resource. Really helpful for learning and also to develop great Material UI. Keep developing.."
  },
  {
    "name": "Sunny",
    "profile": "assets/images/pic3.jpg",
    "likes": "21 Likes",
    "image": "assets/images/post3.jpg",
    "Comments":
        "I think this is the best app i have found, it gives enough templates to design any type of apps . Huge thanks to the developer. 😊😊😊"
  },
  {
    "name": "Aayushi",
    "profile": "assets/images/pic4.jpg",
    "likes": "102 Likes",
    "image": "assets/images/post9.jpg",
    "Comments":
        "I think this is the best app i have found, it gives enough templates to design any type of apps."
  },
  {
    "name": "Aarohi",
    "profile": "assets/images/pic5.jpg",
    "likes": "1,093 Likes",
    "image": "assets/images/post8.jpg",
    "Comments": " Keep developing.. & share your source code."
  },
];

List<String> listUserName = [
  "Anny Roy",
  "Hinal Akbari",
  "Sunny ",
  "Aayushi",
  "Aarohi",
  "Westly",
  "Smith",
  "abcd",
  "temp",
  "Nicky",
  "Rocky",
];

class _HomePageState extends State<HomePage> {
  //Fluttertoast fToast=Fluttertoast();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    const snackBar = SnackBar(
      content: Text('Yay! A SnackBar!'),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.camera_alt_outlined,
          color: Color.fromARGB(255, 59, 61, 66),
        ),
        title: Center(
            child: Text(appName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: "BlueViny",
                ))),
        actions: const <Widget>[
          Icon(
            Icons.access_alarm_rounded,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: ImageIcon(
              AssetImage("assets/images/send.png"),
              color: Color.fromARGB(255, 59, 61, 66),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          //stories & watch all
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 8, right: 8),
            child: Row(
              children: [
                const Text("Stories",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                const Spacer(),
                TextButton.icon(
                  // <-- TextButton
                  onPressed: () {
                    // ignore_for_file: avoid_print
                    print("Total Object :::::$listProfile.length");
                  },
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                    size: 24.0,
                    color: Colors.black,
                  ),
                  label: const Text(
                    'Watch All',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          //horizontal ListView
          Row(
            children: [
              Expanded(
                child: Container(
                    height: height * 0.11,
                    color: Colors.white,
                    child: ListView.separated(
                        itemCount: listProfile.length,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(width: 8),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.yellow,
                                  Colors.deepOrange,
                                  Colors.red,
                                  Colors.purple,
                                ]),
                                shape: BoxShape.circle),
                            child: Padding(
                              //this padding will be you border size
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  foregroundImage:
                                      AssetImage(listProfile[index]),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 98.0),
                                    child: Center(
                                      child: Text(
                                        listUserName[index],
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        })),
              )
            ],
          ),
          //PostListView
          const Divider(
            height: 1,
            color: Colors.grey,
          ),

          Expanded(
              //height: height * 0.74,
              child: ListView.separated(
            itemCount: listUserPostData.length,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: userProfilePicCircleImage(
                            listUserPostData[index]["profile"],
                            listUserPostData[index]["name"],
                            height,
                            width),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(listUserPostData[index]["name"],
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold)),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                shape: const RoundedRectangleBorder(
                                  // <-- SEE HERE
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(12.0),
                                  ),
                                ),
                                builder: (context) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(5.0),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 2,
                                                          color: Colors.grey),
                                                      borderRadius:
                                                          const BorderRadius.all(
                                                              Radius.circular(
                                                                  50)),
                                                    ),
                                                    child: IconButton(
                                                      icon: const Icon(
                                                          Icons.share_outlined),
                                                      color: Colors.black,
                                                      iconSize: 30,
                                                      onPressed: () {},
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10.0),
                                                    child: Text(
                                                      "Share",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(5.0),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 2,
                                                          color: Colors.grey),
                                                      borderRadius:
                                                          const BorderRadius.all(
                                                              Radius.circular(
                                                                  50)),
                                                    ),
                                                    child: IconButton(
                                                      icon: const Icon(
                                                          Icons.link_outlined),
                                                      color: Colors.black,
                                                      iconSize: 30,
                                                      onPressed: () {},
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10.0),
                                                    child: Text(
                                                      "Share",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(5.0),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 2,
                                                          color: Colors.grey),
                                                      borderRadius:
                                                          const BorderRadius.all(
                                                              Radius.circular(
                                                                  50)),
                                                    ),
                                                    child: IconButton(
                                                      icon: const Icon(
                                                          Icons.report_outlined),
                                                      color: Colors.black,
                                                      iconSize: 30,
                                                      onPressed: () {},
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10.0),
                                                    child: Text(
                                                      "Share",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ]),
                                      ),
                                      ListTile(
                                        title: const Text('Remix This Reel'),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                      ListTile(
                                        title: const Text(
                                            'Why you are seeing this Post'),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                      ListTile(
                                        title: const Text('Add to Favorites'),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                      ListTile(
                                        title: const Text('Hide'),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                      ListTile(
                                        title: const Text('Unfollow'),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  );
                                });
                          },
                          icon: const Icon(Icons.more_horiz)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                    child: Column(
                      children: [
                        Container(
                            height: height * .50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      listUserPostData[index]["image"]),
                                  fit: BoxFit.fill),
                              // borderRadius: const BorderRadius.all(
                              //     Radius.circular(10))
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 4.0, top: 10.0, bottom: 5.0),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Fluttertoast.showToast(
                                      msg: "You clicked Like Button.",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.blueAccent[400],
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                },
                                child: const ImageIcon(
                                  AssetImage("assets/images/heart.png"),
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Fluttertoast.showToast(
                                      msg: "You clicked comment button.",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.blueAccent[300],
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                },
                                child: const ImageIcon(
                                    AssetImage("assets/images/comment.png"),
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Fluttertoast.showToast(
                                      msg: "You clicked share button.",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.blueAccent[400],
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                },
                                child: const ImageIcon(
                                    AssetImage("assets/images/send.png"),
                                    color: Colors.black),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content:
                                        const Text("You Clicked Saved Button."),
                                    behavior: SnackBarBehavior.fixed,
                                    action: SnackBarAction(
                                      label: 'Action',
                                      onPressed: () {
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                      },
                                    ),
                                  ));
                                },
                                child: const ImageIcon(
                                    AssetImage("assets/images/bookmark.png"),
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, top: 5.0),
                              child: Text(
                                listUserPostData[index]["likes"],
                                style: const TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              width: width * 0.94,
                              child: DescriptionTextWidget(
                                  text: listUserPostData[index]["Comments"]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: "Share",
                icon: Icon(Icons.share),
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                icon: Icon(Icons.link_outlined),
                label: 'Likes',
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
              icon: Icon(Icons.report),
              label: 'Report',
              backgroundColor: Colors.transparent,
            ),
          ],
          //type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
          elevation: 7),
    );
  }

  Widget userProfilePicCircleImage(
      String userProfilePath, String userName, double height, double width) {
    return Container(
      height: height * 0.05,
      width: height * 0.05,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.yellow,
            Colors.deepOrange,
            Colors.red,
            Colors.purple,
          ]),
          shape: BoxShape.circle),
      child: Padding(
        //this padding will be you border size
        padding: const EdgeInsets.all(2.0),
        child: Container(
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            foregroundImage: AssetImage(userProfilePath),
            child: Padding(
              padding: const EdgeInsets.only(top: 98.0),
              child: Center(
                child: Text(
                  userName,
                  style: const TextStyle(color: Colors.black, fontSize: 13),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
