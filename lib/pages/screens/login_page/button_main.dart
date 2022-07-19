import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonMain extends Container {
  String text;
  ButtonMain({Key? key, required this.text}) : super(key: key);
  Container getButtonMain() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffFFD233),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            color: const Color(0xff1E1E1E),
            fontSize: 18.sp,
            fontWeight: FontWeight.w400),
      )),
    );
  }
}
