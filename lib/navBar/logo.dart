import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width * 0.1,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/navBar/signature@2x.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}