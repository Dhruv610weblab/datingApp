import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/widgets/check_theme.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/filter_button.dart';
import 'package:datingapp/widgets/match_card.dart';
import 'package:datingapp/widgets/match_divider.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:datingapp/units/utils.dart';
import 'package:get/get.dart';

class Matches extends StatefulWidget {
  @override
  State<Matches> createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  List<Map<String, dynamic>> matchesList = <Map<String, dynamic>>[
    {
      "name": "Leilani",
      "age": "19",
      "image": 'assets/ui-kit/images/photo-bg-33n.png',
      "active": false
    },
    {
      "name": "Shoya",
      "age": "20",
      "image": 'assets/ui-kit/images/photo-bg-5Vr.png',
      "active": true
    },
    {
      "name": "Kemi",
      "age": "22",
      "image": 'assets/ui-kit/images/photo-bg-JRe.png',
      "active": false
    }
  ];
  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Container(
            // matchesiYY (309:5586)
            width: double.infinity,
            // decoration: BoxDecoration(
            //   color: Color(0xffffffff),
            // ),
            child: Container(
              // autogroup9wmeprU (QbJJgxmCx2xeAtPSpb9WME)
              padding:
                  EdgeInsets.fromLTRB(20 * fem, 10 * fem, 20 * fem, 0 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // headerLK2 (309:5587)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            // matches4kp (309:5588)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 119 * fem, 0 * fem),
                            child: Text(
                              'Matches'.tr,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                        ),
                        Filter(
                          fem: fem,
                          isFilter: true,
                          onPress: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              useRootNavigator: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50 * fem),
                                topRight: Radius.circular(50 * fem),
                              )),
                              builder: (BuildContext context) {
                                return BottomSheetNotification();
                              },
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    // thisisalistofpeoplewhohavelike (309:5597)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                    constraints: BoxConstraints(
                      maxWidth: double.infinity,
                    ),
                    child: Text(
                      'This is a list of people who have liked you and your matches.'
                          .tr,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 10 * fem),
                        itemCount: 2,
                        shrinkWrap: true,
                        itemBuilder: (context, lindex) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              MatchesDivider(
                                  fem: fem,
                                  ffem: ffem,
                                  text: lindex == 0
                                      ? 'Today'.tr
                                      : 'Yesterday'.tr),
                              GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                  shrinkWrap: true,
                                  itemCount: matchesList.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 0.7 * fem,
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 12 * fem,
                                          mainAxisSpacing: 12 * fem),
                                  itemBuilder: (context, index) {
                                    return MatchesCard(
                                        fem: fem,
                                        ffem: ffem,
                                        image: matchesList[index]["image"],
                                        name: matchesList[index]["name"],
                                        age: matchesList[index]["age"],
                                        isLiked: matchesList[index]["active"]);
                                  }),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomSheetNotification extends StatefulWidget {
  @override
  State<BottomSheetNotification> createState() =>
      _BottomSheetNotificationState();
}

class _BottomSheetNotificationState extends State<BottomSheetNotification> {
  double _currentSliderValue = 20;
  RangeLabels labels = const RangeLabels('18', '108');
  RangeValues values = const RangeValues(18, 108);

  List<Map<String, dynamic>> interestedIn = <Map<String, dynamic>>[
    {"gender": "Male", "active": true},
    {"gender": "Female", "active": false},
    {"gender": "Both", "active": false}
  ];
  int isActive = 1;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor == Colors.black
              ? AppColor.black
              : AppColor.white,
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
                        Expanded(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 76.5 * fem, 0 * fem),
                              child: Text('Sort by'.tr,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.headline6),
                            ),
                          ),
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
                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 5 * fem),
                          child: Text('Match Sort'.tr,
                              style: Theme.of(context).textTheme.headline5),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 30 * fem),
                          child: Text(
                              '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.''',
                              style: Theme.of(context).textTheme.subtitle1),
                        ),
                        Container(
                            // height: 58 * fem,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffe8e6ea)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(15 * fem),
                            ),
                            child: Column(
                              children: [
                                RadioListTile(
                                    value: "value",
                                    title: Text('Name'.tr,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    groupValue: "groupValue",
                                    onChanged: (change) {}),
                              ],
                            )),
                        SizedBox(
                          height: 10 * fem,
                        ),
                        Container(
                            // height: 58 * fem,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffe8e6ea)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(15 * fem),
                            ),
                            child: Column(
                              children: [
                                RadioListTile(
                                    value: "value",
                                    title: Text('Age'.tr,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    groupValue: "groupValue",
                                    onChanged: (change) {}),
                              ],
                            )),
                        SizedBox(
                          height: 10 * fem,
                        ),
                        Container(
                            // height: 58 * fem,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffe8e6ea)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(15 * fem),
                            ),
                            child: Column(
                              children: [
                                RadioListTile(
                                    value: "value",
                                    title: Text('Date & Time'.tr,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    groupValue: "groupValue",
                                    onChanged: (change) {}),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 40 * fem),
                    height: 58 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color:
                              Theme.of(context).backgroundColor == Colors.black
                                  ? AppColor.black
                                  : Color(0xffe8e6ea)),
                      color: AppColor.white,
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
                                child: Text(
                                  'Ascending'.tr,
                                  textAlign: TextAlign.center,
                                  style: isActive == 1
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
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15 * fem),
                                  bottomRight: Radius.circular(15 * fem),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Descending'.tr,
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
                      ],
                    ),
                  ),
                  CommonButton(
                    ffem: ffem,
                    fem: fem,
                    onPress: () {},
                    text: 'Continue'.tr,
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
