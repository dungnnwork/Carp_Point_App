import 'package:carp_point_app/pages/screens/profile_page/profile_screens/widgets/history_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components_app/background_offer.dart';
import '../../../components_app/background_page.dart';
import '../../../components_app/title_detail.dart';
import '../../../dependent_app/constants.dart';
import '../../../dependent_app/text_style.dart';

class PointHistory extends StatefulWidget {
  const PointHistory({Key? key}) : super(key: key);

  @override
  State<PointHistory> createState() => _PointHistoryState();
}

class _PointHistoryState extends State<PointHistory>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
          Column(
            children: [
              TitleDetail(
                title: "Lịch sử điểm",
                widgetLeft: Image.asset("assets/images/Path back.png"),
                widgetRight: Container(),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 57.h,
                width: 171.w,
                padding: EdgeInsets.only(left: 21.37.w, right: 7.13.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.58.w),
                  color: kBackgroundColors,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 9.53.w),
                      blurRadius: 4.w,
                      color: const Color(0xff000000).withOpacity(0.1.w),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Text(
                      "110",
                      style: TextStyle(
                        fontSize: 38.sp,
                        fontWeight: FontWeight.w700,
                        color: kTextPrimaryColors,
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Image.asset("assets/icons/icons_profile/Group 104.png"),
                  ],
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              const BackgroundOffer(),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 223.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Container(
                    height: 50.h,
                    padding: EdgeInsets.only(top: 6.h, bottom: 6.h, left: 6.w),
                    decoration: BoxDecoration(
                      color: const Color(0xfffffae9),
                      borderRadius: BorderRadius.circular(20.w),
                    ),
                    child: TabBar(
                      labelColor: kTextTitleBigColors,
                      unselectedLabelColor: const Color(0xff757575),
                      controller: tabController,
                      indicator: BoxDecoration(
                        color: kbuttonBackgroundColors,
                        borderRadius: BorderRadius.circular(14.w),
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            "Tích điểm",
                            style: nameBrandSmallBlack,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Tiêu điểm",
                            style: nameBrandSmallBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: const [
                      History(),
                      History(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
