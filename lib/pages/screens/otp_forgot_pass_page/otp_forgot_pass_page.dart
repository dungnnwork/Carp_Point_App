import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../login_page/button_main.dart';

class OtpForgotPassPage extends StatefulWidget {
  const OtpForgotPassPage({Key? key}) : super(key: key);

  @override
  State<OtpForgotPassPage> createState() => _OtpForgotPassPageState();
}

class _OtpForgotPassPageState extends State<OtpForgotPassPage> {
  int numberTime = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Container(
            margin: EdgeInsets.only(
                left: 19.w, top: 144.h, right: 19.w, bottom: 190.h),
            decoration: BoxDecoration(
              color: const Color(0xfffdfdfd),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(blurRadius: 50, color: Color.fromRGBO(0, 0, 0, 0.1))
              ],
            ),
            padding: EdgeInsets.only(
                top: 16.h, left: 28.w, right: 28.w, bottom: 26.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Nhập mã OTP',
                    style: TextStyle(
                        color: const Color(0xff0f0f0f),
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                Text(
                  'Chúng tôi đã gửi mã xác nhận OTP bao gồm 6 chữ đến số điện thoại của bạn, vui lòng nhập vào ô bên dưới để đặt lại mật khẩu.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: const Color(0xff0F0F0F),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.02),
                ),
                SizedBox(
                  height: 37.h,
                ),
                Text(
                  'Nhập mã OTP',
                  style: TextStyle(
                      color: const Color(0xff263238),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700),
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
