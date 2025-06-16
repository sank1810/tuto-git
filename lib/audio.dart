import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Audio extends StatefulWidget {
  const Audio({super.key});

  @override
  State<Audio> createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  AudioPlayer player = AudioPlayer();

  _play() async {
    await player.setSource(AssetSource("allegro.mp3"));
    player.resume();
  }

  _stop() async {
    await player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          FilledButton(onPressed: _play, child: Text("play")),
          FilledButton(onPressed: _stop, child: Text("Stop")),
        ],
      ),
    );
  }
}
