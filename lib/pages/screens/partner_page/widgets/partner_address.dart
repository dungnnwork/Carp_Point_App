import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../dependent_app/constants.dart';
import '../../../dependent_app/text_style.dart';
import '../detail_partner_page/detail_partner_page.dart';

class PartnerAddress extends StatelessWidget {
  const PartnerAddress({
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
    return GestureDetector(
      onTap: (){
        Get.to(() => const DetailPartnerPage());
      },
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 75.h,
              width: 161.w,
              margin: EdgeInsets.only(bottom: 8.h),
              padding: EdgeInsets.only(top: 24.h, left: 5.w, bottom: 10.h),
              decoration: BoxDecoration(
                color: kBackgroundColors,
                borderRadius: BorderRadius.circular(5.w),
                boxShadow: [
                  BoxShadow(
                    color: kTextTitleBigColors.withOpacity(0.16),
                    blurRadius: 4.0,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name!,
                    style: nameBrandSmallBlack,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    typeAndress!,
                    style: typeBrandSmallYellow,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.w),
                topRight: Radius.circular(5.w),
              ),
              child: Image.asset(
                image!,
                fit: BoxFit.cover,
                height: 106.h,
                width: 161.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}