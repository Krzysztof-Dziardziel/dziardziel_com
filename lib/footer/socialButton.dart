import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatelessWidget {
  SocialButton({this.link, this.img});

  final String link;
  final String img;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => launch(link),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          height: 0.04 * height,
          child: Image(
            image: AssetImage(img),
          ),
        ),
      ),
    );
  }
}
