import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/widgets/back_button.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/interest_check.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class EventDetail extends StatefulWidget {
  EventDetail({super.key});

  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  bool isShowMore = true;
  @override
  void initState() {
    isShowMore = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          width: double.infinity,
          height: isShowMore ? 800 * fem : 1000 * fem,
          child: Stack(
            children: [
              Container(
                padding:
                    EdgeInsets.fromLTRB(40 * fem, 44 * fem, 40 * fem, 44 * fem),
                width: double.infinity,
                height: 320 * fem,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/events/e1.jpeg',
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0 * fem,
                top: 280 * fem,
                child: Align(
                  child: SizedBox(
                    width: 385 * fem,
                    height: 939 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30 * fem),
                          topRight: Radius.circular(30 * fem),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 60 * fem,
                left: 20 * fem,
                child: Align(
                  child: SizedBox(
                    child: Back(
                      fem: fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 250 * fem,
                left: 35 * fem,
                right: 35 * fem,
                child: Container(
                  width: 320 * fem,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 60 * fem,
                            height: 60 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'assets/ui-kit/images/photo-bg-DK6.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20 * fem,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jessica Parker, 23',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text('Proffesional model',
                                  style: Theme.of(context).textTheme.bodyText1),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        indent: 18,
                        endIndent: 18,
                        thickness: 1,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 5 * fem),
                        child: Text(
                          'International Gala Music Festival'.tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      SizedBox(
                        height: 10 * fem,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 60 * fem,
                            height: 60 * fem,
                            decoration: BoxDecoration(
                              color: AppColor.greyBorder,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                '4.5',
                                style: AppTextStyle
                                    .buildSafeGoogleFont2470015black(ffem, fem),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Container(
                              height: 60 * fem,
                              width: 1,
                              color: AppColor.greyBorder,
                            ),
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '14 Dec, 2019',
                                style: AppTextStyle
                                    .buildSafeGoogleFont1670015black(ffem, fem),
                              ),
                              Text(
                                'Tuesday, 4PM -9PM',
                                style: AppTextStyle
                                    .buildSafeGoogleFont1440015subtitle(
                                        ffem, fem),
                              )
                            ],
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 20 * fem,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 60 * fem,
                            height: 60 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'assets/events/m2.webp',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Container(
                              height: 60 * fem,
                              width: 1,
                              color: AppColor.greyBorder,
                            ),
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gala Night Conventio',
                                style: AppTextStyle
                                    .buildSafeGoogleFont1670015black(ffem, fem),
                              ),
                              Text(
                                '2855 South Orange Ave, Florido',
                                style: AppTextStyle
                                    .buildSafeGoogleFont1440015subtitle(
                                        ffem, fem),
                              )
                            ],
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 20 * fem,
                      ),
                      ReadMoreText(
                        'My name is Jessica Parker and I enjoy meeting new people and finding ways to My name is Jessica Parker and I enjMy name is Jessica Parker and I enjoy meeting new people and finding ways to My name is Jessica Parker and I enjoy meeting new people and finding ways to oy meeting new people and finding ways to enjoy meeting new people and finding ways to  I enjoy meeting new people and finding ways to  I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy reading ',
                        style: Theme.of(context).textTheme.bodyText1,
                        trimLines: 3,
                        colorClickableText: Colors.pink,
                        trimMode: TrimMode.Line,
                        callback: (c) {
                          setState(() {
                            print(c);
                            isShowMore = c;
                          });
                        },
                        trimCollapsedText: "\n" + 'Read more'.tr,
                        trimExpandedText: "\n" + 'Show less'.tr,
                        moreStyle:
                            AppTextStyle.buildSafeGoogleFont1470015primary(
                                ffem, fem),
                        lessStyle:
                            AppTextStyle.buildSafeGoogleFont1470015lightprimary(
                                ffem, fem),
                      ),
                      SizedBox(
                        height: 20 * fem,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 10 * fem, 0 * fem, 48 * fem),
                        child: Container(
                            // btncontinuet3i (309:5139)
                            width: double.infinity,
                            height: 56 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffe94057),
                              borderRadius: BorderRadius.circular(15 * fem),
                            ),
                            child: CommonButton(
                              onPress: () {},
                              fem: fem,
                              ffem: ffem,
                              text: 'Buy Ticket \$20'.tr,
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
