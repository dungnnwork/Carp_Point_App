import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../dependent_app/text_style.dart';
import '../screens/partner_page/detail_partner_page/detail_partner_page.dart';

class Brand extends StatelessWidget {
  final String? image;
  final String? nameBrand;
  final String? typeBrand;
  const Brand({Key? key, this.image, this.nameBrand, this.typeBrand})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 18.w, right: 17.w),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailPartnerPage()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 7.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 67.w,
                    height: 67.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        image: DecorationImage(
                          image: AssetImage(image!),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 3.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nameBrand!,
                          style: nameBrandBigBlack,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          typeBrand!,
                          style: typeBrandBig,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          DottedLine(
            lineThickness: 0.1.w,
          ),
        ],
      ),
    );
  }
}
