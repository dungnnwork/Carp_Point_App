import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../login_page/text_field_log.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 19.w, top: 127.h, right: 19.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xfffdfdfd),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        blurRadius: 50,
                        offset: Offset(0, -5)),
                  ]),
              padding: EdgeInsets.only(
                  left: 29.w, top: 26.h, right: 28.w, bottom: 50.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Đăng ký',
                      style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff0f0f0f)),
                    ),
                  ),
                  SizedBox(height: 36.h),
                  Text(
                    'Số điện thoại',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff263238)),
                  ),
                  SizedBox(height: 2.h),
                  TextFieldLog(
                          hintText: 'Nhập số điện thoại',
                          textInputType: TextInputType.text)
                      .constrainedBox(),
                  SizedBox(height: 16.h),
                  Text(
                    'Mật khẩu',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff263238)),
                  ),
                  SizedBox(height: 2.h),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints(maxHeight: 49.h, maxWidth: 280.w),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Nhập mật khẩu',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _secureText
                                  ? Icons.visibility_off
                                  : Icons.remove_red_eye,
                              size: 20,
                            ),
                            onPressed: () {
                              setState(() {
                                _secureText = !_secureText;
                              });
                            },
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 13.h, horizontal: 16.w),
                          hintStyle: TextStyle(
                              color: const Color(0xff717171),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xffa1a1a1)))),
                      obscureText: _secureText,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Nhập lại mật khẩu',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff263238)),
                  ),
                  SizedBox(height: 2.h),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints(maxHeight: 49.h, maxWidth: 280.w),
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              _secureText
                                  ? Icons.visibility_off
                                  : Icons.remove_red_eye,
                              size: 20,
                            ),
                            onPressed: () {
                              setState(() {
                                _secureText = !_secureText;
                              });
                            },
                          ),
                          hintText: 'Nhập mật khẩu',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 13.h, horizontal: 16.w),
                          hintStyle: TextStyle(
                              color: const Color(0xff717171),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xffa1a1a1)))),
                      obscureText: _secureText,
                    ),
                  ),
                  SizedBox(height: 48.h),
                  Container(
                    height: 48.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffFFD233),
                    ),
                    child: Center(
                        child: Text(
                      'Đăng ký',
                      style: TextStyle(
                          color: const Color(0xff1E1E1E),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 83.h),
            Center(
              child: Text(
                'Bạn đã có tài khoản',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            SizedBox(height: 10.h),
            Center(
              child: Text(
                'Đăng nhập ngay',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffE1B000)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
