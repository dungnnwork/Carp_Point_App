


import 'dart:io';

import 'package:carp_point_app/controllers/profile_controller/user_controller/acc_information/person_information_controller.dart';
import 'package:carp_point_app/pages/components_app/background_offer.dart';
import 'package:carp_point_app/pages/components_app/title_detail.dart';
import 'package:carp_point_app/pages/dependent_app/constants.dart';
import 'package:carp_point_app/pages/dependent_app/text_style.dart';
// import 'package:carp_point_app/pages/screens/profile_page/profile_page.dart';
// import 'package:carp_point_app/pages/screens/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class PersonInformation  extends GetWidget<PersonInformationController> {

   final personInformationFormKey = GlobalKey<FormState>();
  //  final PersonInformationController personController = Get.find<PersonInformationController>();
  // // final personController1 = Get.find();
  final PersonInformationController personController =
    Get.put<PersonInformationController>(PersonInformationController());
  PersonInformation({Key? key}) : super(key: key);
  // saveInfor(){
  //   return GestureDetector(
  //     onTap: (){
  //       personController.saveAddress(personController.addressController.text);
  //       personController.saveUserName(personController.userNameController.text);
  //       personController.saveEmail(personController.emailController.text);
  //     },
  //     child: Container(
  //       height: 48.h,
  //       padding: EdgeInsets.symmetric(horizontal: 50.w),
  //       decoration: BoxDecoration(
  //         color: kbuttonBackgroundColors,
  //         borderRadius: BorderRadius.circular(10.w),
  //       ),
  //       child: Center(child: Text("Cập nhật", style: titlePage,)),
  //     ),
  //   );
  // }
  // buildTextField(String labelText, String hintText,controller){
  //   return Padding(
  //     padding: EdgeInsets.only(bottom: 10.h),
  //     child: TextField(
  //       decoration: InputDecoration(
  //         floatingLabelBehavior: FloatingLabelBehavior.always,
  //         labelText: labelText,
  //         labelStyle: descriptAcc,
  //         hintText: hintText,
  //         hintStyle: inforDescriptAcc,
  //       ),
  //      controller: controller,
  //     ),
  //   );
  // }
  // bottom sheet
  bottomSheet() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      height: 100.h,
      decoration: BoxDecoration(
          color: kBackgroundColors,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.w), topRight: Radius.circular(10.w))),
      child: Column(
        children: [
          Text(
            "Chọn ảnh từ",
            style: TextStyle(fontSize: 20.sp),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                 personController.avatarFromCamera();
                },
                icon: const Icon(Icons.camera),
                label: const Text("Chụp ảnh"),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  personController.avatarFromGallery();
                },
                icon: const Icon(Icons.image),
                label: const Text("Thư viện ảnh"),
              ),
            ],
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children :[
        Column(
          children: [
            TitleDetail(
              title: "Thông tin cá nhân",
              widgetLeft: Image.asset("assets/images/arrow-left.png"),
              widgetRight: Container(),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Stack(
                children: [
                  Image.asset("assets/images/Rectangle 573.png"),
                  Positioned(
                    top: 7.h,
                    left: 118.w,
                    right: 117.w,
                    bottom: 81.h,
                    child: GestureDetector(
                      onTap: () {
                        Get.bottomSheet(bottomSheet());
                      },
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 100.w,
                            backgroundColor: kBackgroundColors,
                            child: Obx(() => Image.file(File(personController.avatarPath.value),fit: BoxFit.cover,)),
                          ),
                          // Obx(() => CircleAvatar(
                          //   radius: 100.w,
                          //   child: ClipRRect(
                          //     borderRadius: BorderRadius.circular(50),
                          //     child: Image.file(File(personController.avatarPath.value), fit: BoxFit.cover,),
                          //    ),
                          //   //  child: Image.file(File(personController.avatarPath.value),fit: BoxFit.cover,),
                         
                          // )),
                          // CircleAvatar(
                          //   radius: 100.w,
                          //   backgroundColor: kBackgroundColors,
                          //   child: CircleAvatar(
                             
                          //     radius: 90,
                          //   child: Image.file(File(personController.avatarPath.value), fit: BoxFit.cover,),
                          //   ),
                          // ),
                          Positioned(
                            top: 74.h,
                            left: 67.w,
                            child: InkWell(
                              child: Image.asset("assets/icons/Group 267.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 92.w,
                    right: 91.w,
                    bottom: 12.h,
                    top: 116.h,
                    child: Container(
                      padding: EdgeInsets.only(top: 8.h),
                      decoration: BoxDecoration(
                        color: kBackgroundColors.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(4.w),
                      ),
                      width: 152.w,
                      height: 60.h,
                      child: Column(
                        children: [
                          const Center(
                            child: Text("Kim Ngân"),
                          ),
                          SizedBox(height: 4.h),
                          const Center(
                            child: Text("0988886666"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h,),
      const BackgroundOffer(),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 329.h),
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Form(
              key: personInformationFormKey,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Họ tên",
                      hintText: "Kim Ngân",
                      hintStyle: hinTextStyle,
                      labelStyle: inforDescriptAcc,
                    ),
                    controller: personController.userNameController,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Hạng",
                      hintText: "Tiêu chuẩn",
                      hintStyle: hinTextStyle,
                      labelStyle: inforDescriptAcc,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Email",
                      hintText: "kimngan12345@gmail.com",
                      hintStyle: hinTextStyle,
                      labelStyle: inforDescriptAcc,
                    ),
                    controller: personController.emailController,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Số điện thoại",
                      hintText: "098888666",
                      hintStyle: hinTextStyle,
                      labelStyle: inforDescriptAcc,
                    ),
                    
                  ),
                  TextField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: "Địa chỉ",
                      hintText: "Duy Tân, Dịch Vọng Hậu, Cầu Giấy",
                      hintStyle: hinTextStyle,
                      labelStyle: inforDescriptAcc,
                    ),
                    controller: personController.addressController,
                  ),
                  SizedBox(height: 50.h,),
                  GestureDetector(
                    onTap: (){
                      if (personInformationFormKey.currentState!.validate()) {
                       personController.saveUserInfor();
                       personController.readUserInfor();
                        Get.snackbar(
                          "Trạng thái", "Cập nhật thành công",
                          snackPosition: SnackPosition.BOTTOM,
                          );
                        // Get.to(() => const ProfilePage());
                      }
                    },
                    child: Container(
                      height: 48.h,
                      padding: EdgeInsets.symmetric(horizontal: 50.w),
                      decoration: BoxDecoration(
                        color: kbuttonBackgroundColors,
                        borderRadius: BorderRadius.circular(10.w),
                      ),
                      child: Center(child: Text("Cập nhật", style: titlePage,)),
                    ),
                  ),
                ],
              )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
