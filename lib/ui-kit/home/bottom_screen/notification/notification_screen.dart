import 'package:datingapp/ui-kit/home/bottom_screen/message/stories.dart';
import 'package:datingapp/ui-kit/permission/i-am.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/units/validators.dart';
import 'package:datingapp/widgets/back_button.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/message/open_messages.dart';
import 'package:datingapp/widgets/check_theme.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/filter_button.dart';
import 'package:datingapp/widgets/message_chat_card.dart';
import 'package:datingapp/widgets/message_story_card.dart';
import 'package:datingapp/widgets/profile_editing_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:datingapp/units/utils.dart';

class Notifications extends StatefulWidget {
  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<Map<String, dynamic>> chatList = <Map<String, dynamic>>[
    {
      "name": "Leilani",
      "message": "You got a new match, Click to view!",
      "time": "19 min",
      "image": 'assets/ui-kit/images/photo-bg-33n.png',
      "unread": true,
      "isStory": true,
      "count": "2"
    },
    {
      "name": "Shoya",
      "message": "You got a new match, Click to view!",
      "time": "19 min",
      "image": 'assets/ui-kit/images/photo-bg-5Vr.png',
      "unread": false,
      "isStory": true,
      "count": ""
    },
    {
      "name": "Leilani",
      "message": "You got a new match, Click to view!",
      "time": "19 min",
      "image": 'assets/ui-kit/images/photo-bg-33n.png',
      "unread": true,
      "isStory": false,
      "count": "2"
    },
    {
      "name": "Shoya",
      "message": "You got a new match, Click to view!",
      "time": "19 min",
      "image": 'assets/ui-kit/images/photo-bg-5Vr.png',
      "unread": false,
      "isStory": true,
      "count": ""
    },
    {
      "name": "Kemi",
      "message": "You got a new match, Click to view!",
      "time": "23 min",
      "image": 'assets/ui-kit/images/photo-bg-JRe.png',
      "unread": true,
      "isStory": false,
      "count": "1"
    },
    {
      "name": "Shoya",
      "message": "You got a new match, Click to view!",
      "time": "19 min",
      "image": 'assets/ui-kit/images/photo-bg-5Vr.png',
      "unread": false,
      "isStory": false,
    },
    {
      "name": "Kemi",
      "message": "You got a new match, Click to view!",
      "time": "23 min",
      "image": 'assets/ui-kit/images/photo-bg-JRe.png',
      "unread": true,
      "isStory": false,
      "count": "1"
    },
    {
      "name": "Kemi",
      "message": "You got a new match, Click to view!",
      "time": "23 min",
      "image": 'assets/ui-kit/images/photo-bg-JRe.png',
      "unread": true,
      "isStory": false,
      "count": "1"
    },
    {
      "name": "Shoya",
      "message": "You got a new match, Click to view!",
      "time": "19 min",
      "image": 'assets/ui-kit/images/photo-bg-5Vr.png',
      "unread": false,
      "isStory": false,
    },
    {
      "name": "Kemi",
      "message": "You got a new match, Click to view!",
      "time": "23 min",
      "image": 'assets/ui-kit/images/photo-bg-JRe.png',
      "unread": true,
      "isStory": false,
      "count": "1"
    }
  ];
  final TextEditingController _searchController = TextEditingController();
  ScrollController scrollcontroller = ScrollController();
  int isActive = 0;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            // messagesFpc (309:5476)
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupvkmzARn (QbJD9YASsCqKXhYuHrVKmz)
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 10 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // headerRuS (309:5477)
                        margin: EdgeInsets.fromLTRB(
                            (18) * fem, 0 * fem, 18 * fem, 0 * fem),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Notification'.tr,
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                            Filter(
                                fem: fem,
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
                                }),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            (0) * fem, 0 * fem, 0 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            18.00 * fem, 0 * fem, 18.00 * fem, 0 * fem),
                        width: 385 * fem,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () => setState(() {
                                      isActive = 0;
                                    }),
                                child: Text(
                                  'Matches'.tr,
                                  style: TextStyle(
                                      color: isActive == 0
                                          ? AppColor.primary
                                          : AppColor.grey),
                                )),
                            TextButton(
                                onPressed: () => setState(() {
                                      isActive = 1;
                                    }),
                                child: Text(
                                  'Likes'.tr,
                                  style: TextStyle(
                                      color: isActive == 1
                                          ? AppColor.primary
                                          : AppColor.grey),
                                )),
                            TextButton(
                                onPressed: () => setState(() {
                                      isActive = 2;
                                    }),
                                child: Text(
                                  'Visits'.tr,
                                  style: TextStyle(
                                      color: isActive == 2
                                          ? AppColor.primary
                                          : AppColor.grey),
                                )),
                            TextButton(
                                onPressed: () => setState(() {
                                      isActive = 3;
                                    }),
                                child: Text(
                                  'Requests'.tr,
                                  style: TextStyle(
                                      color: isActive == 3
                                          ? AppColor.primary
                                          : AppColor.grey),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB((0) * fem, 0 * fem, 0 * fem, 0 * fem),
                  padding: EdgeInsets.fromLTRB(
                      18.00 * fem, 0 * fem, 18.00 * fem, 18 * fem),
                  width: 385 * fem,
                  child: TextFormField(
                    controller: _searchController,
                    maxLines: 1,
                    cursorColor: AppColor.primary,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(
                          12 * fem, 12 * fem, 12 * fem, 12 * fem),
                      fillColor: AppColor.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15 * fem),
                          borderSide:
                              BorderSide(width: 1, color: AppColor.thirdWhite)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15 * fem),
                          borderSide:
                              BorderSide(width: 1, color: AppColor.thirdWhite)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15 * fem),
                          borderSide:
                              BorderSide(width: 1, color: AppColor.thirdWhite)),
                      // border: Border.all(color: Color(0xffe8e6ea)),
                      // color: Color(0xffffffff),
                      prefixIcon: Container(
                        padding: EdgeInsets.fromLTRB(
                            2.2 * fem, 1.2 * fem, 2.2 * fem, 1.2 * fem),
                        margin: EdgeInsets.fromLTRB(
                            12.79 * fem, 1.96 * fem, 12.79 * fem, 1.96 * fem),
                        child: Image.asset(
                          'assets/ui-kit/images/search.png',
                          width: 17.38 * fem,
                          height: 17.38 * fem,
                        ),
                      ),
                      hintText: 'Search',
                      hintStyle: SafeGoogleFont(
                        'Sk-Modernist',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0x66000000),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView.builder(
                          controller: scrollcontroller = ScrollController(),
                          scrollDirection: Axis.vertical,
                          itemCount: chatList.length,
                          padding: EdgeInsets.fromLTRB(
                              18 * fem, 0 * fem, 18 * fem, 20 * fem),
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ChatCard(
                                fem: fem,
                                ffem: ffem,
                                name: chatList[index]["name"],
                                message: isActive == 0
                                    ? chatList[index]["message"]
                                    : isActive == 1
                                        ? 'You have been liked,Click to view!'
                                        : isActive == 2
                                            ? 'You have been viewed,Click to view!'
                                            : isActive == 3
                                                ? 'You got a new request,Click to accept/reject!'
                                                : "",
                                time: chatList[index]["time"],
                                image: chatList[index]["image"],
                                isNotification: isActive,
                                onAccept: () {},
                                onReject: () {},
                                onChat: () {
                                  Get.to(() => OpenMessages());
                                  // showModalBottomSheet(
                                  //   context: context,
                                  //   isScrollControlled: true,
                                  //   useRootNavigator: true,
                                  //   shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.only(
                                  //     topLeft: Radius.circular(50 * fem),
                                  //     topRight: Radius.circular(50 * fem),
                                  //   )),
                                  //   builder: (BuildContext context) {
                                  //     return BottomSheetChat();
                                  //   },
                                  // );
                                },
                                count: chatList[index]["count"]);
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
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
      height: fem * 340,
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
                          child: Text('Permission'.tr,
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
                              style: AppTextStyle
                                  .buildSafeGoogleFont1670015primary(ffem, fem),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 5 * fem),
                          child: Text('Push Notifications'.tr,
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
                                      child: Text(
                                        'Enable'.tr,
                                        textAlign: TextAlign.center,
                                        style: isActive == 1
                                            ? AppTextStyle
                                                .buildSafeGoogleFont1470015white(
                                                    ffem, fem)
                                            : AppTextStyle
                                                .buildSafeGoogleFont1470015black(
                                                    ffem, fem),
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
                                        'Disable'.tr,
                                        textAlign: TextAlign.center,
                                        style: isActive == 2
                                            ? AppTextStyle
                                                .buildSafeGoogleFont1470015white(
                                                    ffem, fem)
                                            : AppTextStyle
                                                .buildSafeGoogleFont1470015black(
                                                    ffem, fem),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
