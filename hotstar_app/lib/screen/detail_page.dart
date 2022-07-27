

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotstar_app/model/arguments.dart';
import 'package:hotstar_app/model/datamodel.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailPage extends StatefulWidget {
  static const routeName = '/DetailPage';
  const DetailPage({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

final List<String> _listLatestWallpaper = [
  "assets/hollywood/dracula.jpg",
  "assets/hollywood/gijoe.jpg",
  "assets/hollywood/ironMan.jpg",
  "assets/hollywood/major.jpg",
  "assets/hollywood/mortal.jpg",
  "assets/hollywood/peak.jpg",
  "assets/hollywood/rogue.jpg",
  "assets/hollywood/thor.jpg",
  "assets/hollywood/train.jpg",
];

final List<String> _imagesList = [
  "assets/images/1.jpeg",
  "assets/images/2.jpeg",
  "assets/images/3.jpeg",
  "assets/images/4.jpeg",
  "assets/images/5.jpeg",
  "assets/images/6.jpeg",
  "assets/images/7.jpeg",
  "assets/images/8.jpeg",
  "assets/images/9.jpeg",
];

class _DetailPageState extends State<DetailPage> {
  late YoutubePlayerController controller;
  List<User> items = [];

  String text = "";
  String videoLink = "";

  @override
  void initState() {
   // items = UserList.getUserDetails();

    String videoLink = widget.user.image!;

    print("Data Update Detail Page");
    print(videoLink);


    videoLink="https://www.youtube.com/watch?v=bd3JmlIxQXM";
    YoutubePlayer.convertUrlToId(videoLink);
    controller = YoutubePlayerController(
      initialVideoId: videoLink,
      flags: const YoutubePlayerFlags(
          mute: false, loop: false, autoPlay: true, hideControls: false),
    )..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
    super.initState();
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    // final  argument = ModalRoute.of(context)!.settings.arguments;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final Arguments args =
        ModalRoute.of(context)!.settings.arguments as Arguments;
    videoLink = args.videoLink;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness:
              Brightness.dark, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        centerTitle: false,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(args.title),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.40,
              width: width,
              child: YoutubePlayerBuilder(
                player: YoutubePlayer(
                  controller: controller,
                  showVideoProgressIndicator: true,
                ),
                builder: (context, player) => Scaffold(
                  appBar: AppBar(title: const Text("Youtube Player")),
                  body: ListView(
                    children: [
                      player,
                      Text(controller.metadata.title),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(controller.metadata.author),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                          '${controller.metadata.duration.inSeconds}  Seconds'),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 39, 38, 38),
              padding: const EdgeInsets.all(5.0),
              //margin: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 67, 64, 64),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text("English")),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 44, 43, 43),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: const Text("Hindi")),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: height * 0.12,
                      width: width * 0.17,
                      child: Image.asset(args.image, fit: BoxFit.fill)),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(args.title,
                            style: const TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        const Padding(
                          padding: EdgeInsets.only(top: 6.0, bottom: 4.0),
                          child: Text("Action",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  color: Color.fromARGB(137, 184, 180, 180),
                                  fontWeight: FontWeight.w500)),
                        ),
                        const Text("2016 . U/A 13+",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Color.fromARGB(137, 184, 180, 180),
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "The Coast Guard makes a daring rescue attempt off the coast of cape cod after a pair of oil tankers are ... More",
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Color.fromARGB(137, 184, 180, 180),
                      fontWeight: FontWeight.w400)),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Starring Ben Foster,Chris Pine,Casey Affleck ",
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Color.fromARGB(137, 184, 180, 180),
                      fontWeight: FontWeight.w400)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0, top: 5.0),
                    child: ElevatedButton.icon(
                        icon: const Icon(Icons.download_for_offline_outlined),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 86, 84, 84),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        label: const Text("Download")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0, top: 5.0),
                    child: ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 86, 84, 84),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        label: const Text("WatchList")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0, top: 5.0),
                    child: ElevatedButton.icon(
                        icon: const Icon(Icons.share),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 86, 84, 84),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        label: const Text("share")),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "More Like This",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_right_sharp))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                color: Colors.transparent,
                height: height * 0.20,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: _listLatestWallpaper.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 6,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: width * 0.30,
                      height: height * 0.50,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image(
                              image: AssetImage(_listLatestWallpaper[index]),
                              fit: BoxFit.fill)),
                    );
                  },
                ),
              ),
            ),
            Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Trailers & Extras",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_right_sharp))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                color: Colors.transparent,
                height: height * 0.20,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: _imagesList.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 6,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: width * 0.30,
                      height: height * 0.50,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image(
                              image: AssetImage(_imagesList[index]),
                              fit: BoxFit.fill)),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
