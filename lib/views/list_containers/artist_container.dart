import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtistContainer extends StatelessWidget {
  const ArtistContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [Text("Artistes", style: GoogleFonts.signika(fontSize: 20))],
      ),
    );
  }
}
