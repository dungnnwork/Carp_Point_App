import 'package:carp_point_app/pages/screens/home_page/widgets/product_home_page/components/brands_partner.dart';
import 'package:carp_point_app/pages/screens/home_page/widgets/product_home_page/components/title_background_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:get/get.dart';
import '../../../../endow_page/endow_page.dart';
import '../../../../partner_page/partner_page.dart';

class StikyTitle extends StatelessWidget {
  const StikyTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPinnedHeader(
      child: Column(
        children: [
          TitleBackGroundProduct(
            title: 'Thương hiệu tích - tiêu điểm',
            onPress: () {
               Get.to(() => const PartnerPage());
            },
          ),
          SizedBox(height: 16.h),
    const BrandsPartner(),
          SizedBox(height: 1.h),
          TitleBackGroundProduct(
            title: 'Săn ưu đãi',
            onPress: () {
              Get.to(() => const EndowPage());
            },
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
