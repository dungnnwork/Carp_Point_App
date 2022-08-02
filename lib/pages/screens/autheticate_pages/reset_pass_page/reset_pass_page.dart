import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../login_page/button_main.dart';

class ResetPassPage extends StatefulWidget {
  const ResetPassPage({Key? key}) : super(key: key);

  @override
  State<ResetPassPage> createState() => _ResetPassPageState();
}

class _ResetPassPageState extends State<ResetPassPage> {
  bool _secureText1 = false;
  bool _secureText2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Container(
            margin: EdgeInsets.only(left: 19.w, top: 147.h, right: 19.w),
            decoration: BoxDecoration(
              color: const Color(0xfffdfdfd),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(blurRadius: 50, color: Color.fromRGBO(0, 0, 0, 0.1))
              ],
            ),
            padding: EdgeInsets.only(
                top: 60.h, left: 29.w, right: 28.w, bottom: 74.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Text(
                  'Đặt lại mật khẩu',
                  style: TextStyle(
                      color: const Color(0xff0f0f0f),
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 55.h),
              Text(
                'Nhập mật khẩu mới',
                style: TextStyle(
                    color: const Color(0xff263238),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 2.h),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 49.h, maxWidth: 280.w),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _secureText1
                              ? Icons.visibility_off
                              : Icons.remove_red_eye,
                          size: 20,
                        ),
                        onPressed: () {
                          setState(() {
                            _secureText1 = !_secureText1;
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
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                              BorderSide(width: 1, color: Color(0xffa1a1a1)))),
                  obscureText: _secureText1,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Nhập mật khẩu mới',
                style: TextStyle(
                    color: const Color(0xff263238),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 2.h),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 49.h, maxWidth: 280.w),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _secureText2
                              ? Icons.visibility_off
                              : Icons.remove_red_eye,
                          size: 20,
                        ),
                        onPressed: () {
                          setState(() {
                            _secureText2 = !_secureText2;
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
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                              BorderSide(width: 1, color: Color(0xffa1a1a1)))),
                  obscureText: _secureText2,
                ),
              ),
              SizedBox(height: 16.h),
              ButtonMain(text: 'Xác nhận').getButtonMain()
            ]),
          ),
        ),
      ),
    );
  }
}
