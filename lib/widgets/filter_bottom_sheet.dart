import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/units/validators.dart';
import 'package:datingapp/widgets/check_theme.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/passion_widget.dart';
import 'package:datingapp/widgets/profile_editing_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:datingapp/units/utils.dart';

class BottomSheetFilter extends StatefulWidget {
  @override
  State<BottomSheetFilter> createState() => _BottomSheetFilterState();
}

class _BottomSheetFilterState extends State<BottomSheetFilter> {
  double _currentSliderValue = 20;
  RangeLabels labels = const RangeLabels('18', '108');
  RangeValues values = const RangeValues(18, 108);
  List<Map<String, dynamic>> interestedIn = <Map<String, dynamic>>[
    {"gender": "Males".tr, "active": true},
    {"gender": "Females".tr, "active": false},
    {"gender": "Connections".tr, "active": false},
  ];
  String selectedKids = 'Have kids - want more';
  List kidsList = [
    'Have kids - want more',
    '''Have kids don't want more''',
    '''Don't have kids - want some''',
    '''Don't have kids - don't want'''
  ];
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

  Map<String, dynamic>? selectedEthnicity;

  List<Map<String, dynamic>> ethnicityList = <Map<String, dynamic>>[
    {'name': 'Indian'},
    {'name': 'Black'},
    {'name': 'White'},
    {'name': 'Asian'},
    // {'name': 'American'},
    {'name': 'Hispanic'},
    {'name': 'Arabic'},
    {'name': 'Native'}
  ];
  Map<String, dynamic>? selectedReligion;

  List<Map<String, dynamic>> religionList = <Map<String, dynamic>>[
    {"name": "Hindu", "image": 'assets/ui-kit/hindu.png', "active": false},
    {"name": "Christian", "image": 'assets/ui-kit/church.png', "active": false},
    {"name": "Muslim", "image": 'assets/ui-kit/muslims.png', "active": false},
    {"name": "Sikh", "image": 'assets/ui-kit/sikh.png', "active": false},
    {"name": "Jewish", "image": 'assets/ui-kit/jewish.png', "active": false},
    {"name": "Other`s", "image": 'assets/ui-kit/religion.png', "active": false}
  ];

  int isActive = 1;

  @override
  void initState() {
    // TODO: implement initState
    selectedEthnicity = ethnicityList[0];
    selectedReligion = religionList[0];
    religionList[0]['active'] = true;
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

    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          border: Border.all(color: AppColor.white, width: 0.2),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(52), topLeft: Radius.circular(52))),
      width: double.infinity,
      height: fem * 680,
      child: Stack(
        children: [
          Positioned(
            left: 174 * fem,
            top: 10 * fem,
            child: Align(
              child: SizedBox(
                width: 27 * fem,
                height: 12.06 * fem,
                child: Image.asset(
                  'assets/ui-kit/images/indicator-hRS.png',
                  width: 27 * fem,
                  height: 12.06 * fem,
                ),
              ),
            ),
          ),
          Align(
            child: Container(
              width: 295 * fem,
              margin: EdgeInsets.fromLTRB(0 * fem, 40 * fem, 0 * fem, 0 * fem),
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 76.5 * fem, 0 * fem),
                          child: Text('Filters'.tr,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline6),
                        ),
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 6 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'Close'.tr,
                              textAlign: TextAlign.right,
                              style: SafeGoogleFont(
                                'Sk-Modernist',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
                                color: AppColor.primary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 40 * fem),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 20 * fem),
                          child: Text('Interested in'.tr,
                              style: Theme.of(context).textTheme.headline5),
                        ),
                        Container(
                          height: 58 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).backgroundColor ==
                                        Colors.black
                                    ? AppColor.black
                                    : Color(0xffe8e6ea)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(16 * fem),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isActive = 1;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: isActive == 1
                                          ? AppColor.primary
                                          : AppColor.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15 * fem),
                                        bottomLeft: Radius.circular(15 * fem),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text('Males'.tr,
                                          textAlign: TextAlign.center,
                                          style: isActive == 1
                                              ? AppTextStyle
                                                  .buildSafeGoogleFont1470015white(
                                                      ffem, fem)
                                              : AppTextStyle
                                                  .buildSafeGoogleFont1470015black(
                                                      fem, ffem)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 1 * fem,
                                height: 22 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xffe8e6ea),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isActive = 2;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: isActive == 2
                                          ? AppColor.primary
                                          : AppColor.white,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Females'.tr,
                                        textAlign: TextAlign.center,
                                        style: isActive == 2
                                            ? AppTextStyle
                                                .buildSafeGoogleFont1470015white(
                                                    ffem, fem)
                                            : AppTextStyle
                                                .buildSafeGoogleFont1470015black(
                                                    fem, ffem),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 1 * fem,
                                height: 22 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xffe8e6ea),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isActive = 3;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: isActive == 3
                                          ? AppColor.primary
                                          : AppColor.white,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15 * fem),
                                        bottomRight: Radius.circular(15 * fem),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Connections'.tr,
                                        textAlign: TextAlign.center,
                                        style: isActive == 3
                                            ? AppTextStyle
                                                .buildSafeGoogleFont1470015white(
                                                    ffem, fem)
                                            : AppTextStyle
                                                .buildSafeGoogleFont1470015black(
                                                    fem, ffem),
                                      ),
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
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 40 * fem),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 20 * fem),
                          child: Text('Religion'.tr,
                              style: Theme.of(context).textTheme.headline5),
                        ),
                        GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 2.8 * fem,
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 12 * fem,
                                    mainAxisSpacing: 12 * fem),
                            itemCount: religionList.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() =>
                                      selectedReligion = religionList[index]);
                                },
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  padding: EdgeInsets.fromLTRB(14.79 * fem,
                                      12 * fem, 23 * fem, 12 * fem),
                                  height: double.infinity,
                                  decoration: religionList[index] ==
                                          selectedReligion
                                      ? PassionStyle.buildBoxDecorationActive(
                                          fem)
                                      : PassionStyle.buildBoxDecorationDisable(
                                          fem),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 8.79 * fem, 0 * fem),
                                        width: 25.42 * fem,
                                        height: 25.83 * fem,
                                        child: Image.asset(
                                          religionList[index]["image"]
                                              .toString(),
                                          // width: 17.42 * fem,
                                          // height: 15.83 * fem,
                                          color: religionList[index] ==
                                                  selectedReligion
                                              ? AppColor.white
                                              : AppColor.primary,
                                        ),
                                      ),
                                      Text(
                                        religionList[index]["name"].toString(),
                                        style: religionList[index] ==
                                                selectedReligion
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
                            })
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 40 * fem),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 10 * fem),
                          child: Text('Core values'.tr,
                              style: Theme.of(context).textTheme.headline5),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 30 * fem),
                          child: Text(
                              '''Choose a min of 3 and up to 6 of your most important Core Values''',
                              style: Theme.of(context).textTheme.subtitle1),
                        ),
                        GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            shrinkWrap: true,
                            itemCount: coreValueList.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 2 * fem,
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 12 * fem,
                                    mainAxisSpacing: 12 * fem),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (selectedCoreValues.length <= 6 &&
                                        coreValueList[index]["active"] ==
                                            false) {
                                      coreValueList[index]["active"] = true;
                                      selectedCoreValues
                                          .add(coreValueList[index]);
                                    } else {
                                      coreValueList[index]["active"] = false;
                                      selectedCoreValues
                                          .remove(coreValueList[index]);
                                    }
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  padding: EdgeInsets.fromLTRB(14.79 * fem,
                                      12 * fem, 23 * fem, 12 * fem),
                                  height: double.infinity,
                                  decoration: coreValueList[index]["active"] ==
                                          true
                                      ? PassionStyle.buildBoxDecorationActive(
                                          fem)
                                      : PassionStyle.buildBoxDecorationDisable(
                                          fem),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                          coreValueList[index]["name"]
                                              .toString(),
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          style: coreValueList[index]
                                                      ["active"] ==
                                                  true
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
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 40 * fem),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 20 * fem),
                          child: Text('Kids'.tr,
                              style: Theme.of(context).textTheme.headline5),
                        ),
                        // Container(
                        //   margin: EdgeInsets.fromLTRB(
                        //       0 * fem, 0 * fem, 0 * fem, 30 * fem),
                        //   child: Text(
                        //       '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.''',
                        //       style: Theme.of(context).textTheme.subtitle1),
                        // ),
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
                                    border:
                                        Border.all(color: Color(0xffe8e6ea)),
                                    color: AppColor.white,
                                    borderRadius:
                                        BorderRadius.circular(15 * fem),
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
                            })
                        // Container(
                        //     // height: 58 * fem,
                        //     decoration: BoxDecoration(
                        //       border: Border.all(color: Color(0xffe8e6ea)),
                        //       color: Color(0xffffffff),
                        //       borderRadius: BorderRadius.circular(15 * fem),
                        //     ),
                        //     child: Column(
                        //       children: [
                        //         RadioListTile(
                        //             value: "value",
                        //             title: Text('Have Kids - want more'.tr,
                        //                 style: TextStyle(
                        //                     color: Colors.black,
                        //                     fontSize: 16,
                        //                     fontWeight: FontWeight.w600)),
                        //             groupValue: "groupValue",
                        //             onChanged: (change) {}),
                        //       ],
                        //     )),
                        // SizedBox(
                        //   height: 10 * fem,
                        // ),
                        // Container(
                        //     // height: 58 * fem,
                        //     decoration: BoxDecoration(
                        //       border: Border.all(color: Color(0xffe8e6ea)),
                        //       color: Color(0xffffffff),
                        //       borderRadius: BorderRadius.circular(15 * fem),
                        //     ),
                        //     child: Column(
                        //       children: [
                        //         RadioListTile(
                        //             value: "value",
                        //             title: Text(
                        //                 '''Have Kids don't want more'''.tr,
                        //                 style: TextStyle(
                        //                     color: Colors.black,
                        //                     fontSize: 16,
                        //                     fontWeight: FontWeight.w600)),
                        //             groupValue: "groupValue",
                        //             onChanged: (change) {}),
                        //       ],
                        //     )),
                        // SizedBox(
                        //   height: 10 * fem,
                        // ),
                        // Container(
                        //     // height: 58 * fem,
                        //     decoration: BoxDecoration(
                        //       border: Border.all(color: Color(0xffe8e6ea)),
                        //       color: Color(0xffffffff),
                        //       borderRadius: BorderRadius.circular(15 * fem),
                        //     ),
                        //     child: Column(
                        //       children: [
                        //         RadioListTile(
                        //             value: "value",
                        //             title: Text(
                        //                 '''Don't Have Kids - want some'''.tr,
                        //                 style: TextStyle(
                        //                     color: Colors.black,
                        //                     fontSize: 16,
                        //                     fontWeight: FontWeight.w600)),
                        //             groupValue: "groupValue",
                        //             onChanged: (change) {}),
                        //       ],
                        //     )),
                        // SizedBox(
                        //   height: 10 * fem,
                        // ),
                        // Container(
                        //     // height: 58 * fem,
                        //     decoration: BoxDecoration(
                        //       border: Border.all(color: Color(0xffe8e6ea)),
                        //       color: Color(0xffffffff),
                        //       borderRadius: BorderRadius.circular(15 * fem),
                        //     ),
                        //     child: Column(
                        //       children: [
                        //         RadioListTile(
                        //             value: "value",
                        //             title: Text(
                        //                 '''Don't Have Kids - don't want'''.tr,
                        //                 style: TextStyle(
                        //                     color: Colors.black,
                        //                     fontSize: 16,
                        //                     fontWeight: FontWeight.w600)),
                        //             groupValue: "groupValue",
                        //             onChanged: (change) {}),
                        //       ],
                        //     )),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 40 * fem),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 20 * fem),
                          child: Text('Ethnicity'.tr,
                              style: Theme.of(context).textTheme.headline5),
                        ),
                        // Container(
                        //   margin: EdgeInsets.fromLTRB(
                        //       0 * fem, 0 * fem, 0 * fem, 30 * fem),
                        //   child: Text(
                        //       '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.''',
                        //       style: Theme.of(context).textTheme.subtitle1),
                        // ),
                        GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 2.8 * fem,
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 12 * fem,
                                    mainAxisSpacing: 12 * fem),
                            itemCount: ethnicityList.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() =>
                                      selectedEthnicity = ethnicityList[index]);
                                },
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  padding: EdgeInsets.fromLTRB(14.79 * fem,
                                      12 * fem, 23 * fem, 12 * fem),
                                  height: double.infinity,
                                  decoration: ethnicityList[index] ==
                                          selectedEthnicity
                                      ? PassionStyle.buildBoxDecorationActive(
                                          fem)
                                      : PassionStyle.buildBoxDecorationDisable(
                                          fem),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                        style: ethnicityList[index] ==
                                                selectedEthnicity
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
                            })
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 40 * fem),
                    child: TextFormField(
                        initialValue: 'Chicago, USA',
                        style: SafeGoogleFont(
                          'Sk-Modernist',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: AppColor.black,
                        ),
                        decoration: TFProfileDetail(context, ffem, fem,
                            lable: 'Location'.tr, hint: 'Location'.tr),
                        validator: Validators.notEmpty),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Distance'.tr,
                            style: Theme.of(context).textTheme.headline5),
                        Text(
                            _currentSliderValue.toInt() == 100
                                ? "Unlimited"
                                : '${_currentSliderValue.toInt()} km',
                            textAlign: TextAlign.right,
                            style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                    child: Slider(
                      value: _currentSliderValue,
                      max: 100,
                      activeColor: AppColor.primary,
                      inactiveColor: AppColor.greyBorder,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Age'.tr,
                            style: Theme.of(context).textTheme.headline5),
                        Text('${values.start.toInt()}-${values.end.toInt()}',
                            textAlign: TextAlign.right,
                            style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 40 * fem),
                    child: RangeSlider(
                        activeColor: AppColor.primary,
                        inactiveColor: AppColor.greyBorder,
                        min: 18,
                        max: 108,
                        values: values,
                        labels: labels,
                        onChanged: (value) {
                          print('START: ${value.start}, End: ${value.end}');
                          setState(() {
                            values = value;
                            labels = RangeLabels(
                                '${value.start.toInt().toString()}',
                                '${value.end.toInt().toString()}');
                          });
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 40 * fem),
                    child: CommonButton(
                      ffem: ffem,
                      fem: fem,
                      onPress: () {},
                      text: 'Continue'.tr,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
