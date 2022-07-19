import 'package:carp_point_app/pages/screens/home_page/widgets/banner_item.dart';
import 'package:carp_point_app/pages/screens/home_page/widgets/product_home_page/product_homepage.dart';
import 'package:carp_point_app/pages/screens/home_page/widgets/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components_app/background_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
          Column(
            children: [
              const Welcome(
                userName: "Kim Ngân",
                rating: "Tiêu chuẩn",
                numberPoints: "1000",
                avatarUser: "assets/images/avatar.jpg",
              ),
              SizedBox(height: 13.h),
              const Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(child: BannerItem()),
                    ProductHomepage()
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
