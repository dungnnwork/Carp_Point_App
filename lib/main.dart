import 'package:carp_point_app/bindings/profile_bindings/person_information_binding.dart';
import 'package:carp_point_app/pages/screens/accum_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ((context, child) => GetMaterialApp(
        initialBinding: PersonInformationBinding(),
            home: const AccumApp(),
            theme: ThemeData(
              fontFamily: "Open Sans",
            ),
            debugShowCheckedModeBanner: false,
          )),
      designSize: const Size(375.0, 812.0),
    );
  }
}
