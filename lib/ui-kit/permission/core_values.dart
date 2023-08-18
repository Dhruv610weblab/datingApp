import 'package:datingapp/ui-kit/permission/ethnicity.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/widgets/back_button.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/passion_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';

class CoreValuesScreen extends StatefulWidget {
  @override
  State<CoreValuesScreen> createState() => _CoreValuesScreenState();
}

class _CoreValuesScreenState extends State<CoreValuesScreen> {
  List<Map<String, dynamic>> selectedCoreValues = <Map<String, dynamic>>[];
  List<Map<String, dynamic>> coreValueList = <Map<String, dynamic>>[
    {'name': 'Faith', "active": false},
    {'name': 'Honesty/Integrity/Authenticity', "active": false},
    {'name': 'Family', "active": false},
    {'name': 'Loyalty/Tribal/Commitment', "active": false},
    {'name': 'Conservative', "active": false},
    {'name': 'Financially Responsible', "active": false},
    {'name': 'Big Heart', "active": false},
    {'name': 'Hard Work', "active": false},
    {'name': 'Physical wellbeing', "active": false},
  ];

  @override
  void initState() {
    selectedCoreValues.add(coreValueList[0]);
    selectedCoreValues.add(coreValueList[1]);
    selectedCoreValues.add(coreValueList[2]);
    coreValueList[0]['active'] = true;
    coreValueList[1]['active'] = true;
    coreValueList[2]['active'] = true;
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
                      'Core values'.tr,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: 267 * fem,
                      ),
                      child: Text(
                        '''Choose a min of 3 and up to 6 of your most important Core Values'''
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
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 55 * fem),
                  shrinkWrap: true,
                  itemCount: coreValueList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2 * fem,
                      crossAxisCount: 2,
                      crossAxisSpacing: 12 * fem,
                      mainAxisSpacing: 12 * fem),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (selectedCoreValues.length <= 6 &&
                              coreValueList[index]["active"] == false) {
                            coreValueList[index]["active"] = true;
                            selectedCoreValues.add(coreValueList[index]);
                          } else {
                            coreValueList[index]["active"] = false;
                            selectedCoreValues.remove(coreValueList[index]);
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            14.79 * fem, 12 * fem, 23 * fem, 12 * fem),
                        height: double.infinity,
                        decoration: coreValueList[index]["active"] == true
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
                            //     religionList[index]["image"]
                            //         .toString(),
                            //     // width: 17.42 * fem,
                            //     // height: 15.83 * fem,
                            //     color: religionList[index]
                            //                 ["active"] ==
                            //             true
                            //         ? AppColor.white
                            //         : AppColor.primary,
                            //   ),
                            // ),
                            Expanded(
                              child: Text(
                                coreValueList[index]["name"].toString(),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: coreValueList[index]["active"] == true
                                    ? AppTextStyle
                                        .buildSafeGoogleFont1470015white(
                                            ffem, fem)
                                    : AppTextStyle
                                        .buildSafeGoogleFont1470015black(
                                            ffem, fem),
                              ),
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
                      Get.to(() => EthnicityScreen());
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
