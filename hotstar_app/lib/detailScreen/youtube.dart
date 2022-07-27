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
    super.initState();
    const url = "https://www.youtube.com/watch?v=_2aWqecTTuE";

    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
          mute: false, loop: false, autoPlay: true, hideControls: false),
    )..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
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
              Text('${controller.metadata.duration.inSeconds}  Seconds'),
            ],
          ),
        ),
      );
}
