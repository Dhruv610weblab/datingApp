import 'package:datingapp/ui-kit/permission/core_values.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/widgets/back_button.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/passion_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';

class Passions extends StatefulWidget {
  @override
  State<Passions> createState() => _PassionsState();
}

class _PassionsState extends State<Passions> {
  List<Map<String, dynamic>> interestList = <Map<String, dynamic>>[
    {
      "name": "Empathy",
      "image": 'assets/ui-kit/images/camera-nL8.png',
      "active": false
    },
    {
      "name": "Integrity",
      "image": 'assets/ui-kit/images/weixin-market.png',
      "active": false
    },
    {
      "name": "Resilience",
      "image": 'assets/ui-kit/images/voice.png',
      "active": false
    },
    {
      "name": "Humility",
      "image": 'assets/ui-kit/images/viencharts.png',
      "active": false
    },
    {
      "name": "Courage",
      "image": 'assets/ui-kit/images/noodles.png',
      "active": false
    },
    {
      "name": "Authenticity",
      "image": 'assets/ui-kit/images/tennis.png',
      "active": false
    },
    {
      "name": "Gratitude",
      "image": 'assets/ui-kit/images/sport.png',
      "active": false
    },
    {
      "name": "Generosity",
      "image": 'assets/ui-kit/images/ripple.png',
      "active": false
    },
    {
      "name": "Patience",
      "image": 'assets/ui-kit/images/platte.png',
      "active": false
    },
    {
      "name": "Respect",
      "image": 'assets/ui-kit/images/outdoor.png',
      "active": false
    },
    {
      "name": "Adaptability",
      "image": 'assets/ui-kit/images/parachute.png',
      "active": false
    },
    {
      "name": "Self-discipline",
      "image": 'assets/ui-kit/images/music.png',
      "active": false
    },
    {
      "name": "Other",
      "image": 'assets/ui-kit/images/music.png',
      "active": false
    }
  ];

  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(40 * fem, 44 * fem, 40 * fem, 58 * fem),
        width: double.infinity,
        // decoration: BoxDecoration(
        //   color: AppColor.white,
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 32 * fem),
              width: double.infinity,
              height: 52 * fem,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Back(fem: fem),
                  // Container(
                  //     margin: EdgeInsets.fromLTRB(
                  //         0 * fem, 0 * fem, 0 * fem, 4 * fem),
                  //     child: Skip(
                  //       fem: fem,
                  //       ffem: ffem,
                  //       onPress: () {
                  //         Get.to(() => SearchFriends());
                  //       },
                  //     )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 28 * fem, 32 * fem),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Deep Qualities'.tr,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 267 * fem,
                    ),
                    // child: Text(
                    //   'Select a few of your interests and let everyone know what you’re passionate about.'
                    //       .tr,
                    //   style: Theme.of(context).textTheme.bodyText1,
                    // ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 40 * fem),
                child: GridView.builder(
                    padding:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                    shrinkWrap: true,
                    itemCount: 12,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 2.8 * fem,
                        crossAxisCount: 2,
                        crossAxisSpacing: 12 * fem,
                        mainAxisSpacing: 12 * fem),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() => interestList[index]["active"] =
                              interestList[index]["active"] ? false : true);
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              14.79 * fem, 12 * fem, 23 * fem, 12 * fem),
                          height: double.infinity,
                          decoration: interestList[index]["active"] == true
                              ? PassionStyle.buildBoxDecorationActive(fem)
                              : PassionStyle.buildBoxDecorationDisable(fem),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Container(
                              //   margin: EdgeInsets.fromLTRB(
                              //       0 * fem, 0 * fem, 8.79 * fem, 0 * fem),
                              //   width: 17.42 * fem,
                              //   height: 15.83 * fem,
                              //   child: Image.asset(
                              //     interestList[index]["image"].toString(),
                              //     width: 17.42 * fem,
                              //     height: 15.83 * fem,
                              //     color: interestList[index]["active"] == true
                              //         ? AppColor.white
                              //         : AppColor.primary,
                              //   ),
                              // ),
                              Text(
                                interestList[index]["name"].toString(),
                                style: interestList[index]["active"] == true
                                    ? AppTextStyle
                                        .buildSafeGoogleFont1470015white(
                                            ffem, fem)
                                    : AppTextStyle
                                        .buildSafeGoogleFont1470015black(
                                            ffem, fem),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Container(
                // btncontinueRUC (309:5155)
                width: double.infinity,
                height: 56 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffe94057),
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                child: CommonButton(
                    fem: fem,
                    onPress: () {
                      Get.to(() => CoreValuesScreen());
                      debugPrint("Continue".tr);
                    },
                    text: 'Continue'.tr,
                    ffem: ffem)),
          ],
        ),
      ),
    );
  }
}
