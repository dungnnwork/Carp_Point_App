import 'package:carp_point_app/pages/screens/partner_page/detail_partner_page/detail_partner_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components_app/background_page.dart';
import '../../components_app/background_product.dart';
import '../../components_app/title_detail.dart';
import '../../dependent_app/constants.dart';
import '../../dependent_app/text_style.dart';

class PartnerPage extends StatefulWidget {
  const PartnerPage({Key? key}) : super(key: key);

  @override
  State<PartnerPage> createState() => _PartnerPageState();
}

class _PartnerPageState extends State<PartnerPage> {
  List<Map<String, dynamic>> brands = [
    {
      'image': 'assets/images/coffe_house_big.png',
      'title': 'The coffee house',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/Gemini-Coffee-big.png',
      'title': 'Gemini coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/king_coffee.png',
      'title': 'King Coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/mentor_tea.png',
      'title': 'Trà đá Mentor',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/roll.png',
      'title': 'Bánh cuốn Gia An',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/o_mai.png',
      'title': 'Ô Mai Hồng Lam',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/coffe_house_big.png',
      'title': 'The coffee house',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/Gemini-Coffee-big.png',
      'title': 'Gemini coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/king_coffee.png',
      'title': 'King Coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/mentor_tea.png',
      'title': 'Trà đá Mentor',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/roll.png',
      'title': 'Bánh cuốn Gia An',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/o_mai.png',
      'title': 'Ô Mai Hồng Lam',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/coffe_house_big.png',
      'title': 'The coffee house',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/Gemini-Coffee-big.png',
      'title': 'Gemini coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/king_coffee.png',
      'title': 'King Coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/mentor_tea.png',
      'title': 'Trà đá Mentor',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/roll.png',
      'title': 'Bánh cuốn Gia An',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/o_mai.png',
      'title': 'Ô Mai Hồng Lam',
      'type_andress': 'Nhà hàng',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
          Column(
            children: [
              TitleDetail(
                title: "Đối tác",
                widgetLeft: Container(),
                widgetRight: Image.asset("assets/images/Vector heart.png"),
              ),
              SizedBox(height: 12.h),
              Expanded(
                child: BackGroundProduct(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    margin: EdgeInsets.only(bottom: 16.h),
                    child: GridView.builder(
                      itemCount: brands.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.h,
                        mainAxisSpacing: 11.h,
                      ),
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailPartnerPage(),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 75.h,
                                width: 161.w,
                                margin: EdgeInsets.only(bottom: 8.h),
                                padding: EdgeInsets.only(
                                    top: 24.h, left: 5.w, bottom: 10.h),
                                decoration: BoxDecoration(
                                  color: kBackgroundColors,
                                  borderRadius: BorderRadius.circular(5.w),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          kTextTitleBigColors.withOpacity(0.16),
                                      blurRadius: 4.0,
                                      offset: const Offset(0, 4),
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      brands[index]['title'],
                                      style: nameBrandSmallBlack,
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 3.h),
                                    Text(
                                      brands[index]['type_andress'],
                                      style: typeBrandSmallYellow,
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.w),
                                  topRight: Radius.circular(5.w),
                                ),
                                child: Image.asset(
                                  brands[index]['image'],
                                  fit: BoxFit.cover,
                                  height: 106.h,
                                  width: 161.w,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
