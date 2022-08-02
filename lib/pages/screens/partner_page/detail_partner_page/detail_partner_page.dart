import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../components_app/background_page.dart';
import '../../../components_app/background_product.dart';
import '../../../components_app/title_detail.dart';
import '../../../dependent_app/constants.dart';
import '../../../dependent_app/text_style.dart';
import '../../home_page/widgets/product_home_page/components/endows_partner.dart';

class DetailPartnerPage extends StatefulWidget {
  const DetailPartnerPage({Key? key}) : super(key: key);

  @override
  State<DetailPartnerPage> createState() => _DetailPartnerPageState();
}

class _DetailPartnerPageState extends State<DetailPartnerPage>
    with TickerProviderStateMixin {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Stack(
        children: [
    const BackgroundPage(),
          Column(
            children: [
              TitleDetail(
                title: 'Chi tiết đối tác',
                widgetLeft: Image.asset("assets/images/arrow-left.png"),
                widgetRight: Image.asset("assets/images/Vector heart.png"),
              ),
              SizedBox(
                height: 8.h,
              ),
              Expanded(
                child: BackGroundProduct(
                  child: Container(
                    padding: EdgeInsets.only(top: 18.h),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18.w),
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(13.52.w),
                                child: Image.asset(
                                  "assets/images/hello summer 18.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 24.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18.w),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 67.h,
                                    width: 67.h,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(10.0.w),
                                      child: Image.asset(
                                          'assets/images/coffe_house 67_67.png'),
                                    ),
                                  ),
                                  SizedBox(width: 8.w),
                                  DottedLine(
                                    direction: Axis.vertical,
                                    lineLength: 67.h,
                                    lineThickness: 1.w,
                                    dashLength: 1.86.h,
                                    dashGapLength: 1.86.h,
                                    dashColor: const Color(0xffA1A1A1),
                                  ),
                                  SizedBox(width: 17.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'The coffee house',
                                        style: nameBrandBigBlack,
                                      ),
                                      SizedBox(height: 8.h),
                                      Text(
                                        'Nhà hàng',
                                        style: typeBrandBigYellow,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 250.h),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.w),
                                child: Container(
                                  height: 40.h,
                                  padding: EdgeInsets.only(
                                      top: 6.h, left: 6.h, bottom: 6.h),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFFFAE9),
                                      borderRadius:
                                          BorderRadius.circular(20.w)),
                                  child: TabBar(
                                    labelColor: kTextTitleBigColors,
                                    unselectedLabelColor:
                                        const Color(0xff757575),
                                    controller: tabController,
                                    indicator: BoxDecoration(
                                        color: const Color(0xffFFD233),
                                        borderRadius:
                                            BorderRadius.circular(14.w)),
                                    tabs: [
                                      Tab(
                                        child: Text(
                                          'Thông tin',
                                          style: textStyleTitleEndow,
                                        ),
                                      ),
                                      Tab(
                                        child: Text(
                                          'Cửa hàng',
                                          style: textStyleTitleEndow,
                                        ),
                                      ),
                                      Tab(
                                        child: Text(
                                          'Ưu đãi',
                                          style: textStyleTitleEndow,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: tabController,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 18.w),
                                      margin: EdgeInsets.only(
                                          top: 17.h, bottom: 16.h),
                                      child: SingleChildScrollView(
                                        child: Text(
                                          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text ",
                                          style: textDescript,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 15.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 18.w),
                                      child: Column(
                                        children: List.generate(
                                          5,
                                          (index) => Container(
                                            margin:
                                                EdgeInsets.only(bottom: 6.h),
                                            child: Column(
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      width: 30.w,
                                                      height: 30.h,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      2.w),
                                                          image:
                                                              const DecorationImage(
                                                            image: AssetImage(
                                                                "assets/images/coffe_house_30x30.png"),
                                                            fit: BoxFit.cover,
                                                          )),
                                                    ),
                                                    SizedBox(
                                                      width: 17.w,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "The coffee house Ngoại giao đoàn",
                                                          style: addressBrand,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                              "assets/images/location1.png",
                                                              width: 16.w,
                                                              height: 16.h,
                                                            ),
                                                            SizedBox(
                                                              width: 13.w,
                                                            ),
                                                            Text(
                                                              "Số 6, the are many variations of passages ",
                                                              style: desAddress,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 16.h,
                                                      height: 16.h,
                                                      child: Image.asset(
                                                          'assets/images/direct-right.png'),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(height: 5.h),
                                                DottedLine(
                                                  direction: Axis.horizontal,
                                                  lineLength: double.infinity,
                                                  lineThickness: 1.w,
                                                  dashLength: 1.5.w,
                                                  dashGapLength: 2.w,
                                                  dashColor:
                                                      const Color(0xffC4C4C4),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 20.h),
                                      child: const SingleChildScrollView(
                                        child: EndowsPartner(),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
