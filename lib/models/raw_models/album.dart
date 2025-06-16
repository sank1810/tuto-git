import 'package:musique/models/raw_models/artist.dart';
import 'package:musique/models/raw_models/song.dart';

class Album {
  String title;
  Artist artist;
  List<Song> song;
  Album({required this.artist, required this.title, required this.song});
}
