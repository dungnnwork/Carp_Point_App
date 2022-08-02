import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../dependent_app/text_style.dart';

class ProfileAction extends StatelessWidget {
  final String? imageUrl;
  final String? des;
  final GestureTapCallback? onTap;
  const ProfileAction({
    Key? key,
    this.imageUrl,
    this.des,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(imageUrl!),
          SizedBox(width: 15.w,),
          Text(des!, style: desProfile,),
        ],
      ),
    );
  }
}
