
import 'package:carp_point_app/pages/dependent_app/constants.dart';
import 'package:carp_point_app/pages/screens/qr_page/widget/my_qr_code.dart';
import 'package:carp_point_app/pages/screens/qr_page/widget/qr_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class QRPage extends StatefulWidget {
  const QRPage({Key? key}) : super(key: key);

  @override
  State<QRPage> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  String result = '';
  int seclectedIndex = 0;
  List<Widget> pageQR = [const QRScan(), const MyQRCode()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageQR[seclectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.w),
          topRight: Radius.circular(20.w),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: true,
          currentIndex: seclectedIndex,
          onTap: onTapHandel,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.qr_code_scanner,
                  color: Colors.blue,
                ),
                icon: Icon(Icons.qr_code_scanner),
                label: "Quét mã QR"),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.qr_code,
                color: Colors.blue,
              ),
              icon: Icon(Icons.qr_code),
              label: "Mã QR của tôi",
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _scan() async {
    try {
      String value = await FlutterBarcodeScanner.scanBarcode(
          '#000000', 'cancel', true, ScanMode.BARCODE);
      setState(() {
        result = value;
      });
    } on PlatformException {
      return;
    }
  }

  void onTapHandel(int index) {
    setState(
      () {
        seclectedIndex = index;
        if (seclectedIndex == 0) {
          _scan();
          seclectedIndex = 0;
          Get.snackbar(
            "Mã QR ",
            result,
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: kbuttonBackgroundColors,
            duration: const Duration(seconds: 5),
            borderRadius: 20,
            forwardAnimationCurve: Curves.easeOutBack,
          );
        }
      },
    );
  }
}
