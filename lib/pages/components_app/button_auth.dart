import 'package:carp_point_app/pages/dependent_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonAuth extends StatelessWidget {
  final String text;
   // ignore: prefer_const_constructors_in_immutables
   ButtonAuth({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w),
        color: kbuttonBackgroundColors,
      ),
      padding: EdgeInsets.zero,
      height: 48.h,
      child: Center(
        child: Text(text),
      ),
    ),
   );
  }
}