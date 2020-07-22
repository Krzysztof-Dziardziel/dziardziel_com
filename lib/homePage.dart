import 'package:flutter/material.dart';
import 'LRWidget/leftWidget.dart';
import 'LRWidget/rightWidget.dart';
import 'NavBar/navBar.dart';
import 'homeBanner/homeBanner.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: ListView(
          children: [
            NavBar(),
            HomeBanner(),
            LeftWidget(
              logo: 'assets/eGalileo/eGalileo@2x.png',
              mainText:
                  'A place where you can sell your mind.\neGalileo is an innovative way to connect teachers and students from around the world, allowing them to conduct 1-to-1 tutoring lessons and provide income source for scientifically gifted people.',
              img: 'assets/egalileo/imac@2x.png',
              stack: 'nodejs, js',
              goto: 'https://e-galileo.net',
              isCodeDisabled: true,
            ),
            RightWidget(
              logo: 'assets/coffeeBook/coffeeBook@2x.png',
              mainText:
                  'Brew your coffee at its best.\nSave your brews in coffee journal, which helps you to tailor each cup exactly to your taste. Synchronize your brews across your devices to get a perfect cup of coffee wherever you are.',
              img: 'assets/eGalileo/imac@2x.png',
              stack: 'flutter',
              code: 'https://github.com/Krzysztof-Dziardziel/coffeeBook',
            ),
            LeftWidget(
                logo: 'assets/PayR/PayR@2x.png',
                mainText:
                    'Process traditional bank transfers from your clients instantly.\nBy analyzing bank statements PayR tells you how much each of your clients paid in current billing period so you can save your precious time you\'d otherwise spend on doing it by hand.',
                img: 'assets/eGalileo/imac@2x.png',
                stack: 'js, nodejs',
                goto:
                    'https://github.com/Krzysztof-Dziardziel/PayR/blob/master/README.md',
                code: 'https://github.com/Krzysztof-Dziardziel/PayR'),
          ],
        ),
      ),
    );
  }
}
