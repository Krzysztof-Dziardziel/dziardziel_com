import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final Color red = Hexcolor("#FB3640");
final Color yellow = Hexcolor("#FED766");
final Color gray = Hexcolor("#8E8E8E");
final Color darkGray = Hexcolor("#707070");

class HomeBannerClip extends CustomClipper<Path> {
  @override
  Path getClip(size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class LeftClip extends CustomClipper<Path> {
  @override
  Path getClip(size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class RightClip extends CustomClipper<Path> {
  @override
  Path getClip(size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
