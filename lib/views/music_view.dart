import 'package:flutter/material.dart';
import 'package:musique/views/list_containers/artist_container.dart';

class MusicView extends StatelessWidget {
  const MusicView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Divider(),
          //Container pour les artistes
          ArtistContainer(),
        ],
      ),
    );
  }
}
