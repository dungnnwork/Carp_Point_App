import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../dependent_app/constants.dart';

class BackGroundProduct extends StatelessWidget {
  const BackGroundProduct({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      decoration: BoxDecoration(
        color: kBackgroundColors,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -3),
              blurRadius: 4.0,
              color: kTextTitleBigColors.withOpacity(0.1)),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.w),
          topRight: Radius.circular(20.w),
        ),
      ),
      child: child,
    );
  }
}
