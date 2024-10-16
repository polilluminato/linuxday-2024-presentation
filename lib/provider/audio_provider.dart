import 'package:audioplayers/audioplayers.dart';

class AudioProvider {
  final AudioPlayer audioPlayer;

  AudioProvider(this.audioPlayer);

  Future<void> playAssetSource(String path) async {
    audioPlayer.play(AssetSource(path));
  }

  Future<void> playRemoteSource(String path) async {
    audioPlayer.play(UrlSource(path));
  }

  Future<void> stop() async {
    audioPlayer.stop();
  }

  Future<void> pause() async {
    audioPlayer.pause();
  }
}
