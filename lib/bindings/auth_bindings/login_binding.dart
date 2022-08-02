import 'package:carp_point_app/controllers/auth_controller/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => LoginController());
  }
}