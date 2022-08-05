
import 'package:carp_point_app/controllers/auth_controller/login_controller.dart';
import 'package:carp_point_app/pages/screens/autheticate_pages/widget/button_auth.dart';
import 'package:carp_point_app/pages/dependent_app/constants.dart';
import 'package:carp_point_app/pages/dependent_app/text_style.dart';
import 'package:carp_point_app/pages/screens/autheticate_pages/sign_up_page/sign_up_page.dart';
import 'package:carp_point_app/pages/screens/autheticate_pages/verify_otp_page/verify_otp_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
    final _rememberMe = false;
  final phone = TextEditingController();
  final LoginController loginController = Get.put(LoginController());
   LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundAuthPageColor,
      body: loginController.isLoading(false) ? const Center(child: CircularProgressIndicator()) : Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.w,vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 466.h,
                decoration: BoxDecoration(
                  color: kBackgroundColors,
                  borderRadius: BorderRadius.circular(10.w),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 50,
                      offset: const Offset(0, -5),
                      color: ktextTitlePageColors.withOpacity(0.1),
                    ),
                  ],
                ),
                margin: EdgeInsets.only(top: 120.h),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30.h),
                      child: Center(
                        child: Text(
                          "Đăng nhập",
                          style: textStyleLogin,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Số điện thoại",
                              style: textStylePhone,
                            ),
                            TextFormField(
                              controller: phone,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.w),
                                ),
                                labelText: "Nhập số điện thoại",
                              ),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Text(
                              "Mật khẩu",
                              style: textStylePhone,
                            ),
                            TextFormField(
                              // controller: password,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.w),
                                ),
                                labelText: "Nhập mật khẩu",
                              ),
                            ),
                            // SizedBox(height: 5.h,),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 17.h,
                                  width: 17.w,
                                  child: Transform.scale(
                                    scale: 0.9,
                                    child: Checkbox(
                                      value: _rememberMe,
                                      onChanged: (value) {
                                        // loginController.password.value =
                                        //     _rememberMe.toString();
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.w)),
                                      side: BorderSide(
                                        width: 1.w,
                                        color: kTextPrimaryColors,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "Lưu mật khẩu",
                                  style: resendCode,
                                ),
                                const Spacer(
                                  flex: 2,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Quên mật khẩu?",
                                    style: resendCode,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            ButtonAuth(
                              text: "Đăng nhập",
                              onPressed: ()async{
                                loginController.verifyPhone(phone.text);
                                Get.to(() =>  VerifyOtp());
                              },
                            
                              ),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(height: 100.h,),
              Text("Bạn chưa có tài khoản?", style: noAccount,),
              TextButton(onPressed: (){
                Get.to(() =>  SignUpPage());
              }, child: Text("Đăng ký ngay", style: resendCode,))
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:carp_point_app/pages/screens/home_page/home_page.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';




// enum LoginScreen{
//   SHOW_MOBILE_ENTER_WIDGET,
//   SHOW_OTP_FORM_WIDGET
// }
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<LoginPage> {
// TextEditingController  phoneController = TextEditingController();
// TextEditingController  otpController = TextEditingController();
// LoginScreen currentState = LoginScreen.SHOW_MOBILE_ENTER_WIDGET;
// FirebaseAuth _auth = FirebaseAuth.instance;
// String verificationID = "";

// void SignOutME() async{
//   await _auth.signOut();
// }
// void signInWithPhoneAuthCred(AuthCredential phoneAuthCredential) async
// {

//   try {
//     final authCred = await _auth.signInWithCredential(phoneAuthCredential);

//     if(authCred.user != null)
//     {

//       Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => HomePage()));
//     }
//   } on FirebaseAuthException catch (e) {

//     print(e.message);
//     ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text('Some Error Occured. Try Again Later')));
//   }
// }


// showMobilePhoneWidget(context){
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Spacer(),
//       Text("Verify Your Phone Number" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//       SizedBox(height: 7,),
//       SizedBox(height: 20,),
//       Center(
//         child:       TextField(

//           controller: phoneController,
//           keyboardType: TextInputType.number,
//           decoration: InputDecoration(
//               border: OutlineInputBorder(borderRadius: BorderRadius.circular(12) ),
//               hintText: "Enter Your PhoneNumber"
//           ),
//         ),
//       ),
//       SizedBox(height: 20,),
//       ElevatedButton(onPressed: ()  async{
//         await _auth.verifyPhoneNumber(

//             phoneNumber: "+91${phoneController.text}",
//             verificationCompleted: (phoneAuthCredential) async{


//             },
//             verificationFailed: (verificationFailed){
//               print(verificationFailed);
//             },

//             codeSent: (verificationID, resendingToken) async{
//               setState(() {

//                 currentState = LoginScreen.SHOW_OTP_FORM_WIDGET;
//                 this.verificationID = verificationID;
//               });
//             },
//             codeAutoRetrievalTimeout: (verificationID) async{

//             }
//         );
//       }, child: Text("Send OTP")),
//       SizedBox(height: 16,),
//       Spacer()
//     ],
//   );
// }


// showOtpFormWidget(context){
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Spacer(),
//       Text("ENTER YOUR OTP" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//       SizedBox(height: 7,),
//       SizedBox(height: 20,),
//       Center(
//         child:       TextField(

//           controller: otpController,
//           keyboardType: TextInputType.number,
//           decoration: InputDecoration(
//               border: OutlineInputBorder(borderRadius: BorderRadius.circular(12) ),
//               hintText: "Enter Your OTP"
//           ),
//         ),
//       ),
//       SizedBox(height: 20,),
//       ElevatedButton(onPressed: () {

//         AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(verificationId: verificationID, smsCode: otpController.text);
//         signInWithPhoneAuthCred(phoneAuthCredential);
//       }, child: Text("Verify")),
//       SizedBox(height: 16,),
//       Spacer()
//     ],
//   );
// }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: currentState == LoginScreen.SHOW_MOBILE_ENTER_WIDGET ? showMobilePhoneWidget(context) : showOtpFormWidget(context),
//     );
//   }
// }