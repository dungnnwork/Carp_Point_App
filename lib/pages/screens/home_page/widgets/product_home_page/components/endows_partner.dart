import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../components_app/endow.dart';

class EndowsPartner extends StatelessWidget {
  const EndowsPartner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> brands2 = [
      {
        "image": "assets/images/hello summer.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "The coffee house",
        'numberPoints': 50,
      },
      {
        "image": "assets/images/super sale.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "Gemini",
        'numberPoints': 200,
      },
      {
        "image": "assets/images/hello summer.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "The coffee house",
        'numberPoints': 50,
      },
      {
        "image": "assets/images/super sale.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "Gemini",
        'numberPoints': 200,
      },
      {
        "image": "assets/images/hello summer.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "The coffee house",
        'numberPoints': 50,
      },
      {
        "image": "assets/images/super sale.png",
        "title": "Ưu đãi giảm 50.000 đồng",
        "nameBrand": "Gemini",
        'numberPoints': 200,
      },
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          brands2.length,
          (index) => Endow(
            image: brands2[index]['image'],
            titleEndow: brands2[index]['title'],
            nameBrandEndow: brands2[index]['nameBrand'],
            numberPoints: brands2[index]['numberPoints'],
          ),
        ),
      ),
    );
  }
}
