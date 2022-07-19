import 'package:carp_point_app/pages/screens/profile_page/profile_screens/widgets/my_endow_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components_app/background_offer.dart';
import '../../../components_app/background_page.dart';
import '../../../components_app/title_detail.dart';

class MyEndow extends StatefulWidget {
  const MyEndow({Key? key}) : super(key: key);

  @override
  State<MyEndow> createState() => _MyEndowState();
}

class _MyEndowState extends State<MyEndow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
          Column(
            children: [
              TitleDetail(
                title: "Ưu đãi của tôi",
                widgetLeft: Image.asset("assets/images/Path back.png"),
                widgetRight: Container(),
              ),
              SizedBox(
                height: 14.h,
              ),
              const BackgroundOffer(),
            ],
          ),
          const MyEndowDetail(),
        ],
      ),
    );
  }
}
