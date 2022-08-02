import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageProfile extends StatefulWidget {
  const ImageProfile({Key? key}) : super(key: key);

  @override
  State<ImageProfile> createState() => _ImageProfileState();
}

class _ImageProfileState extends State<ImageProfile> {
  // PickedFile? imageFile;
  File? imageFile;
  final imagePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  [
        CircleAvatar(
          radius: 100.w,
          backgroundImage: imageFile == null
          ? const AssetImage("assets/images/avatar.jpg") as ImageProvider
          : FileImage(File(imageFile!.path)),
        ),
        Positioned(
          top: 74.h,
          left: 67.w,
          child: InkWell(
            onTap: (){
              Get.bottomSheet(bottomSheet());
            },
            child: Image.asset("assets/icons/Group 267.png"),
          ),
        ),
        
      ],
    );
  }
   bottomSheet(){
    return Container(
      height: 100.h,
      width: 375.w,
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        children: [
          Text(
            "Chọn ảnh từ",
            style: TextStyle(fontSize: 20.sp),
          ),
          SizedBox(height: 20.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                onPressed: (){
                  takePhoto(ImageSource.camera);
                },
                icon: const  Icon(Icons.camera),
                label: const Text("Chụp ảnh"),
              ),
              ElevatedButton.icon(
                onPressed: (){
                  takePhoto(ImageSource.gallery);
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
  void takePhoto(ImageSource source) async {
    final pickedFile = await imagePicker.pickImage(
      source: source,
    );
    setState(() {
      imageFile = File(pickedFile!.path);
    });
  }
}
