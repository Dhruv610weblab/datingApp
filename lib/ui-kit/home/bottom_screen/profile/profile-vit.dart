import 'package:datingapp/ui-kit/home/bottom_screen/profile/settings/settings.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/profile/photo-fullsreen.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/widgets/back_button.dart';
import 'package:datingapp/widgets/interest_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:datingapp/units/utils.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class UserProfile extends StatefulWidget {
  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  List checkList = [
    {"name": "Dancing", "check": true},
    {"name": "Travelling", "check": true},
    {"name": "Books", "check": false},
    {"name": "Music", "check": false},
    {"name": "Modelling", "check": true}
  ];
  List gallery = [
    'assets/ui-kit/images/photo-bg-4Tz.png',
    'assets/ui-kit/images/photo-bg-Xha.png',
    'assets/ui-kit/images/photo-bg-Fon.png',
    'assets/ui-kit/images/photo-bg-MV2.png',
    'assets/ui-kit/images/photo-bg-ofe.png'
  ];

  bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          width: double.infinity,
          height: isShowMore == true ? 1325 * fem : 1525 * fem,
          child: Stack(
            fit: StackFit.loose,
            children: [
              Container(
                padding:
                    EdgeInsets.fromLTRB(40 * fem, 44 * fem, 40 * fem, 44 * fem),
                width: 385 * fem,
                height: 415 * fem,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/ui-kit/images/photo-bg-DK6.png',
                    ),
                  ),
                ),
              ),
              // Positioned(
              //     top: 10 * fem,
              //     right: 10 * fem,
              //     child: IconButton(
              //       icon: Icon(Icons.settings),
              //       onPressed: () {},
              //     )),
              Positioned(
                left: 0 * fem,
                top: 386 * fem,
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
                top: 410 * fem,
                child: Container(
                  width: 385 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 295 * fem,
                        height: 57 * fem,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 56 * fem, 0 * fem),
                          height: double.infinity,
                          child: Column(
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
                        ),
                      ),
                      SizedBox(
                        height: 20 * fem,
                      ),
                      Container(
                        width: 295 * fem,
                        height: 50 * fem,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 89 * fem, 0 * fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                child: Text(
                                  'Location'.tr,
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                              Text(
                                'Chicago, IL United States',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20 * fem,
                      ),
                      Container(
                        width: 295 * fem,
                        height: 50 * fem,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 89 * fem, 0 * fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                child: Text(
                                  'Kids'.tr,
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                              Text(
                                '''Don’t have kids – want some''',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20 * fem,
                      ),
                      Container(
                        width: 295 * fem,
                        height: 50 * fem,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 89 * fem, 0 * fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                child: Text(
                                  'Religion'.tr,
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                              Text(
                                'Hindu',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20 * fem,
                      ),
                      Container(
                        width: 296 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About'.tr,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            SizedBox(
                              height: 5 * fem,
                            ),
                            Container(
                                constraints: BoxConstraints(
                                  maxWidth: 296 * fem,
                                ),
                                child: ReadMoreText(
                                  'My name is Jessica Parker and I enjoy meeting new people and finding ways to My name is Jessica Parker and I enjMy name is Jessica Parker and I enjoy meeting new people and finding ways to My name is Jessica Parker and I enjoy meeting new people and finding ways to oy meeting new people and finding ways to enjoy meeting new people and finding ways to  I enjoy meeting new people and finding ways to  I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy reading ',
                                  style: Theme.of(context).textTheme.bodyText1,
                                  trimLines: 3,
                                  colorClickableText: Colors.pink,
                                  trimMode: TrimMode.Line,
                                  callback: (c) {
                                    setState(() {
                                      isShowMore = c;
                                    });
                                  },
                                  trimCollapsedText: "\n" + 'Read more'.tr,
                                  trimExpandedText: "\n" + 'Show less'.tr,
                                  moreStyle: AppTextStyle
                                      .buildSafeGoogleFont1470015primary(
                                          ffem, fem),
                                  lessStyle: AppTextStyle
                                      .buildSafeGoogleFont1470015lightprimary(
                                          ffem, fem),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20 * fem,
                      ),
                      Container(
                        width: 295 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Passions'.tr,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            SizedBox(
                              height: 10 * fem,
                            ),
                            GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                shrinkWrap: true,
                                itemCount: checkList.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: 2.8 * fem,
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 8 * fem,
                                        mainAxisSpacing: 4 * fem),
                                itemBuilder: (context, index) {
                                  return CheckInterestProfile(
                                      fem: fem,
                                      ffem: ffem,
                                      name: checkList[index]["name"],
                                      isCheck: checkList[index]["check"]);
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20 * fem,
                      ),
                      Container(
                        width: 295 * fem,
                        height: 356 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 3 * fem, 0 * fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 200 * fem, 0 * fem),
                                    child: Text(
                                      'Gallery'.tr,
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => Get.to(() => Photos()),
                                    child: Text(
                                      'See all'.tr,
                                      style: AppTextStyle
                                          .buildSafeGoogleFont1470015primary(
                                              ffem, fem),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10 * fem,
                            ),
                            Container(
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                    width: 142 * fem,
                                    height: 190 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/ui-kit/images/photo-bg-4Tz.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 143 * fem,
                                    height: 190 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/ui-kit/images/photo-bg-Xha.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10 * fem,
                            ),
                            Container(
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 92 * fem,
                                    height: 122 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/ui-kit/images/photo-bg-Fon.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10 * fem,
                                  ),
                                  Container(
                                    width: 91 * fem,
                                    height: 122 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/ui-kit/images/photo-bg-MV2.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10 * fem,
                                  ),
                                  Container(
                                    width: 92 * fem,
                                    height: 122 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/ui-kit/images/photo-bg-ofe.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primary,
        child: Icon(Icons.settings),
        onPressed: () => Get.to(() => SettingsScreen()),
      ),
    );
  }
}
