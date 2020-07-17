import 'package:flutter/material.dart';

class CircularPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: width * 0.3,
        height: width * 0.3,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/profile@2x.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
