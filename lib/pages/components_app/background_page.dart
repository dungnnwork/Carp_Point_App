import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../dependent_app/constants.dart';

class BackgroundPage extends StatelessWidget {
  const BackgroundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 812.h,
      width: 375.w,
      decoration: BoxDecoration(
        gradient: kLineargradientBackgroundColors,
      ),
      child: Container(
        padding: EdgeInsets.only(
          right: 73.w,
        ),
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          fit: StackFit.loose,
          textDirection: TextDirection.ltr,
          children: [
            Image.asset(
              "assets/images/Ellipse 14.png",
              height: 224.h,
              width: 332.w,
            ),
            Image.asset(
              "assets/images/Ellipse 15.png",
              width: 277.w,
              height: 220.h,
            ),
            Image.asset(
              "assets/images/Ellipse 16.png",
              height: 216.h,
              width: 240.w,
            ),
          ],
        ),
      ),
    );
  }
}
