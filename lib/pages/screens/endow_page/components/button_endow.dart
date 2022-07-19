import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../dependent_app/constants.dart';
import '../../../dependent_app/text_style.dart';

class ButtonEndow extends StatefulWidget {
  const ButtonEndow({Key? key}) : super(key: key);

  @override
  State<ButtonEndow> createState() => _ButtonEndowState();
}

class _ButtonEndowState extends State<ButtonEndow> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog<Widget>(
        context: context,
        builder: (BuildContext context) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.w),
            color: const Color(0xffffffff),
          ),
          margin: EdgeInsets.fromLTRB(20.w, 235.h, 20.w, 320.h),
          padding: EdgeInsets.only(top: 20.h),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Xác nhận",
                  style: nameBrandBigBlack,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 38.w),
                  child: const DottedLine(
                    lineThickness: 0.1,
                  )),
              SizedBox(
                height: 12.h,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 27.w),
                child: Text(
                  "Bạn có muốn sử dụng 999 điểm Bpoint để đổi lấy Ưu đãi này không?",
                  textAlign: TextAlign.center,
                  style: noAccount,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 38.w),
                  child: const DottedLine(
                    lineThickness: 0.1,
                  )),
              SizedBox(
                height: 20.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40.w),
                child: Row(
                  children: [
                    Container(
                      width: 120.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        color: const Color(0xffc4c4c4),
                      ),
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Center(
                          child: Text(
                            "Hủy",
                            style: buttonDialog,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      width: 120.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        color: const Color(0xffffd023),
                      ),
                      child: TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Center(
                            child: Text(
                              "Đồng ý",
                              style: buttonDialog,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      child: Container(
        height: 45.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.w),
          color: kbuttonBackgroundColors,
        ),
        child: Center(
          child: Text(
            "Đổi ưu đãi",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
