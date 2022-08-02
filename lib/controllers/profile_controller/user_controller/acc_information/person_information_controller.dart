



import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonInformationController extends GetxController{

 final ImagePicker picker = ImagePicker();
 final avatarPath = ''.obs;
 final userName  = 'Kim Ngân'.obs;
 final email      = 'kimngan12345@gmail.com'.obs;
 final address    = 'Duy Tân, Dịch Vọng Hậu, Cầu Giấy'.obs;

// controller

 final userNameController = TextEditingController();
 final emailController    = TextEditingController();
 final addressController  = TextEditingController();
 void saveUserInfor() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var userInfor = [
    userNameController.text,
    emailController.text,
    emailController.text,
  ];
  prefs.setString("userInfor", userInfor.toString());
 }
 void readUserInfor()async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var userInfor = prefs.getString("userInfor");
  if (userInfor != null) {
    userNameController.text = userName.value;
    emailController.text    = email.value;
    addressController.text  = address.value;
  }
 }


//  SharedPreferences prefs = a SharedPreferences.getInstance();
// void saveUserName(String userName)async{
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   M
//   // prefs.setString("userName", userName);
//   // // prefs.setString("email", email);
//   // // prefs.setString("address", address);
// }
// void saveEmail(String email) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   prefs.setString("email", email);
// }
// void saveAddress(String address) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   prefs.setString("address", address);
// }
// void readInformationUser() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   String? userName = prefs.getString("userName");
//   if (userName != null) {
//     userNameController.text = userName;
//   }
//  String? email = prefs.getString("email");
//  if (email != null) {
//    emailController.text = email;
//  }
//  String? address = prefs.getString("address");
//  if (address != null) {
//    addressController.text = address;
//  }
// }
 // avatar from camara

 avatarFromCamera() async {
  var localAvatar = await picker.pickImage(source: ImageSource.camera);
  if (localAvatar != null) {
    avatarPath.value = localAvatar.path;
    update();
  }
 }
// avatar from gallery
avatarFromGallery () async {
  var localAvatar = await picker.pickImage(source: ImageSource.gallery);
  if (localAvatar != null) {
    avatarPath.value = localAvatar.path;
    update();
  }
}
@override
 void onInit(){
  super.onInit();
  readUserInfor();
 }
}