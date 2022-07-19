import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../dependent_app/constants.dart';
import '../../../../../dependent_app/text_style.dart';

class TitleBackGroundProduct extends StatelessWidget {
  const TitleBackGroundProduct(
      {Key? key, required this.title, required this.onPress})
      : super(key: key);

  final String? title;
  final Function? onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      margin: EdgeInsets.only(top: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title!,
            style: TextStyle(
              color: kTextTitleBigColors,
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
            ),
          ),
          GestureDetector(
            onTap: onPress as Function(),
            child: Text(
              "Xem tất cả",
              style: viewALL,
            ),
          ),
        ],
      ),
    );
  }
}
