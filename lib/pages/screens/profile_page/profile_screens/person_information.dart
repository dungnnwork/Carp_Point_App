import 'package:carp_point_app/pages/screens/profile_page/profile_screens/widgets/user_information.dart';
import 'package:flutter/material.dart';

class PersonInformation extends StatelessWidget {
  const PersonInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UserInformation(
        title: "Thông tin cá nhân",
        correct: "Sửa",
      ),
    );
  }
}
