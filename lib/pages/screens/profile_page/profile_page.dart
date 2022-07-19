import 'package:carp_point_app/pages/screens/profile_page/profile_screens/individual.dart';
import 'package:carp_point_app/pages/screens/profile_page/profile_screens/love_screen.dart';
import 'package:carp_point_app/pages/screens/profile_page/profile_screens/my_endow.dart';
import 'package:carp_point_app/pages/screens/profile_page/profile_screens/point_history.dart';
import 'package:carp_point_app/pages/screens/profile_page/profile_screens/widgets/user.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components_app/background_offer.dart';
import '../../components_app/background_page.dart';
import '../../components_app/profile_action.dart';
import '../../components_app/title_detail.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPage(),
          Column(
            children: [
              TitleDetail(
                title: "Cá nhân",
                widgetLeft: Container(),
                widgetRight: Container(),
              ),
              SizedBox(
                height: 8.h,
              ),
              const User(),
              SizedBox(
                height: 14.h,
              ),
              const BackgroundOffer(),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 249.h, left: 20.w, right: 18.w),
            child: Column(
              children: [
                ProfileAction(
                  imageUrl: "assets/icons/icons_profile/ticket-star.png",
                  des: "Ưu đãi của tôi",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyEndow()));
                  },
                ),
                const DottedLine(
                  lineThickness: 0.1,
                ),
                SizedBox(
                  height: 15.h,
                ),
                ProfileAction(
                  imageUrl: "assets/icons/icons_profile/people.png",
                  des: "Mời bạn bè",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Individual()));
                  },
                ),
                const DottedLine(
                  lineThickness: 0.1,
                ),
                SizedBox(
                  height: 15.h,
                ),
                ProfileAction(
                  imageUrl: "assets/icons/icons_profile/book.png",
                  des: "Lịch sử điểm",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PointHistory()));
                  },
                ),
                const DottedLine(
                  lineThickness: 0.1,
                ),
                SizedBox(
                  height: 15.h,
                ),
                ProfileAction(
                  imageUrl: "assets/icons/icons_profile/Group 172.png",
                  des: "Yêu thích",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoveScrenn()));
                  },
                ),
                const DottedLine(
                  lineThickness: 0.1,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ProfileAction(
                  imageUrl: "assets/icons/icons_profile/info-circle.png",
                  des: "Về chúng tôi",
                ),
                const DottedLine(
                  lineThickness: 0.1,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ProfileAction(
                  imageUrl: "assets/icons/icons_profile/headphone.png",
                  des: "Hỗ trợ",
                ),
                const DottedLine(
                  lineThickness: 0.1,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ProfileAction(
                  imageUrl: "assets/icons/icons_profile/unlock.png",
                  des: "Đổi mật khẩu",
                ),
                const DottedLine(
                  lineThickness: 0.1,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ProfileAction(
                  imageUrl: "assets/icons/icons_profile/login.png",
                  des: "Đăng xuất",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
