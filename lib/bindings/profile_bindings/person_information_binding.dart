import 'package:carp_point_app/controllers/profile_controller/user_controller/acc_information/person_information_controller.dart';
import 'package:get/get.dart';

class PersonInformationBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => PersonInformationController());
  }
}