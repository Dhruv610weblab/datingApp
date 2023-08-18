import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/widgets/back_button.dart';
import 'package:datingapp/widgets/interest_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:datingapp/units/utils.dart';
import 'package:readmore/readmore.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List checkList = [
    {"name": "Dancing", "check": true},
    {"name": "Travelling", "check": true},
    {"name": "Books", "check": false},
    {"name": "Music", "check": false},
    {"name": "Modelling", "check": true}
  ];

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
          height: 1325 * fem,
          child: Stack(
            children: [
              Positioned(
                left: 0 * fem,
                top: 0 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      40 * fem, 44 * fem, 40 * fem, 44 * fem),
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
                  child: Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 243 * fem, 275 * fem),
                      width: 52 * fem,
                      height: 52 * fem,
                      child: Back(fem: fem, color: AppColor.white)),
                ),
              ),
              Positioned(
                left: 0 * fem,
                top: 386 * fem,
                child: Align(
                  child: SizedBox(
                    width: 385 * fem,
                    height: 939 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.white,
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
                left: 40 * fem,
                top: 337 * fem,
                child: Container(
                  width: 295 * fem,
                  height: 99 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 10 * fem, 0 * fem, 11 * fem),
                        padding: EdgeInsets.fromLTRB(
                            31.5 * fem, 31.5 * fem, 31.5 * fem, 31.5 * fem),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(39 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x11000000),
                              offset: Offset(0 * fem, 20 * fem),
                              blurRadius: 25 * fem,
                            ),
                          ],
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 15 * fem,
                            height: 15 * fem,
                            child: Image.asset(
                              'assets/ui-kit/images/close-small-evk.png',
                              width: 15 * fem,
                              height: 15 * fem,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20 * fem,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            28.25 * fem, 32.5 * fem, 28.25 * fem, 30.03 * fem),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffe94057),
                          borderRadius: BorderRadius.circular(49.5 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x33e94057),
                              offset: Offset(0 * fem, 15 * fem),
                              blurRadius: 7.5 * fem,
                            ),
                          ],
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 42.5 * fem,
                            height: 36.47 * fem,
                            child: Image.asset(
                              'assets/ui-kit/images/like-YEL.png',
                              width: 42.5 * fem,
                              height: 36.47 * fem,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20 * fem,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 10 * fem, 0 * fem, 11 * fem),
                        padding: EdgeInsets.fromLTRB(
                            26.5 * fem, 27.13 * fem, 26.5 * fem, 27.13 * fem),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(39 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x11000000),
                              offset: Offset(0 * fem, 20 * fem),
                              blurRadius: 25 * fem,
                            ),
                          ],
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 25 * fem,
                            height: 23.75 * fem,
                            child: Image.asset(
                              'assets/ui-kit/images/star-CWC.png',
                              width: 25 * fem,
                              height: 23.75 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 460 * fem,
                child: Container(
                  width: 385 * fem,
                  child: Column(
                    children: [
                      Container(
                        width: 295 * fem,
                        height: 57 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 56 * fem, 0 * fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jessica Parker, 23',
                                    style: AppTextStyle
                                        .buildSafeGoogleFont2470015black(
                                            ffem, fem),
                                  ),
                                  Text('Proffesional model',
                                      style: AppTextStyle
                                          .buildSafeGoogleFont1440015subtitle(
                                              ffem, fem)),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 3 * fem, 0 * fem, 2 * fem),
                              padding: EdgeInsets.fromLTRB(15.5 * fem,
                                  15.5 * fem, 15.5 * fem, 15.5 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffe8e6ea)),
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Center(
                                child: SizedBox(
                                  width: 21 * fem,
                                  height: 21 * fem,
                                  child: Image.asset(
                                    'assets/ui-kit/images/send.png',
                                    width: 21 * fem,
                                    height: 21 * fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20 * fem,
                      ),
                      Container(
                        width: 295 * fem,
                        height: 50 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
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
                                      'Location',
                                      style: AppTextStyle
                                          .buildSafeGoogleFont1670015black(
                                              ffem, fem),
                                    ),
                                  ),
                                  Text('Chicago, IL United States',
                                      style: AppTextStyle
                                          .buildSafeGoogleFont1440015subtitle(
                                              ffem, fem)),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 16 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  12.04 * fem, 8 * fem, 9 * fem, 8 * fem),
                              decoration: BoxDecoration(
                                color: Color(0x19e94057),
                                borderRadius: BorderRadius.circular(7 * fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 4.04 * fem, 0 * fem),
                                    width: 9.92 * fem,
                                    height: 12.83 * fem,
                                    child: Image.asset(
                                      'assets/ui-kit/images/local-two-AJt.png',
                                      width: 9.92 * fem,
                                      height: 12.83 * fem,
                                    ),
                                  ),
                                  Text(
                                    '1 km',
                                    style: SafeGoogleFont(
                                      'Sk-Modernist',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xffe94057),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
                              'About',
                              style:
                                  AppTextStyle.buildSafeGoogleFont1670015black(
                                      ffem, fem),
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
                                  style: SafeGoogleFont(
                                    'Sk-Modernist',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: AppColor.greySubTitle,
                                  ),
                                  trimLines: 3,
                                  colorClickableText: Colors.pink,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: '\nRead more',
                                  trimExpandedText: '\nShow less',
                                  moreStyle: SafeGoogleFont(
                                    'Sk-Modernist',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5 * ffem / fem,
                                    color: AppColor.primary,
                                  ),
                                  lessStyle: SafeGoogleFont(
                                    'Sk-Modernist',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5 * ffem / fem,
                                    color: AppColor.lightPrimary,
                                  ),
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
                              'Interests',
                              style:
                                  AppTextStyle.buildSafeGoogleFont1670015black(
                                      ffem, fem),
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
                                  return InkWell(
                                    onTap: () {
                                      setState(() {
                                        checkList[index]["check"] =
                                            checkList[index]["check"] == true
                                                ? false
                                                : true;
                                      });
                                    },
                                    child: CheckInterestProfile(
                                        fem: fem,
                                        ffem: ffem,
                                        name: checkList[index]["name"],
                                        isCheck: checkList[index]["check"]),
                                  );
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
                                      'Gallery',
                                      style: AppTextStyle
                                          .buildSafeGoogleFont1670015black(
                                              ffem, fem),
                                    ),
                                  ),
                                  Text(
                                    'See all',
                                    style: SafeGoogleFont(
                                      'Sk-Modernist',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xffe94057),
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
    );
  }
}
