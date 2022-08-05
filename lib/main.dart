import 'package:carp_point_app/bindings/profile_bindings/person_information_binding.dart';
import 'package:carp_point_app/pages/screens/accum_app.dart';
import 'package:carp_point_app/pages/screens/autheticate_pages/login_page/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<void> main() async {
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
        // home:  const AccumApp(),
            home:  const InitializerWidget(),
            theme: ThemeData(
              fontFamily: "Open Sans",
            ),
            debugShowCheckedModeBanner: false,
          )),
      designSize: const Size(375.0, 812.0),
    );
  }
}

class  InitializerWidget extends StatefulWidget {
   const InitializerWidget({super.key});
  @override
  InitializerWidgetState createState() => InitializerWidgetState();
}

class InitializerWidgetState extends State<InitializerWidget> {

  late FirebaseAuth _auth;

 late User? _user;

  bool isLoading = true;


  @override
  void initState() {
    super.initState();
    _auth = FirebaseAuth.instance;
    _user = _auth.currentUser;
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    ) : _user == null ? LoginPage() : const AccumApp();
  }
}