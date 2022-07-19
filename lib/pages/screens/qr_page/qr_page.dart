import 'package:carp_point_app/pages/screens/qr_page/widget/my_qr_code.dart';
import 'package:carp_point_app/pages/screens/qr_page/widget/qr_scan.dart';
import 'package:flutter/material.dart';

class QRPage extends StatefulWidget {
  const QRPage({Key? key}) : super(key: key);

  @override
  State<QRPage> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  int seclectedIndex = 0;
  List<Widget> pageQR = [const QRScan(), const MyQRCode()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageQR[seclectedIndex],
      bottomNavigationBar: BottomNavigationBar(
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
