// ignore_for_file: unused_catch_clause

import 'package:carp_point_app/pages/screens/home_page/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
 var password = ''.obs;
  var isLoading = false;
  var verId = '';
  var authState = ''.obs;
  String verificationID = '';
  var auth = FirebaseAuth.instance;
  verifyPhone(String phone, String password) async{
    isLoading = true;
    await auth.verifyPhoneNumber(
      timeout:const Duration(seconds: 50),
      phoneNumber: phone,
      verificationCompleted: (AuthCredential authCredential){
        if (auth.currentUser != null) {
          isLoading  = false;
          authState.value = "Đăng nhập thành công";
        }
      },
      verificationFailed: (authException){
        Get.snackbar("Thông tin mã sms", " Mã otp chưa được gửi!");
      },
      codeSent: (String id, [forceResent]){
        isLoading = false;
        verId = id;
        authState.value = 'Đăng nhập thành công';
      },
      codeAutoRetrievalTimeout: (String id){
        verId = id;
      },
    );
  }
  // opt verify
  otpVerify(String otp)async{
    isLoading =true;
    try {
      UserCredential userCredential = await auth.signInWithCredential(
        PhoneAuthProvider.credential(verificationId: verId, smsCode: otp)
      );
      if (userCredential.user != null) {
        isLoading = false;
        Get.to(() => const HomePage());
      }
    } on Exception catch(e){
      Get.snackbar("Thông tin otp", "Mã otp không đúng");
    }
    }
  }
