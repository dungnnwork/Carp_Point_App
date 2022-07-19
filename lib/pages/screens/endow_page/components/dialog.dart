import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Dialog extends StatelessWidget {
  const Dialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.w),
          color: const Color(0xffffffff),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        margin: EdgeInsets.only(top: 247.h),
        height: 200.h,
        child: const Dialog(),
      );
  
  }
}