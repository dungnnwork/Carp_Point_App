

import 'package:carp_point_app/pages/screens/profile_page/profile_screens/user_profile_page/widget/person_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../dependent_app/constants.dart';
import '../../../dependent_app/text_style.dart';


class Welcome extends StatelessWidget {
  final String userName;
  final String rating;
  final String numberPoints;
  final String avatarUser;
  const Welcome({
    Key? key,
    required this.userName,
    required this.rating,
    required this.numberPoints,
    required this.avatarUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() =>   PersonInformation());
      },
      child: Container(
        padding: EdgeInsets.only(
          left: 18.w,
          right: 18.w,
          top: 61.h,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      color: const Color(0xffA4A4A4).withOpacity(0.25)),
                ],
                border: Border.all(
                  width: 375.w,
                  color: kBackgroundColors,
                  style: BorderStyle.solid,
                ),
                image: DecorationImage(
                  image: AssetImage(avatarUser),
                ),
              ),
            ),
            SizedBox(width: 18.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Xin chào $userName!',
                  style: nameBrandBigBlack,
                ),
                SizedBox(height: 6.h),
                Row(
                  children: [
                    Text(
                      rating,
                      style: nameBrandSmallBlack,
                    ),
                    SizedBox(width: 12.w),
                    Container(
                      padding: EdgeInsets.only(
                        top: 3.h,
                        left: 9.w,
                        right: 6.5.h,
                        bottom: 3.h,
                      ),
                      decoration: BoxDecoration(
                        color: kBackgroundColors,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(31.25)),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                              color: kTextTitleBigColors.withOpacity(0.1))
                        ],
                      ),
                      child: Row(
                        children: [
                          Text(
                            numberPoints,
                            style: TextStyle(
                              color: const Color(0xffC19700),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Image.asset('assets/icons/user_point.png'),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            Image.asset('assets/icons/notification.png'),
          ],
        ),
      ),
    );
  }
}
