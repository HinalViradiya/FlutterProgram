import 'package:flutter/material.dart';
import 'package:instagram_ui/custom_widget/description_text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

String appName = "Instagram";

List<String> listProfile = [
  "assets/profile/pic1.jpg",
  "assets/profile/pic2.jpg",
  "assets/profile/pic3.jpg",
  "assets/profile/pic4.jpg",
  "assets/profile/pic5.jpg",
  "assets/profile/pic6.jpg",
  "assets/profile/pic7.png",
  "assets/profile/pic8.jpg",
  "assets/profile/pic9.jpg",
  "assets/profile/pic10.jpg",
  "assets/profile/pic11.jpg",
];

List<Map<String, dynamic>> listUserPostData = [
  {
    "name": "Anny Roy",
    "profile": "assets/profile/pic1.jpg",
    "likes": "1,024 Likes",
    "image": "assets/images/post/post1.jpg",
    "Comments":
        "Fantastic app, It has everything. You dont need to spend time of UI just import this UIs and focus on Coding part."
  },
  {
    "name": "Hinal Akbari",
    "profile": "assets/profile/pic2.jpg",
    "likes": "3,352 Likes",
    "image": "assets/images/post/post2.jpg",
    "Comments":
        "Best app for reference and great resource. Really helpful for learning and also to develop great Material UI. Keep developing.."
  },
  {
    "name": "Sunny",
    "profile": "assets/profile/pic3.jpg",
    "likes": "21 Likes",
    "image": "assets/images/post/post3.jpg",
    "Comments":
        "I think this is the best app i have found, it gives enough templates to design any type of apps . Huge thanks to the developer. 😊😊😊"
  },
  {
    "name": "Aayushi",
    "profile": "assets/profile/pic4.jpg",
    "likes": "102 Likes",
    "image": "assets/images/post/post4.jpg",
    "Comments":
        "I think this is the best app i have found, it gives enough templates to design any type of apps."
  },
  {
    "name": "Aarohi",
    "profile": "assets/profile/pic5.jpg",
    "likes": "1,093 Likes",
    "image": "assets/images/post/post5.jpg",
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
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
              AssetImage("assets/images/share_post.ico"),
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
                    height: 120,
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
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
            child: Row(
              children: [
                userProfilePicCircleImage(listProfile[2], listUserName[2]),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(listUserName[3],
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold)),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
              ],
            ),
          ),
          Container(
              height: 400,
              child: ListView.separated(
                itemCount:listUserPostData.length,
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  return Container(
                   child :Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                    height: 350,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(listUserPostData[index]["image"]),
                            fit: BoxFit.cover),
                        borderRadius: const BorderRadius.all(Radius.circular(10)))),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const[
                       ImageIcon(AssetImage("assets/images/heart.png"),
                          color: Colors.black,),
                          SizedBox(width: 10,),
                       ImageIcon(AssetImage("assets/images/comment.png"),
                          color: Colors.black),                       
                        SizedBox(width: 10,),ImageIcon(AssetImage("assets/images/send.png"),
                          color: Colors.black),
                       Spacer(),
                       ImageIcon(AssetImage("assets/images/bookmark.png"),
                          color: Colors.black),
                    ],
                  ),
                ),
                Align(
                      child: Text(
                      listUserPostData[index]["likes"],
                      textAlign: TextAlign.right,
                )),
                Container(
        child: new DescriptionTextWidget(text: listUserPostData[index]["Comments"]),
      ),
              ],
            ),
          ),
                  );
                },
              )
          ),

          
          
        ],
      ),
    );
  }



  Widget userProfilePicCircleImage(String userProfilePath, String userName) {
    return Container(
      height: 50,
      width: 40,
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
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  foregroundImage: AssetImage(userProfilePath),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
