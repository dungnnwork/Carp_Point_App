import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../dependent_app/text_style.dart';

class TitleDetail extends StatelessWidget {
  final String? title;
  final Widget? widgetLeft;
  final Widget? widgetRight;
  const TitleDetail({
    Key? key,
    required this.title,
    this.widgetLeft,
    this.widgetRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 71.h, left: 17.w, right: 18.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              padding: EdgeInsets.zero,
              width: 24.w,
              height: 24.h,
              child: widgetLeft,
            ),
          ),
          Text(
            title!,
            style: titlePage,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.zero,
              width: 24.w,
              height: 24.h,
              child: widgetRight,
            ),
          ),
        ],
      ),
    );
  }
}
