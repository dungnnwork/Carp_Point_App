import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../login_page/button_main.dart';
import '../login_page/text_field_log.dart';

class ForgotPassPage extends StatefulWidget {
  const ForgotPassPage({Key? key}) : super(key: key);

  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        margin:
            EdgeInsets.only(left: 19.w, top: 149.h, right: 19.w, bottom: 199.h),
        decoration: BoxDecoration(
          color: const Color(0xfffdfdfd),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(blurRadius: 50, color: Color.fromRGBO(0, 0, 0, 0.1))
          ],
        ),
        padding:
            EdgeInsets.only(top: 45.h, left: 28.w, right: 28.w, bottom: 58.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Text(
              'Quên mật khẩu',
              style: TextStyle(
                  color: const Color(0xff263238),
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 48.h,
          ),
          Text(
            'Vui lòng nhập số điện thoại vào ô bên dưới để chúng tôi giúp bạn đặt lại mật khẩu.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: const Color(0xff0F0F0F),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 48.h,
          ),
          Text(
            'Nhập số điện thoại',
            style: TextStyle(
                color: const Color(0xff263238),
                fontSize: 18.sp,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 2.h,
          ),
          TextFieldLog(
                  hintText: 'Nhập số điện thoại',
                  textInputType: TextInputType.number)
              .constrainedBox(),
          SizedBox(
            height: 25.h,
          ),
          ButtonMain(text: 'Tiếp tục').getButtonMain(),
        ]),
      ),
    );
  }
}
