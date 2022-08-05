import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../dependent_app/text_style.dart';

class IntroducePartnerDetail extends StatelessWidget {
  const IntroducePartnerDetail({
    Key? key,
    required this.image,
    required this.name,
    required this.typeAndress,
  }) : super(key: key);
  final String? image;
  final String? name;
  final String? typeAndress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Row(
        children: [
          SizedBox(
            height: 67.h,
            width: 67.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0.w),
              child: Image.asset('assets/images/coffe_house 67_67.png'),
            ),
          ),
          SizedBox(width: 8.w),
          DottedLine(
            direction: Axis.vertical,
            lineLength: 67.h,
            lineThickness: 1.w,
            dashLength: 1.86.h,
            dashGapLength: 1.86.h,
            dashColor: const Color(0xffA1A1A1),
          ),
          SizedBox(width: 17.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The coffee house',
                style: nameBrandBigBlack,
              ),
              SizedBox(height: 8.h),
              Text(
                'Nhà hàng',
                style: typeBrandBigYellow,
              ),
            ],
          )
        ],
      ),
    );
  }
}