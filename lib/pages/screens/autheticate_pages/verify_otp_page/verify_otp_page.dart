import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../login_page/button_main.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  int numberTime = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Container(
            margin: EdgeInsets.only(left: 19.w, top: 149.h, right: 19.w),
            decoration: BoxDecoration(
              color: const Color(0xfffdfdfd),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(blurRadius: 50, color: Color.fromRGBO(0, 0, 0, 0.1))
              ],
            ),
            padding: EdgeInsets.only(
                top: 45.h, left: 28.w, right: 29.w, bottom: 41.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Xác nhận OTP',
                    style: TextStyle(
                        color: const Color(0xff0f0f0f),
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 48.h,
                ),
                Text(
                  'Nhập mã OTP',
                  style: TextStyle(
                      color: const Color(0xff263238),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 2.h,
                ),
                creatRowOtp(context),
                SizedBox(
                  height: 31.h,
                ),
                ButtonMain(text: 'Xác nhận').getButtonMain(),
                SizedBox(
                  height: 25.h,
                ),
                Center(
                  child: SizedBox(
                    width: 229.w,
                    height: 46.h,
                    child: RichText(
                      text: TextSpan(
                          style: const TextStyle(letterSpacing: -0.02),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Bạn có thể yêu cầu gửi lại mã mới sau ',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black)),
                            TextSpan(
                                text: '$numberTime',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xffE1B000))),
                            TextSpan(
                                text: ' giây',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black)),
                          ]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Center(
                  child: Text(
                    'Gửi lại mã',
                    style: TextStyle(
                        color: const Color(0xffE1B000),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.02),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Row creatRowOtp(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: 36.w,
        height: 44.h,
        child: TextFormField(
          onChanged: (value) => {
            if (value.length == 1) {FocusScope.of(context).nextFocus()}
          },
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFFD233)),
            ),
          ),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24.sp, color: const Color(0xffFFD233)),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
      SizedBox(
        width: 36.w,
        height: 44.h,
        child: TextFormField(
          onChanged: (value) => {
            if (value.length == 1) {FocusScope.of(context).nextFocus()},
            if (value.isEmpty) {FocusScope.of(context).previousFocus()}
          },
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFFD233)),
            ),
          ),
          style: TextStyle(fontSize: 24.sp, color: const Color(0xffFFD233)),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
      SizedBox(
        width: 36.w,
        height: 44.h,
        child: TextFormField(
          onChanged: (value) => {
            if (value.length == 1) {FocusScope.of(context).nextFocus()},
            if (value.isEmpty) {FocusScope.of(context).previousFocus()}
          },
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFFD233)),
            ),
          ),
          style: TextStyle(fontSize: 24.sp, color: const Color(0xffFFD233)),
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
      SizedBox(
        width: 36.w,
        height: 44.h,
        child: TextFormField(
          onChanged: (value) => {
            if (value.length == 1) {FocusScope.of(context).nextFocus()},
            if (value.isEmpty) {FocusScope.of(context).previousFocus()}
          },
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFFD233)),
            ),
          ),
          style: TextStyle(fontSize: 24.sp, color: const Color(0xffFFD233)),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
      SizedBox(
        width: 36.w,
        height: 44.h,
        child: TextFormField(
          onChanged: (value) => {
            if (value.length == 1) {FocusScope.of(context).nextFocus()},
            if (value.isEmpty) {FocusScope.of(context).previousFocus()}
          },
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFFD233)),
            ),
          ),
          style: TextStyle(fontSize: 24.sp, color: const Color(0xffFFD233)),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
      SizedBox(
        width: 36.w,
        height: 44.h,
        child: TextFormField(
          onChanged: (value) => {
            if (value.isEmpty) {FocusScope.of(context).previousFocus()}
          },
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFFD233)),
            ),
          ),
          style: TextStyle(fontSize: 24.sp, color: const Color(0xffFFD233)),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
    ],
  );
}
