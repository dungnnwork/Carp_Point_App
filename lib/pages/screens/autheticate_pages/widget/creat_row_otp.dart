import 'package:carp_point_app/pages/dependent_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateRowOtp extends StatelessWidget {
  const CreateRowOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const[
        Dash(),
        Dash(),
        Dash(),
        Dash(),
        Dash(),
        Dash(),
      ],
    );
  }
}
class Dash extends StatelessWidget {
  const Dash({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              borderSide: BorderSide(color: kbuttonBackgroundColors),
            ),
          ),
          style: TextStyle(fontSize: 24.sp, color: kbuttonBackgroundColors),
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      );
  }
}