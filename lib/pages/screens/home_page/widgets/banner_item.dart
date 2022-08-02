import 'package:carp_point_app/pages/dependent_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerItem extends StatefulWidget {
  const BannerItem({Key? key}) : super(key: key);

  @override
  State<BannerItem> createState() => _BannerItemState();
}

class _BannerItemState extends State<BannerItem> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 154.h,
          child: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            itemCount: bannerList.length,
            itemBuilder: ((context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.w),
                  image: DecorationImage(
                      image: AssetImage(bannerList[index].thumnail),
                      fit: BoxFit.cover),
                ),
              );
            }),
          ),
        ),
        SizedBox(height: 8.h),
        Container(
          margin: EdgeInsets.only(bottom: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                bannerList.length,
                (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 350),
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  width: 6.w,
                  height: 6.h,
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? kBackgroundColors
                        : kBackgroundColors.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AppBanner {
  final int id;
  final String thumnail;

  AppBanner(this.id, this.thumnail);
}

List<AppBanner> bannerList = [
  AppBanner(1, "assets/images/Group 120.png"),
  AppBanner(2, "assets/images/Group 120.png"),
  AppBanner(3, "assets/images/Group 120.png"),
];
