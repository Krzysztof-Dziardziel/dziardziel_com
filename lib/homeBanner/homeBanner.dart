import 'package:dziardziel_com/constants.dart';
import 'package:flutter/material.dart';

import 'bannerInfo.dart';
import 'circularPhoto.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 0.7 * height,
      width: width,
      child: Stack(
        children: [
          Container(
            color: yellow,
          ),
          ClipPath(
            child: Container(
              color: Colors.white,
            ),
            clipper: HomeBannerClip(),
          ),
          Row(
            children: [
              Container(
                height: 0.7 * height,
                width: width * 0.35,
                child: CircularPhoto(),
              ),
              Container(
                width: width * 0.17,
                child: Stack(
                  children: [
                    Container(),
                    ClipPath(
                      child: Container(
                        width: width,
                      ),
                      clipper: HomeBannerClip(),
                    )
                  ],
                ),
              ),
              Container(
                width: width * 0.48,
                child: BannerInfo(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
