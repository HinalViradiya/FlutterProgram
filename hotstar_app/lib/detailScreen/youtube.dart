import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoScreen extends StatefulWidget {
  const YoutubeVideoScreen({Key? key}) : super(key: key);

  @override
  State<YoutubeVideoScreen> createState() => _YoutubeVideoScreenState();
}

class _YoutubeVideoScreenState extends State<YoutubeVideoScreen> {
  late YoutubePlayerController controller;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    const url ="https://www.youtube.com/watch?v=_2aWqecTTuE";

    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,loop: false,autoPlay: true
      ));
  }

@override
  void deactivate() {
    controller.pause();
    // TODO: implement deactivate
    super.deactivate();
  }
  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
    player: YoutubePlayer(controller: controller),
        builder: (context, player) => Scaffold(
          appBar: AppBar(title: const Text("Youtube Player")),
          body: ListView(children: [
            player
          ],),
        ),
      );
}
