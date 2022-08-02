import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldLog {
  String hintText;
  TextInputType textInputType;
  TextFieldLog({required this.hintText, required this.textInputType});
  ConstrainedBox constrainedBox() {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 49.h, maxWidth: 280.w),
      child: TextField(
        keyboardType: textInputType,
        decoration: InputDecoration(
            hintText: hintText,
            contentPadding:
                EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
            hintStyle: TextStyle(
                color: const Color(0xff717171),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Color(0xffa1a1a1)))),
      ),
    );
  }
}
