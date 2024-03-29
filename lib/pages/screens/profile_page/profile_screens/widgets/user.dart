import 'package:carp_point_app/pages/screens/profile_page/profile_screens/individual.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../dependent_app/constants.dart';
import '../account.dart';
import '../person_information.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.only(left: 10.w, top: 12.h, right: 6.w, bottom: 12.h),
      width: 339.w,
      height: 89.h,
      decoration: BoxDecoration(
        color: const Color(0xfffff8dd).withOpacity(0.5),
        borderRadius: BorderRadius.circular(10.w),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 26,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Individual()));
              },
              child: Row(
                children: [
                  Container(
                    width: 56.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 4),
                            blurRadius: 4,
                            color: const Color(0xffA4A4A4).withOpacity(0.25)),
                      ],
                      border: Border.all(
                        // width: 375.w,
                        color: kBackgroundColors,
                        style: BorderStyle.solid,
                      ),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/avatar.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kim Ngân",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/Group 160.png"),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Hạng Tiêu Chuẩn",
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 3.h,
                              left: 9.w,
                              right: 6.5.h,
                              bottom: 3.h,
                            ),
                            decoration: BoxDecoration(
                              color: kBackgroundColors,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(31.25)),
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
                                  "1000",
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 11.w,
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 89.h,
              padding: EdgeInsets.only(top: 6.h, bottom: 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PersonInformation()));
                    },
                    child: Container(
                      width: 8.w,
                      height: 14.h,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/Chevron_Right.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Account()));
                    },
                    child: Container(
                      width: 8.w,
                      height: 14.h,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/Chevron_Right.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
