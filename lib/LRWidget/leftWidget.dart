import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class LeftWidget extends StatelessWidget {
  LeftWidget(
      {this.logo,
      this.mainText,
      this.img,
      this.stack,
      this.goto,
      this.code,
      this.isCodeDisabled = false});
  final logo;
  final mainText;
  final img;
  final stack;
  final goto;
  final code;
  final dynamic isCodeDisabled;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 0.4 * height,
      child: Stack(
        children: [
          Container(
            color: red,
          ),
          ClipPath(
            child: Container(
              color: Colors.white,
            ),
            clipper: LeftClip(),
          ),
          Row(
            children: [
              Container(
                width: 0.49 * width,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Image(
                              height: 0.07 * height,
                              image: AssetImage(logo),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              child: Wrap(
                                spacing: 15,
                                children: [
                                  if (stack.contains('flutter'))
                                    Image(
                                      height: 0.07 * height,
                                      image: AssetImage(
                                        'assets/technologies/flutter@2x.png',
                                      ),
                                    ),
                                  if (stack.contains('js'))
                                    Image(
                                      height: 0.07 * height,
                                      image: AssetImage(
                                        'assets/technologies/js@2x.png',
                                      ),
                                    ),
                                  if (stack.contains('nodejs'))
                                    Image(
                                      height: 0.07 * height,
                                      image: AssetImage(
                                        'assets/technologies/nodejs@2x.png',
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: AutoSizeText(
                          mainText,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            color: gray,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FlatButton(
                              color: red,
                              onPressed: () => launch(goto),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Icon(
                                        Icons.visibility,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'SEE IT',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            FlatButton(
                              color: isCodeDisabled ? darkGray : red,
                              onPressed: () => launch(code),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Icon(
                                        Icons.code,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'CODE',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 0.17 * width,
              ),
              Container(
                width: 0.34 * width,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(img),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
