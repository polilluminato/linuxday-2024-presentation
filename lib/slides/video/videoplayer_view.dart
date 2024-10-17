import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class VideoPlayerView extends StatefulWidget {
  const VideoPlayerView({super.key});

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late final player = Player();
  late final controller = VideoController(player);

  @override
  void initState() {
    super.initState();

    final playable = Playlist(
      [
        Media(
            'https://download.blender.org/peach/bigbuckbunny_movies/big_buck_bunny_480p_stereo.avi'),
        Media('assets/video/sample-video.mp4'),
        Media(
            'https://www.peach.themazzone.com/durian/movies/sintel-1024-surround.mp4'),
        Media(
            'https://user-images.githubusercontent.com/28951144/229373695-22f88f13-d18f-4288-9bf1-c3e078d83722.mp4'),
        Media(
            'https://user-images.githubusercontent.com/28951144/229373709-603a7a89-2105-4e1b-a5a5-a6c3567c9a59.mp4'),
      ],
    );

    // Play a [Media] or [Playlist].
    player.setPlaylistMode(PlaylistMode.loop);
    player.open(
      playable,
      play: false,
    );
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Video(controller: controller),
    );
  }
}
