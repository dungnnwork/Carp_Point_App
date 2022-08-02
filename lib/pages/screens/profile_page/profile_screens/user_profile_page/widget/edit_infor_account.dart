
// // import 'package:carp_point_app/pages/screens/profile_page/profile_screens/user_profile_page/widget/image_profile.dart';
// // import 'package:carp_point_app/pages/screens/profile_page/profile_screens/user_profile_page/widget/user_information.dart';
// // import 'package:flutter/material.dart';



// // class EditInforAccount extends StatelessWidget {
// //   const EditInforAccount({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return   Scaffold(
// //       body: UserInformation(
// //         // widget: const ImageProfile(),
// //         title: "Thông tin cá nhân",
// //         correct: "Sửa",
// //         onTap: (){
          
// //           // Get.to(() => const PersonInformation());
          
// //         },
// //       ),
// //     );
// //   }
// // }
// import 'dart:io';
// import 'package:carp_point_app/controllers/profile_controller/user_controller/acc_information/person_information.dart';
// import 'package:carp_point_app/pages/dependent_app/constants.dart';
// import 'package:carp_point_app/pages/screens/profile_page/profile_screens/user_profile_page/widget/user_information.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';



// class EditInforAccount extends StatelessWidget {
//   final UserInforAccountController userInforAccountController = Get.put<UserInforAccountController>(UserInforAccountController());
//   GlobalKey<FormState> editInforAccountFormKey = GlobalKey<FormState>();
//    EditInforAccount({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Form(
//         key: editInforAccountFormKey,
//         child: UserInformation(
//           title: "Thông tin cá nhân",
//           correct: "Lưu",
//           onTap: () => userInforAccountController.save(editInforAccountFormKey),
//           widget: GestureDetector(
//             onTap:(() {
//               Get.bottomSheet(bottomSheet());
//             }), 
//             child: CircleAvatar(
//               radius: 100.w,
//               // backgroundImage: const AssetImage("assets/images/avatar.jpg"),
//               backgroundColor: kBackgroundColors,
//               child: Obx(() =>  (userInforAccountController.avatarPath.value != null)
//                ? ClipRRect(
//                 borderRadius: BorderRadius.circular(50.w),
//                 child: Image.file(
//                   File(userInforAccountController.avatarPath.value),
//                   width: 100.w,
//                   height: 100.h,
//                   fit: BoxFit.cover,
//                 ),
//                )
//                : 
//                 Container(
//                 // width: 100.w,
//                 // height: 100.h,
//                 // decoration: const BoxDecoration(
//                 //   shape: BoxShape.circle,
//                 // ),
//                 // child: InkWell(
//                 //   onTap: (){
//                 //     Get.bottomSheet(bottomSheet());
//                 //   },
//                 //   child: Image.asset("assets/icons/Group 267.png"),
//                 // ),
//                )
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   bottomSheet(){
//     return Container(
//       height: 100.h,
//       width: 375.w,
//       margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
//       child: Column(
//         children: [
//           Text(
//             "Chọn ảnh từ",
//             style: TextStyle(fontSize: 20.sp),
//           ),
//           SizedBox(height: 20.h,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ElevatedButton.icon(
//                 onPressed: (){
//                  editInforAccountController.avatarFromCamera();
//                 },
//                 icon: const  Icon(Icons.camera),
//                 label: const Text("Chụp ảnh"),
//               ),
//               ElevatedButton.icon(
//                 onPressed: (){
                  
//                   editInforAccountController.avatarFromGallery();
//                 },
//                 icon: const Icon(Icons.image),
//                 label: const Text("Thư viện ảnh"),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
