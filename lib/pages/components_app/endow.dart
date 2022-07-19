import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../dependent_app/constants.dart';
import '../dependent_app/text_style.dart';
import '../screens/endow_page/components/offer_details.dart';

class Endow extends StatelessWidget {
  const Endow({
    Key? key,
    this.image,
    this.titleEndow,
    this.nameBrandEndow,
    this.numberPoints,
  }) : super(key: key);

  final String? image;
  final String? titleEndow;
  final String? nameBrandEndow;
  final int? numberPoints;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const OfferDetails()));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        decoration: BoxDecoration(
          color: kBackgroundColors,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 4.0,
              color: kTextTitleBigColors.withOpacity(0.16),
            ),
          ],
          borderRadius: BorderRadius.circular(5.w),
          border: Border.all(
            color: const Color(0xFFf4f4f4),
            width: 1.w,
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 125.w,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 4.h,
                  bottom: 4.h,
                  left: 4.w,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.w),
                  child: Image.asset(
                    image!,
                    fit: BoxFit.cover,
                    height: 94.h,
                  ),
                ),
              ),
            ),
            SizedBox(width: 18.w),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  top: 7.h,
                  right: 10.w,
                  bottom: 7.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titleEndow!,
                          style: textStyleTitleEndow,
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 16.w,
                            right: 16.w,
                            top: 5.h,
                            bottom: 4.h,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xfffff6d6),
                            borderRadius: BorderRadius.circular(
                              5.w,
                            ),
                          ),
                          child: Text(
                            nameBrandEndow!,
                            style: nameBrandBigYellow,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '$numberPoints',
                          style: textNumberPoints,
                        ),
                        SizedBox(width: 2.w),
                        Image.asset(
                          'assets/icons/point.png',
                          width: 11.6.w,
                          height: 12.h,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
