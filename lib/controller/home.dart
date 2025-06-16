import 'package:flutter/material.dart';
import 'package:musique/models/raw_models/bar_choice.dart';
import 'package:musique/views/music_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<BarChoice> items = [
    BarChoice(label: "Musique", iconData: Icons.music_note, page: MusicView()),
    BarChoice(label: "Favoris", iconData: Icons.whatshot, page: Container()),
    BarChoice(label: "Recherche", iconData: Icons.search, page: Container()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Spacer(),
                    Icon(Icons.radio),
                    Icon(Icons.doorbell),
                    Icon(Icons.settings),
                  ],
                ),
                items[currentIndex].titleForAppBar,
              ],
            ),
          ),
        ),
      ),
      body: items[currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: items.map((i) => i.item).toList(),
        onTap: barTapped,
      ),
    );
  }

  barTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
