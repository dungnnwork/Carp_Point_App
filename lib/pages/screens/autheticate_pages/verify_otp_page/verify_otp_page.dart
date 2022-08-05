import 'package:carp_point_app/controllers/auth_controller/login_controller.dart';
import 'package:carp_point_app/pages/screens/autheticate_pages/widget/button_auth.dart';
import 'package:carp_point_app/pages/dependent_app/constants.dart';
import 'package:carp_point_app/pages/dependent_app/text_style.dart';
import 'package:carp_point_app/pages/screens/autheticate_pages/widget/creat_row_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class VerifyOtp extends StatelessWidget {
    
  VerifyOtp({Key? key}) : super(key: key);
  final loginController = Get.put(LoginController());
  final numberTime = 180;
  final otp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundAuthPageColor,
      body: loginController.isLoading(false) ? const Center(child: CircularProgressIndicator()) : SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 19.w, top: 149.h, right: 19.w),
          padding:EdgeInsets.only(top: 45.h, left: 28.w, right: 29.w, bottom: 41.h),
          decoration: BoxDecoration(
            color: kBackgroundColors,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(blurRadius: 50, color: Color.fromRGBO(0, 0, 0, 0.1)),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Xác nhận OTP',
                  style: textStyleLogin,
                ),
              ),
              SizedBox(
                height: 48.h,
              ),
              Text(
                'Nhập mã OTP',
                style: textStylePhone,
              ),
              SizedBox(
                height: 2.h,
              ),
        const CreateRowOtp(),
              SizedBox(
                height: 31.h,
              ),
              ButtonAuth(
                text: 'Xác nhận',
                onPressed: () {
                  loginController.otpVerify(otp.text);
                },
              ),
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
                              color: kTextPrimaryColors,
                            ),
                          ),
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
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Gửi lại mã',
                    style: resendCode,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}