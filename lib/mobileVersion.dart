import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homePage.dart';

class MobileVersion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          LandscapeView(),
          Container(
            alignment: Alignment.center,
            color: Colors.grey.withOpacity(0.7),
            child: Text(
              'Your device has too small resolution and mobile version isn\'t ready yet.\nPlease enlarge the web window, use different device or come back later.',
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 50),
            ),
          ),
        ],
      ),
    );
  }
}
