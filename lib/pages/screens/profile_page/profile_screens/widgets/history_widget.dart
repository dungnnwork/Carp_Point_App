import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../dependent_app/constants.dart';
import '../../../../dependent_app/text_style.dart';

class History extends StatefulWidget {
  const History({
    Key? key,
  }) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    String dropdownvalue = "Tháng 10/2022";
    var items = [
      'Tháng 10/2022',
      'Tháng 11/2022',
      'Tháng 12/2022',
      'Tháng 01/2023',
    ];
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 12.w),
              height: 36.h,
              width: 339.w,
              decoration: BoxDecoration(
                color: const Color(0xfff4f4f4),
                borderRadius: BorderRadius.circular(2.w),
              ),
              child: DropdownButton(
                  icon: const Icon(Icons.keyboard_arrow_down),
                  value: dropdownvalue,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  }),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 15.h),
              height: 180.h,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(5.w),
                border: Border.all(
                  color: const Color(0xfff4f4f4),
                  width: 1.w,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 4.w,
                    color: const Color(0xff000000).withOpacity(0.16),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/coffe_house 40_40.png"),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "The coffee house",
                        style: nameBrandBigBlack,
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 9.w),
                        height: 24.h,
                        width: 72.w,
                        decoration: BoxDecoration(
                          color: kBackgroundColors,
                          borderRadius: BorderRadius.circular(12.w),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 4),
                              blurRadius: 4.w,
                              color: kTextTitleBigColors.withOpacity(0.1),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Text(
                              "+10",
                              style: TextStyle(
                                  color: const Color(0xff02332a),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Image.asset("assets/images/Group 104.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  const DottedLine(
                    lineThickness: 0.1,
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Thời gian",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff757575)),
                      ),
                      Text(
                        "19/10/2021",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff131313)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Loại giao dịch",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff757575)),
                      ),
                      Text(
                        "Thanh toán đơn hàng",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff131313)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mã giao dịch",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff757575)),
                      ),
                      Text(
                        "001122",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff131313)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
