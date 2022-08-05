import 'package:carp_point_app/pages/dependent_app/constants.dart';
import 'package:carp_point_app/pages/dependent_app/text_style.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonAuth extends StatelessWidget {
  final String text;
  final GestureTapCallback? onPressed;
   // ignore: prefer_const_constructors_in_immutables
   ButtonAuth({Key? key, required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return ElevatedButton(
    style: ButtonStyle(
     
      backgroundColor: MaterialStateProperty.all(kbuttonBackgroundColors),
    ),
    onPressed: onPressed,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w),
        color: kbuttonBackgroundColors,
      ),
      height: 48.h,
      child: Center(
        child: Text(text,style: textButtonStyle,
      ),
    ),
    ),
   );
  }
}