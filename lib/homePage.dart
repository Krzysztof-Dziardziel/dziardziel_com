import 'package:flutter/material.dart';
import 'NavBar/navBar.dart';
import 'homeBanner/homeBanner.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            NavBar(),
            HomeBanner(),
          ],
        ),
      ),
    );
  }
}
