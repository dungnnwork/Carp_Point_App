import 'package:carp_point_app/pages/screens/partner_page/widgets/partner_address.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../components_app/background_page.dart';
import '../../components_app/background_product.dart';
import '../../components_app/title_detail.dart';

class PartnerPage extends StatefulWidget {
  const PartnerPage({Key? key}) : super(key: key);

  @override
  State<PartnerPage> createState() => _PartnerPageState();
}

class _PartnerPageState extends State<PartnerPage> {
  List<Map<String, dynamic>> brands = [
    {
      'image': 'assets/images/coffe_house_big.png',
      'name': 'The coffee house',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/Gemini-Coffee-big.png',
      'name': 'Gemini coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/king_coffee.png',
      'name': 'King Coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/mentor_tea.png',
      'name': 'Trà đá Mentor',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/roll.png',
      'name': 'Bánh cuốn Gia An',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/o_mai.png',
      'name': 'Ô Mai Hồng Lam',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/coffe_house_big.png',
      'name': 'The coffee house',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/Gemini-Coffee-big.png',
      'name': 'Gemini coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/king_coffee.png',
      'name': 'King Coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/mentor_tea.png',
      'name': 'Trà đá Mentor',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/roll.png',
      'name': 'Bánh cuốn Gia An',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/o_mai.png',
      'name': 'Ô Mai Hồng Lam',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/coffe_house_big.png',
      'name': 'The coffee house',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/Gemini-Coffee-big.png',
      'name': 'Gemini coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/king_coffee.png',
      'name': 'King Coffee',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/mentor_tea.png',
      'name': 'Trà đá Mentor',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/roll.png',
      'name': 'Bánh cuốn Gia An',
      'type_andress': 'Nhà hàng',
    },
    {
      'image': 'assets/images/o_mai.png',
      'name': 'Ô Mai Hồng Lam',
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
                      itemBuilder: (context, index) => PartnerAddress(
                        image: brands[index]['image'],
                        name: brands[index]['name'],
                        typeAndress: brands[index]['type_andress'],
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