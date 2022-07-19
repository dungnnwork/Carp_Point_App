import 'package:carp_point_app/pages/screens/profile_page/profile_screens/widgets/favorite_endow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../dependent_app/constants.dart';

class MyEndowDetail extends StatefulWidget {
  const MyEndowDetail({Key? key}) : super(key: key);

  @override
  State<MyEndowDetail> createState() => _MyEndowDetailState();
}

class _MyEndowDetailState extends State<MyEndowDetail>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Container(
      margin: EdgeInsets.only(top: 130.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 18.w, right: 18.w),
            child: TabBar(
              labelColor: kTextTitleBigColors,
              unselectedLabelColor: const Color(0xff757575),
              controller: tabController,
              tabs: [
                Tab(
                  child: Text(
                    "Quà tặng",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                  ),
                ),
                Tab(
                  child: Text(
                    "Đang có",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                  ),
                ),
                Tab(
                  child: Text(
                    "Đã sử dụng",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                  ),
                ),
                Tab(
                  child: Text(
                    "Hết hạn",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 34.h,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                FavoriteEndow(),
                FavoriteEndow(),
                FavoriteEndow(),
                FavoriteEndow(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
