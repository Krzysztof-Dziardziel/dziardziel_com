import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class RightWidget extends StatelessWidget {
  RightWidget({this.logo, this.mainText, this.img, this.stack});
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
      child: Stack(
        children: [
          Container(
            color: red,
          ),
          ClipPath(
            child: Container(
              color: Colors.white,
            ),
            clipper: RightClip(),
          ),
          Row(
            children: [
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
              Container(
                width: 0.17 * width,
              ),
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
            ],
          )
        ],
      ),
    );
  }
}
