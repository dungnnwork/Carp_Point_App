
// import 'package:carp_point_app/pages/components_app/background_offer.dart';
// import 'package:carp_point_app/pages/dependent_app/constants.dart';
// import 'package:carp_point_app/pages/dependent_app/text_style.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// class UserInformation extends StatelessWidget {
//   final String? title;
//   final String? correct;
//   // final GestureDetector? onTap;
//   final GestureTapCallback? onTap;
//   final Widget? widget;
//   const UserInformation({Key? key, this.title, this.correct, this.onTap, this.widget}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kBackgroundColors,
//       body: Form(
//         child: Stack(
//           children:[
//            Column(
//             children: [
//               Container(
//                 padding: EdgeInsets.only( top: 57.h),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       onPressed: (){
//                         Get.back();
//                       },
//                       icon: Image.asset("assets/images/Path back.png"),color: const Color(0xffa1a1a1),),
//                     Text(title!,style: titlePage,),
//                     TextButton(onPressed: onTap, child: Text(correct!, style: textEditProfile),),
//                   ],
//                 ),
//               ),
//               // SizedBox(height: 8.h,),
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 20.w),
//                 child: Stack(
//                   children: [
//                     Image.asset("assets/images/Rectangle 573.png"),
//                     Positioned(
//                       top: 7.h,
//                       left: 118.w,
//                       right: 117.w,
//                       bottom: 81.h,
//                       child: GestureDetector(
//                         child: Stack(
//                           children: [
//                             CircleAvatar(
//                               radius: 100.w,
//                               backgroundColor: kBackgroundColors,
//                             ),
                            
//                           ],
//                         ),
//                       ),
//                       // child: widget!,
//                     ),
//                     Positioned(
//                       left: 92.w,
//                       right: 91.w,
//                       bottom: 12.h,
//                       top: 116.h,
//                       child: Container(
//                         padding: EdgeInsets.only(top: 8.h),
//                         decoration: BoxDecoration(
//                           color: const Color(0xffffffff).withOpacity(0.6),
//                           borderRadius: BorderRadius.circular(4.w),
//                         ),
//                         width: 152.w,
//                         height: 60.h,
//                         child: Column(
//                           children:  [
//                        const  Center(child: Text("Kim Ngân"),),
//                               SizedBox(height: 4.h),
//                        const  Center(child: Text("0988886666"),),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10.h,),
//       const   BackgroundOffer(),
//             ],
//           ),
//           Container(
//             margin: EdgeInsets.only(top: 340.h),
//             padding: EdgeInsets.symmetric(horizontal: 20.w),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Họ tên", style: descriptAcc,),
//                     Text("Kim Ngân", style: inforDescriptAcc,),
//                   ],
//                 ),
//                 SizedBox(height: 10.h,),
//           const     Divider(),
//                 SizedBox(height: 10.h,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Hạng", style: descriptAcc,),
//                     Text("Tiêu chuẩn", style: inforDescriptAcc,),
//                   ],
//                 ),
//                 SizedBox(height: 10.h,),
//           const     Divider(),
//                 SizedBox(height: 10.h,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Email", style: descriptAcc,),
//                     Text("kimngan12345@gmail.com", style: inforDescriptAcc,),
//                   ],
//                 ),
//                 SizedBox(height: 10.h,),
//           const     Divider(),
//                 SizedBox(height: 10.h,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Số điện thoại", style: descriptAcc,),
//                     Text("098888666", style: inforDescriptAcc,),
//                   ],
//                 ),
//                 SizedBox(height: 10.h,),
//           const     Divider(),
//                 SizedBox(height: 10.h,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Số CMND/CCCD", style: descriptAcc,),
//                     Text("098888666", style: inforDescriptAcc,),
//                   ],
//                 ),
//                 SizedBox(height: 10.h,),
//           const     Divider(),
//                 SizedBox(height: 10.h,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Giới tính", style: descriptAcc,),
//                     Text("Nữ", style: inforDescriptAcc,),
//                   ],
//                 ),
//                 SizedBox(height: 10.h,),
//           const     Divider(),
//                 SizedBox(height: 10.h,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Ngày sinh", style: descriptAcc,),
//                     Text("14/05/1990", style: inforDescriptAcc,),
//                   ],
//                 ),
//                 SizedBox(height: 10.h,),
//           const     Divider(),
//                 SizedBox(height: 10.h,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Địa chỉ", style: descriptAcc,),
//                     Text("Duy Tân, Dịch Vọng Hậu, Cầu Giấy", style: inforDescriptAcc,),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//          ],
//         ),
//       ),
//     );
//   }
// }