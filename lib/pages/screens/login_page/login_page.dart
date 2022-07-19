import 'package:carp_point_app/pages/screens/login_page/button_main.dart';
import 'package:carp_point_app/pages/screens/login_page/text_field_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 19.w, top: 140.h, right: 19.w),
                decoration: BoxDecoration(
                  color: const Color(0xfffdfdfd),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 50, color: Color.fromRGBO(0, 0, 0, 0.1))
                  ],
                ),
                padding: EdgeInsets.only(
                    top: 44.h, left: 29.w, right: 28.w, bottom: 38.h),
                child: Column(
                    textDirection: TextDirection.ltr,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'Đăng nhập',
                          style: TextStyle(
                              color: const Color(0xff0f0f0f),
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(height: 44.h),
                      Text(
                        'Số điện thoại',
                        style: TextStyle(
                            color: const Color(0xff263238),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 2.h),
                      TextFieldLog(
                              hintText: 'Nhập số điện thoại',
                              textInputType: TextInputType.number)
                          .constrainedBox(),
                      SizedBox(height: 16.h),
                      Text(
                        'Mật khẩu',
                        style: TextStyle(
                            color: const Color(0xff263238),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 2.h),
                      TextFieldLog(
                              hintText: 'Nhập mật khẩu',
                              textInputType: TextInputType.text)
                          .constrainedBox(),
                      Container(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 17.w,
                              height: 17.w,
                              child: Transform.scale(
                                scale: 0.9,
                                child: Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  side: const BorderSide(
                                      width: 1, color: Color(0xffE1B000)),
                                  activeColor: const Color(0xffE1B000),
                                  fillColor: MaterialStateProperty.all(
                                      const Color(0xffE1B000)),
                                  value: _rememberMe,
                                  onChanged: (value) {
                                    setState(() {
                                      _rememberMe = !_rememberMe;
                                    });
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Lưu mật khẩu',
                              style: TextStyle(
                                  color: const Color(0xffE1B000),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.02),
                            ),
                            SizedBox(
                              width: 61.w,
                            ),
                            Text(
                              'Quên mật khẩu',
                              style: TextStyle(
                                  color: const Color(0xffE1B000),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.02),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      ButtonMain(text: 'Đăng nhập').getButtonMain()
                    ]),
              ),
              SizedBox(
                height: 132.h,
              ),
              Center(
                child: Text(
                  'Bạn chưa tài khoản',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Text(
                  'Đăng ký ngay',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffe1b000)),
                ),
              ),
              SizedBox(
                height: 42.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
