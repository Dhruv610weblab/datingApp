import 'package:datingapp/ui-kit/permission/passions.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/widgets/back_button.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/gender_card.dart';
import 'package:datingapp/widgets/passion_widget.dart';
import 'package:datingapp/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:datingapp/units/utils.dart';

class GenderSelect extends StatefulWidget {
  @override
  State<GenderSelect> createState() => _GenderSelectState();
}

class _GenderSelectState extends State<GenderSelect> {
  List genderList = [
    {"name": "Man"},
    {"name": "Women"}
  ];
  List<Map<String, dynamic>> religionList = <Map<String, dynamic>>[
    {"name": "Hindu", "image": 'assets/ui-kit/hindu.png', "active": false},
    {"name": "Christian", "image": 'assets/ui-kit/church.png', "active": false},
    {"name": "Muslim", "image": 'assets/ui-kit/muslims.png', "active": false},
    {"name": "Sikh", "image": 'assets/ui-kit/sikh.png', "active": false},
    {"name": "Jewish", "image": 'assets/ui-kit/jewish.png', "active": false},
    {"name": "Other`s", "image": 'assets/ui-kit/religion.png', "active": false}
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // iamu5z (309:5124)
          padding: EdgeInsets.fromLTRB(40 * fem, 44 * fem, 40 * fem, 48 * fem),
          width: double.infinity,
          // decoration: BoxDecoration(
          //   color: Color(0xffffffff),
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupmtz2pTr (QbHyJwDnRQbNFUq3ammTZ2)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 32 * fem),
                width: double.infinity,
                height: 52 * fem,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Back(
                      fem: fem,
                    ),
                    // Skip(
                    //     fem: fem,
                    //     ffem: ffem,
                    //     onPress: () {
                    //       Get.to(() => Passions());
                    //     })
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 28 * fem, 32 * fem),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'I am a'.tr,
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
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0),
                  itemCount: genderList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() => selectedIndex = index);
                      },
                      child: GenderCard(
                        fem: fem,
                        ffem: ffem,
                        isSelected: selectedIndex == index ? true : false,
                        title: genderList[index]["name"].toString().tr,
                      ),
                    );
                  }),
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 28 * fem, 28 * fem, 32 * fem),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My religion is'.tr,
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
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 40 * fem),
                  shrinkWrap: true,
                  itemCount: religionList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2.8 * fem,
                      crossAxisCount: 2,
                      crossAxisSpacing: 12 * fem,
                      mainAxisSpacing: 12 * fem),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() => religionList[index]["active"] =
                            religionList[index]["active"] ? false : true);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            14.79 * fem, 12 * fem, 23 * fem, 12 * fem),
                        height: double.infinity,
                        decoration: religionList[index]["active"] == true
                            ? PassionStyle.buildBoxDecorationActive(fem)
                            : PassionStyle.buildBoxDecorationDisable(fem),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8.79 * fem, 0 * fem),
                              width: 25.42 * fem,
                              height: 25.83 * fem,
                              child: Image.asset(
                                religionList[index]["image"].toString(),
                                // width: 17.42 * fem,
                                // height: 15.83 * fem,
                                color: religionList[index]["active"] == true
                                    ? AppColor.white
                                    : AppColor.primary,
                              ),
                            ),
                            Text(
                              religionList[index]["name"].toString(),
                              style: religionList[index]["active"] == true
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
              // Container(
              //   // womanS3J (309:5133)
              //   margin:
              //       EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 244 * fem),
              //   padding: EdgeInsets.fromLTRB(
              //       20 * fem, 16 * fem, 26.25 * fem, 18 * fem),
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Color(0xffe8e6ea)),
              //     color: AppColor.white,
              //     borderRadius: BorderRadius.circular(15 * fem),
              //   ),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Container(
              //         // chooseanother7v8 (309:5136)
              //         margin: EdgeInsets.fromLTRB(
              //             0 * fem, 0 * fem, 136.08 * fem, 0 * fem),
              //         child: Text(
              //           'Choose another'.tr,
              //           style: AppTextStyle.buildSafeGoogleFont1640015black(
              //               fem, ffem),
              //         ),
              //       ),
              //       Container(
              //         // rightxvk (309:5135)
              //         margin: EdgeInsets.fromLTRB(
              //             0 * fem, 2 * fem, 0 * fem, 0 * fem),
              //         width: 6.67 * fem,
              //         height: 11.67 * fem,
              //         child: Image.asset(
              //           'assets/ui-kit/images/right-Djn.png',
              //           width: 6.67 * fem,
              //           height: 11.67 * fem,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                  // btncontinuet3i (309:5139)
                  width: double.infinity,
                  height: 56 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffe94057),
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  child: CommonButton(
                    onPress: () {
                      Get.to(() => Passions());
                    },
                    fem: fem,
                    ffem: ffem,
                    text: 'Continue'.tr,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
