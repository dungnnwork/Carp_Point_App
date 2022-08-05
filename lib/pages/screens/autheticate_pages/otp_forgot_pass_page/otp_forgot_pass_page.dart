import 'package:carp_point_app/pages/screens/autheticate_pages/widget/button_auth.dart';
import 'package:carp_point_app/pages/dependent_app/text_style.dart';
import 'package:carp_point_app/pages/screens/autheticate_pages/widget/creat_row_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class OtoForgotPassPage extends StatelessWidget {
  OtoForgotPassPage({Key? key}) : super(key: key);
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
                    style: textStyleLogin,
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                Text(
                  'Chúng tôi đã gửi mã xác nhận OTP bao gồm 6 chữ đến số điện thoại của bạn, vui lòng nhập vào ô bên dưới để đặt lại mật khẩu.',
                  textAlign: TextAlign.justify,
                  style: noAccount,
                ),
                SizedBox(
                  height: 37.h,
                ),
                Text(
                  'Nhập mã OTP',
                  style: textStylePhone,
                ),
          const CreateRowOtp(),
                SizedBox(
                  height: 31.h,
                ),
                ButtonAuth(text: 'Xác nhận'),
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
                               style: noAccount,
                            ),
                            TextSpan(
                                text: '$numberTime',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xffE1B000))),
                            TextSpan(
                                text: ' giây',
                                style: noAccount,
                            ),
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
                    style: resendCode,
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
