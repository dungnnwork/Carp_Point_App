import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components_app/background_page.dart';
import '../../components_app/background_product.dart';
import '../../components_app/title_detail.dart';
import '../../dependent_app/text_style.dart';
import '../home_page/widgets/product_home_page/components/endows_partner.dart';

class EndowPage extends StatefulWidget {
  const EndowPage({Key? key}) : super(key: key);

  @override
  State<EndowPage> createState() => _EndowPageState();
}

class _EndowPageState extends State<EndowPage> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
          Column(
            children: [
              TitleDetail(
                title: "Ưu đãi",
                widgetLeft: Container(),
                widgetRight: Image.asset("assets/images/Vector heart.png"),
              ),
              SizedBox(height: 22.h),
              Container(
                width: 339.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10.w),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, -3),
                      blurRadius: 4.0,
                      color: const Color(0xff000000).withOpacity(0.1),
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    prefixIcon: Image.asset(
                      "assets/images/search-status.png",
                      color: const Color(0xff292d32).withOpacity(0.4),
                    ),
                    hintText: 'Tìm kiếm',
                    hintStyle: hinTextStyle,
                    suffixIcon: Image.asset("assets/images/x-circle.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Expanded(
                child: BackGroundProduct(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(top: 24.h),
                      child: const EndowsPartner(),
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

  void search(String query) {}
}
