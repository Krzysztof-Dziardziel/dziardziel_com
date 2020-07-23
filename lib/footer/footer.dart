import 'package:dziardziel_com/constants.dart';
import 'package:dziardziel_com/footer/socialButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 0.25 * height,
      width: width,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 0.08 * height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/navBar/signature@2x.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    'Thanks for scrolling.',
                    style: GoogleFonts.roboto(
                      color: darkGray,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'That\'s all guys.',
                    style: GoogleFonts.roboto(
                      color: darkGray,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      link: 'https://www.linkedin.com/in/krzysztofdziardziel/',
                      img: 'assets/footer/linkedin@2x.png',
                    ),
                    SocialButton(
                      link: 'mailto:krzysztof@dziardziel.com',
                      img: 'assets/footer/email@2x.png',
                    ),
                    SocialButton(
                      link: 'https://github.com/Krzysztof-Dziardziel',
                      img: 'assets/footer/github@2x.png',
                    ),
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'This website has been made using',
                      style: GoogleFonts.roboto(
                          color: darkGray,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Image(
                            height: 0.04 * height,
                            image: AssetImage(
                              'assets/technologies/flutter@2x.png',
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
