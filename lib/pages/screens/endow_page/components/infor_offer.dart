import 'package:carp_point_app/pages/screens/endow_page/components/button_endow.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../dependent_app/constants.dart';
import '../../../dependent_app/text_style.dart';

class InforOffer extends StatelessWidget {
  const InforOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 123.h, left: 18.w, right: 18.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 339.w,
            height: 129.h,
            padding: EdgeInsets.only(top: 123.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.52.w),
                image: const DecorationImage(
                  image: AssetImage("assets/images/hello summer 18.png"),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 13.h,
          ),
          DottedBorder(
            padding: EdgeInsets.zero,
            strokeWidth: 0.1.w,
            borderType: BorderType.RRect,
            radius: Radius.circular(10.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(8.w, 8.w, 0.0, 8.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/coffe_house 67_67.png"),
                      SizedBox(
                        width: 8.w,
                      ),
                      DottedLine(
                        direction: Axis.vertical,
                        lineLength: 67.h,
                        lineThickness: 1.w,
                        dashLength: 1.86.h,
                        dashGapLength: 1.86.h,
                        dashColor: const Color(0xffa1a1a1),
                      ),
                      SizedBox(
                        width: 17.w,
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ưu đãi giảm 15%",
                              style: nameBrandBigBlack,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "The coffee house",
                              style: nameBrandBigYellow,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Thời hạn:",
                                  style: address,
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Text(
                                  "30/06/2022",
                                  style: addressBrand,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 28.w,
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Image.asset("assets/images/Rectangle 56.png"),
                    Container(
                      padding: EdgeInsets.only(left: 11.w, top: 6.h),
                      child: Row(
                        children: [
                          Text(
                            "50",
                            style: TextStyle(
                              color: kTextPrimaryColors,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Image.asset("assets/images/Group 105.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            "Chi tiết",
            style: nameBrandSmallBlack,
          ),
          SizedBox(
            height: 8.h,
          ),
          const Text(
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable"),
          SizedBox(
            height: 12.h,
          ),
          const DottedLine(
            lineThickness: 0.1,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Điều kiện áp dụng",
            style: nameBrandSmallBlack,
          ),
          SizedBox(
            height: 8.h,
          ),
          const Text(
              "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text"),
          SizedBox(
            height: 12.h,
          ),
          const DottedLine(
            lineThickness: 0.1,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "Địa điểm áp dụng",
            style: nameBrandSmallBlack,
          ),
          SizedBox(
            height: 10.h,
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/download 2.png"),
                      fit: BoxFit.cover,
                    )),
                  ),
                  SizedBox(
                    width: 17.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The coffee house Duy Tân",
                        style: addressBrand,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/location1.png",
                            width: 11.w,
                            height: 13.h,
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          const Text("Số 6, the are many variations  "),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 9.h,
              ),
              Row(
                children: [
                  Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/download 2.png"),
                      fit: BoxFit.cover,
                    )),
                  ),
                  SizedBox(
                    width: 17.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The coffee house Ngoại giao đoàn",
                        style: addressBrand,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/location1.png",
                            width: 11.w,
                            height: 13.h,
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          const Text("Số 6, the are many variations  "),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          const ButtonEndow(),
        ],
      ),
    );
  }
}
