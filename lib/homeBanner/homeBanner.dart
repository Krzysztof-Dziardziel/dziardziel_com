import 'package:dziardziel_com/constants.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 0.7 * height,
      child: Row(
        children: [
          Container(
            height: 0.7 * height,
            width: width * 0.35,
            color: yellow,
            child: CircularPhoto(),
          ),
          Container(
            width: width * 0.17,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/divider@2x.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: width * 0.48,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class CircularPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
