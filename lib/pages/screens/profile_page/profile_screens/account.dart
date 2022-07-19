import 'package:carp_point_app/pages/screens/profile_page/profile_screens/widgets/user_information.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UserInformation(
        title: "Tài khoản",
        correct: "Lưu",
      ),
    );
  }
}
