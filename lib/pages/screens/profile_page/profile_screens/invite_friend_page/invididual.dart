
import 'package:carp_point_app/pages/components_app/background_offer.dart';
import 'package:carp_point_app/pages/components_app/background_page.dart';
import 'package:carp_point_app/pages/components_app/title_detail.dart';
import 'package:carp_point_app/pages/dependent_app/constants.dart';
import 'package:carp_point_app/pages/dependent_app/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class Individual extends StatefulWidget {
  const Individual({Key? key}) : super(key: key);

  @override
  State<Individual> createState() => _IndividualState();
}

class _IndividualState extends State<Individual> {
  @override
  Widget build(BuildContext context) {
    String copyBroad = "098888666";
    Future<void> copyClipBoard() async  {
      Clipboard.setData(ClipboardData(text: copyBroad));
      Get.snackbar(
        "Đã sao chép",
        "Đã sao chép mã giới thiệu",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: kbuttonBackgroundColors,
        duration: const Duration(seconds: 5),
        borderRadius: 20,
      );
    }
    return  Scaffold(
      body: Stack(
        children:  [
     const BackgroundPage(),
           Column(
            children: [
              TitleDetail(
                title: "Cá nhân",
                widgetLeft: Image.asset("assets/images/arrow-left.png"),
                widgetRight: Container(),
              ),
              SizedBox(height: 16.h,),
       const  BackgroundOffer(),
            ],
           ),
           Column(
            children: [
              Positioned(
                left: 30.w,
                right: 29.w,
                top: 108.h,
                child: Container(
                  padding: EdgeInsets.only(top: 108.h),
                  child: Center(
                    child: Image.asset("assets/images/gift.png"),
                  ),
                ),
              ),
              SizedBox(height: 18.h,),
              Container(
                padding: EdgeInsets.only(left: 18.w, right: 18.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mã chia sẻ", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700,color: const Color(0xff263238)),),
                    SizedBox(height: 4.h,),
                    Container(
                      padding: EdgeInsets.only(left: 18.w, right: 12.w),
                      height: 49.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        border: Border.all(
                          color: kbuttonBackgroundColors,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(copyBroad, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: kTextPrimaryColors,)),
                          IconButton(onPressed: copyClipBoard, icon: Image.asset("assets/icons/icons_profile/simcard-2.png")),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h,),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 198.w),
                        child: Text(
                          "Hướng dẫn mời bạn bè",
                           style: 
                           TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.w400, color: kTextPrimaryColors,
                             decoration: TextDecoration.underline,
                            ),
                          ),
                      ),
                    ),
                    SizedBox(height: 62.h,),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        height: 45.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.w),
                          color: const Color(0xffffd233),
                        ),
                        child: Center(
                          child: Text("Chia sẻ mã giới thiệu", style: noAccount),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
           ),
        ],
      ),
    );
  }
}