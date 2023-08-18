import 'package:datingapp/ui-kit/permission/friends.dart';
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

class KidsScreen extends StatefulWidget {
  @override
  State<KidsScreen> createState() => _KidsScreenState();
}

class _KidsScreenState extends State<KidsScreen> {
  String selectedKids = 'Have kids - want more';
  List kidsList = [
    'Have kids - want more',
    '''Have kids don't want more''',
    '''Don't have kids - want some''',
    '''Don't have kids - don't want'''
  ];

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
                    EdgeInsets.fromLTRB(0 * fem, 20 * fem, 28 * fem, 0 * fem),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kids'.tr,
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

              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: kidsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                        // height: 58 * fem,
                        margin: EdgeInsets.fromLTRB(
                          0,
                          0,
                          0,
                          10 * fem,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffe8e6ea)),
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Column(
                          children: [
                            RadioListTile(
                                value: kidsList[index],
                                title: Text(kidsList[index],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                groupValue: selectedKids,
                                onChanged: (change) {
                                  setState(() {
                                    selectedKids = kidsList[index];
                                  });
                                }),
                          ],
                        ));
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
                  margin: EdgeInsets.only(top: 110 * fem),
                  // btncontinuet3i (309:5139)
                  width: double.infinity,
                  height: 56 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffe94057),
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  child: CommonButton(
                    onPress: () {
                      Get.to(() => SearchFriends());
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
