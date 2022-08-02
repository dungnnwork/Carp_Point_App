import 'package:carp_point_app/pages/screens/endow_page/endow_page.dart';
import 'package:carp_point_app/pages/screens/home_page/home_page.dart';
import 'package:carp_point_app/pages/screens/partner_page/partner_page.dart';
import 'package:carp_point_app/pages/screens/profile_page/profile_page.dart';
import 'package:carp_point_app/pages/screens/qr_page/qr_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../dependent_app/constants.dart';

class AccumApp extends StatefulWidget {
  const AccumApp({Key? key}) : super(key: key);
  @override
  State<AccumApp> createState() => _AccumAppState();
}

class _AccumAppState extends State<AccumApp> {
  String result = '';
  int seclectedIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const EndowPage(),
    const QRPage(),
    const PartnerPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return bodyApp();
  }

  Widget bodyApp() {
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      body: pages[seclectedIndex],
    );
  }

  Widget bottomBar() {
    return Container(
      height: 79.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 10.0,
            color: const Color(0xffd9d9d9).withOpacity(0.25),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.w),
          topRight: Radius.circular(10.w),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xfffdfdfd),
          fixedColor: Colors.black,
          showSelectedLabels: true,
          currentIndex: seclectedIndex,
          onTap: onTapHandel,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/home_black.png",
                color: activeItemColors,
              ),
              icon: Image.asset("assets/icons/icons_bottombar/home_black.png"),
              label: "Trang chủ",
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/endow.png",
                color: activeItemColors,
              ),
              icon: Image.asset("assets/icons/icons_bottombar/endow.png"),
              label: 'Ưu đãi',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/qrcode.png",
                color: activeItemColors,
              ),
              icon: Image.asset("assets/icons/icons_bottombar/qrcode.png"),
              label: 'Quét mã',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/partner.png",
                color: activeItemColors,
              ),
              icon: Image.asset("assets/icons/icons_bottombar/partner.png"),
              label: 'Đối tác',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/profile.png",
                color: activeItemColors,
              ),
              icon: Image.asset("assets/icons/icons_bottombar/profile.png"),
              label: 'Cá nhân',
            ),
          ],
        ),
      ),
    );
  }
  void onTapHandel(int index) {
    setState(
      () {
        seclectedIndex = index;
      },
    );
  }
}
