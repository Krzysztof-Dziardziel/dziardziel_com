import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class BannerInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        width * 0.03,
        0,
        0,
        0,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    "Howdy!",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 70,
                        color: darkGray),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          width: 0.02 * width,
                          child: Expanded(
                            child: Divider(
                              color: gray,
                              thickness: 2,
                            ),
                          ),
                        ),
                      ),
                      SelectableText(
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
                  SelectableText(
                    "JS & Flutter Developer\nYear 13 A-Level Student",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400, fontSize: 25, color: gray),
                  ),
                  SelectableText(
                    "ALWAYS EAGER TO TRY A NEW CHALLENGE;\nJUST LET ME KNOW!",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300, fontSize: 20, color: gray),
                  ),
                ],
              ),
            ),
            FlatButton(
              color: yellow,
              onPressed: () => launch('mailto:krzysztof@dziardziel.com'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  'CONTACT ME',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
