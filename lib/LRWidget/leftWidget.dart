import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class LeftWidget extends StatelessWidget {
  LeftWidget({this.logo, this.mainText, this.img, this.stack});
  final logo;
  final mainText;
  final img;
  final stack;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 0.4 * height,
      child: Row(
        children: [
          Container(
            width: width * 0.48,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                10,
                10,
                0,
                10,
              ),
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
                    child: SelectableText(
                      mainText,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        color: gray,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("a"),
                        Text('B'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: width * 0.17,
            child: Stack(
              children: [
                Container(
                  color: Colors.white,
                ),
                ClipPath(
                  child: Container(
                    width: width,
                    color: red,
                  ),
                  clipper: LeftClip(),
                )
              ],
            ),
          ),
          Container(
            width: width * 0.35,
            color: red,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: red,
                  image: DecorationImage(
                    image: AssetImage(img),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
