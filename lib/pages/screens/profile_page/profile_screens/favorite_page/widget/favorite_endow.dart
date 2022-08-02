
import 'package:carp_point_app/pages/components_app/endow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteEndow extends StatelessWidget {
  const FavoriteEndow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> favariteOffers = [
       {
        "image"       : "assets/images/hello summer.png",
        "title"       : "Ưu đãi giảm 50.000 đồng",
        "nameBrand"   : "The coffee house",
        'numberPoints': 50,
      },
      {
        "image"       : "assets/images/super sale.png",
        "title"       : "Ưu đãi giảm 50.000 đồng",
        "nameBrand"   : "Gemini",
        'numberPoints': 200,
      },
      {
        "image"       : "assets/images/hello summer.png",
        "title"       : "Ưu đãi giảm 50.000 đồng",
        "nameBrand"   : "The coffee house",
        'numberPoints': 50,
      },
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          favariteOffers.length,
          (index) => Endow(
              image: favariteOffers[index]['image'],
              titleEndow: favariteOffers[index]['title'],
              nameBrandEndow: favariteOffers[index]['nameBrand'],
              numberPoints: favariteOffers[index]['numberPoints'],
              ),
        ),
      ),
    );
  }
}