
import 'package:carp_point_app/pages/screens/endow_page/offer_detail_page/widgets/infor_offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components_app/background_offer.dart';
import '../../../components_app/background_page.dart';
import '../../../components_app/title_detail.dart';

class OfferDetails extends StatelessWidget {
  const OfferDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
    const BackgroundPage(),
          Column(
            children: [
              TitleDetail(
                title: "Chi tiết ưu đãi",
                widgetLeft: Image.asset("assets/images/arrow-left.png"),
                widgetRight: Image.asset("assets/images/Vector heart.png"),
              ),
              SizedBox(
                height: 8.h,
              ),
        const BackgroundOffer(),
            ],
          ),
    const InforOffer(),
        ],
      ),
    );
  }
}
