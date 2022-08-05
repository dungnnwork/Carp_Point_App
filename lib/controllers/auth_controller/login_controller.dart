// ignore_for_file: unused_catch_clause

import 'package:carp_point_app/pages/screens/home_page/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  var  isLoading = false.obs;
  var verId = '';
  var authState = ''.obs;
  var auth = FirebaseAuth.instance;
  verifyPhone(String phone) async{
    isLoading.value = true;
    await auth.verifyPhoneNumber(
     
      timeout:const Duration(seconds: 100),
      phoneNumber: '+84 $phone',
      verificationCompleted: (AuthCredential authCredential){
        if (auth.currentUser != null) {
          isLoading.value  = false;
          authState.value = "Đăng nhập thành công";
        }
      },
      verificationFailed: (FirebaseAuthException e){
        if (e.code == 'Số điện thoại không hợp lệ') {
          Get.snackbar("Thông tin", " Số điện thoại đã cung cấp không hợp lệ!");
        }
      },
      codeSent: (String verificationId,[int? forceResendingToken])async {
        verificationId      =verificationId;
        forceResendingToken = forceResendingToken;
        await Future.delayed(const Duration(seconds: 20));
        
        // isLoading.value = true;
        // verId = verificationId;
        // authState.value = 'Đăng nhập thành công';
      } ,
      // codeSent: (String id, resendToken) async{
      //   isLoading.value = false;
      //   verId = id;
      //   authState.value = 'Đăng nhập thành công';
      // },
      codeAutoRetrievalTimeout: (String id){
        verId = id;
      },
    );
  }
  // opt verify
  otpVerify(String otp)async{
   
    isLoading.value = true;
    try {
      UserCredential userCredential = await auth.signInWithCredential(
        PhoneAuthProvider.credential(verificationId: verId, smsCode: otp)
      );
      if (userCredential.user != null) {
        isLoading.value = false;
        Get.to(() => const HomePage());
      }
    } on Exception catch(e){
      Get.snackbar("Thông tin OTP", "Mã OTP không đúng");
    }
    }
  }
// DEMO
// import 'package:carp_point_app/pages/screens/accum_app.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';


// class LoginController extends GetxController {

//   var isLoading = false.obs;
//   var verId = '';
//   var authStatus = ''.obs;

//   var auth = FirebaseAuth.instance;

//   verifyPhone(String phone) async {
//     isLoading.value = true;
//     await auth.verifyPhoneNumber(
//         timeout: const Duration(seconds: 50),
//         phoneNumber: phone,
//         verificationCompleted: (AuthCredential authCredential) {
//           if (auth.currentUser != null) {
//             isLoading.value = false;
//             authStatus.value = "Đăng nhập thành công";
//           }
//         },
//         verificationFailed: (authException) {
//           Get.snackbar("sms code info", "otp code hasn't been sent!!");
//         },
//         codeSent: (String id, [int? forceResent]) {
//           isLoading.value = false;
//           verId = id;
//           authStatus.value = "Đăng nhập thành công";
//         },
//         codeAutoRetrievalTimeout: (String id) {
//           verId = id;
//         });
//   }


//   /////////
//   otpVerify(String otp) async {
//     isLoading.value = true;
//     try {
//       UserCredential userCredential = await auth.signInWithCredential(
//           PhoneAuthProvider.credential(verificationId: verId, smsCode: otp)
//       );
//       if (userCredential.user != null) {
//         isLoading.value = false;
//        Get.to(() => const AccumApp());
//       }
//     } on Exception catch (e) {
//       (e);
//       Get.snackbar("Thông tin OTP", "Mã OTP không đúng!");
//     }
//   }
// }
