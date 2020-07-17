import 'package:flutter/material.dart';
import 'package:dziardziel_com/constants.dart';
import 'logo.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.1,
      width: width,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 0.01 * height,
          horizontal: 0.015 * width,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Logo(height: height, width: width),
            Container(
              child: Row(
                children: [
                  Text(
                    "About me",
                    style: TextStyle(color: gray),
                  ),
                  VerticalDivider(),
                  Text(
                    "Portfolio",
                    style: TextStyle(color: gray),
                  ),
                  VerticalDivider(),
                  Text(
                    "Contact",
                    style: TextStyle(color: gray),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
