import 'package:carp_point_app/pages/screens/endow_page/endow_page.dart';
import 'package:carp_point_app/pages/screens/home_page/home_page.dart';
import 'package:carp_point_app/pages/screens/partner_page/partner_page.dart';
import 'package:carp_point_app/pages/screens/profile_page/profile_page.dart';
import 'package:carp_point_app/pages/screens/qr_page/qr_page.dart';
import 'package:carp_point_app/routes/app_routes.dart';
import 'package:get/get.dart';
class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initital,
      page: () =>  const HomePage(),
    ),
    GetPage(
      name: Routes.endow,
      page: () => const EndowPage(),
    ),
    GetPage(
      name: Routes.qr,
      page: () => const QRPage(),
    ),
    GetPage(
      name: Routes.partner,
      page: () => const PartnerPage(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
    )
  ];
}