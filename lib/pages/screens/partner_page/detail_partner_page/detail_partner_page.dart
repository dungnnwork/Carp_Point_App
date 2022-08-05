import 'package:carp_point_app/pages/screens/partner_page/detail_partner_page/widget/introduct_partner.dart';
import 'package:carp_point_app/pages/screens/partner_page/detail_partner_page/widget/tabbar_partner_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../components_app/background_page.dart';
import '../../../components_app/background_product.dart';
import '../../../components_app/title_detail.dart';

class DetailPartnerPage extends StatefulWidget {
  const DetailPartnerPage({Key? key}) : super(key: key);

  @override
  State<DetailPartnerPage> createState() => _DetailPartnerPageState();
}

class _DetailPartnerPageState extends State<DetailPartnerPage>
    with TickerProviderStateMixin {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
          Column(
            children: [
              TitleDetail(
                title: 'Chi tiết đối tác',
                widgetLeft: Image.asset("assets/images/Path back.png"),
                widgetRight: Image.asset("assets/images/Vector heart.png"),
              ),
              SizedBox(
                height: 8.h,
              ),
              Expanded(
                child: BackGroundProduct(
                  child: Container(
                    padding: EdgeInsets.only(top: 18.h),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18.w),
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(13.52.w),
                                child: Image.asset(
                                  "assets/images/hello summer 18.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 24.h),
                            const IntroducePartnerDetail(
                              image: 'assets/images/coffe_house_30x30.png',
                              name: 'The coffee house',
                              typeAndress: 'Nhà hàng',
                            ),
                          ],
                        ),
                        const TabbarPartnerdetail(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}