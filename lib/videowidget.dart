import 'package:flutter/material.dart';
import 'main.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key, required this.index_car});

  final int index_car;

  @override
  Widget build(BuildContext context){
    String? videoID;
    videoID = YoutubePlayerController.convertUrlToId(autoList[index_car].videoPath);
    final _controller = YoutubePlayerController(params:  YoutubePlayerParams(mute: false, showControls: true, showFullscreenButton: true));
    _controller.loadVideoById(videoId: videoID.toString());
    return Container();
  }
}
