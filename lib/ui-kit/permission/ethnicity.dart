import 'package:datingapp/ui-kit/permission/friends.dart';
import 'package:datingapp/ui-kit/permission/kids.dart';
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

class EthnicityScreen extends StatefulWidget {
  @override
  State<EthnicityScreen> createState() => _EthnicityScreenState();
}

class _EthnicityScreenState extends State<EthnicityScreen> {
  Map<String, dynamic>? selectedEthnicity;
  List<Map<String, dynamic>> ethnicityList = <Map<String, dynamic>>[
    {'name': 'Indian'},
    {'name': 'Black'},
    {'name': 'White'},
    {'name': 'Asian'},
    {'name': 'American'},
    {'name': 'Hispanic'},
    {'name': 'Arabic'},
    {'name': 'Native'}
  ];

  @override
  void initState() {
    // TODO: implement initState
    selectedEthnicity = ethnicityList[0];
    super.initState();
  }

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
                      'Ethnicity'.tr,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: 267 * fem,
                      ),
                      child: Text(
                        '''Lorel empsum text is no longer to see the ehncity'''
                            .tr,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 215 * fem),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2.8 * fem,
                      crossAxisCount: 2,
                      crossAxisSpacing: 12 * fem,
                      mainAxisSpacing: 12 * fem),
                  itemCount: ethnicityList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(
                            () => selectedEthnicity = ethnicityList[index]);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            14.79 * fem, 12 * fem, 23 * fem, 12 * fem),
                        height: double.infinity,
                        decoration: ethnicityList[index] == selectedEthnicity
                            ? PassionStyle.buildBoxDecorationActive(fem)
                            : PassionStyle.buildBoxDecorationDisable(fem),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Container(
                            //   margin: EdgeInsets.fromLTRB(0 * fem,
                            //       0 * fem, 8.79 * fem, 0 * fem),
                            //   width: 25.42 * fem,
                            //   height: 25.83 * fem,
                            //   child: Image.asset(
                            //     ethnicityList[index]["image"]
                            //         .toString(),
                            //     // width: 17.42 * fem,
                            //     // height: 15.83 * fem,
                            //     color: ethnicityList[index]
                            //                 ["active"] ==
                            //             true
                            //         ? AppColor.white
                            //         : AppColor.primary,
                            //   ),
                            // ),
                            Text(
                              ethnicityList[index]["name"].toString(),
                              style: ethnicityList[index] == selectedEthnicity
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
                      Get.to(() => KidsScreen());
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
