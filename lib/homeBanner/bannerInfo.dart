import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class BannerInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Howdy!",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 70,
                      color: darkGray),
                ),
                Row(
                  children: [
                    Container(
                      width: 0.01 * width,
                      child: Expanded(
                        child: Divider(
                          color: gray,
                          thickness: 3,
                        ),
                      ),
                    ),
                    Text(
                      "INTRODUCTION",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: gray),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "JS & Flutter Developer\nYear 13 A-Level Student",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400, fontSize: 25, color: gray),
                ),
                Text(
                  "ALWAYS EAGER TO TRY A NEW CHALLENGE;\nJUST LET ME KNOW!",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w200, fontSize: 18, color: gray),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
