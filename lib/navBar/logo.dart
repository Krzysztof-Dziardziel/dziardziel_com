import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/navBar/signature@2x.png'),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
