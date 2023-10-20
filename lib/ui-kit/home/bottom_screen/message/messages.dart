import 'package:datingapp/ui-kit/home/bottom_screen/message/stories.dart';
import 'package:datingapp/ui-kit/permission/i-am.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/widgets/back_button.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/message/open_messages.dart';
import 'package:datingapp/widgets/check_theme.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/filter_button.dart';
import 'package:datingapp/widgets/message_chat_card.dart';
import 'package:datingapp/widgets/message_story_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:datingapp/units/utils.dart';

class Messages extends StatefulWidget {
  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<Map<String, dynamic>> chatList = <Map<String, dynamic>>[
    {
      "name": "Leilani",
      "message": "hello",
      "time": "19 min",
      "image": 'assets/ui-kit/images/photo-bg-33n.png',
      "unread": true,
      "isStory": false,
      "count": "2"
    },
    {
      "name": "Shoya",
      "message": "Typing...",
      "time": "19 min",
      "image": 'assets/ui-kit/images/photo-bg-5Vr.png',
      "unread": false,
      "isStory": false,
      "count": ""
    },
    {
      "name": "Leilani",
      "message": "hello",
      "time": "19 min",
      "image": 'assets/ui-kit/images/photo-bg-33n.png',
      "unread": true,
      "isStory": false,
      "count": "2"
    },
    {
      "name": "Shoya",
      "message": "Typing...",
      "time": "19 min",
      "image": 'assets/ui-kit/images/photo-bg-5Vr.png',
      "unread": false,
      "isStory": false,
      "count": ""
    },
    {
      "name": "Kemi",
      "message": "Sticker 😍",
      "time": "23 min",
      "image": 'assets/ui-kit/images/photo-bg-JRe.png',
      "unread": true,
      "isStory": false,
      "count": "1"
    },
    {
      "name": "Shoya",
      "message": "Typing...",
      "time": "19 min",
      "image": 'assets/ui-kit/images/photo-bg-5Vr.png',
      "unread": false,
      "isStory": false,
      "count": ""
    },
    {
      "name": "Kemi",
      "message": "Sticker 😍",
      "time": "23 min",
      "image": 'assets/ui-kit/images/photo-bg-JRe.png',
      "unread": true,
      "isStory": false,
      "count": "1"
    }
  ];
  final TextEditingController _searchController = TextEditingController();
  ScrollController scrollcontroller = ScrollController();

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
                      // Container(
                      //   // headerRuS (309:5477)
                      //   margin: EdgeInsets.fromLTRB(
                      //       (34.5 + 9.5) * fem, 0 * fem, 40 * fem, 20 * fem),
                      //   width: double.infinity,
                      //   child: Row(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Container(
                      //         // messagesYjA (309:5485)
                      //         margin: EdgeInsets.fromLTRB(
                      //             0 * fem, 0 * fem, 97 * fem, 0 * fem),
                      //         child: Text(
                      //           'Messages',
                      //           style: AppTextStyle.buildSafeGoogleFont34715black(
                      //               ffem, fem),
                      //         ),
                      //       ),
                      //       Filter(
                      //           fem: fem,
                      //           onPress: () {
                      //             debugPrint("dkbdkjd");
                      //           }),
                      //     ],
                      //   ),
                      // ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            (0) * fem, 20 * fem, 0 * fem, 0 * fem),
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
                                borderSide: BorderSide(
                                    width: 1, color: AppColor.thirdWhite)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15 * fem),
                                borderSide: BorderSide(
                                    width: 1, color: AppColor.thirdWhite)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15 * fem),
                                borderSide: BorderSide(
                                    width: 1, color: AppColor.thirdWhite)),
                            // border: Border.all(color: Color(0xffe8e6ea)),
                            // color: Color(0xffffffff),
                            prefixIcon: Container(
                              padding: EdgeInsets.fromLTRB(
                                  2.2 * fem, 1.2 * fem, 2.2 * fem, 1.2 * fem),
                              margin: EdgeInsets.fromLTRB(12.79 * fem,
                                  1.96 * fem, 12.79 * fem, 1.96 * fem),
                              child: Image.asset(
                                'assets/ui-kit/images/search.png',
                                width: 17.38 * fem,
                                height: 17.38 * fem,
                              ),
                            ),
                            hintText: 'Search'.tr,
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
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: double.infinity,
                        height: 128 * fem,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // activitiesB3N (309:5577)
                              margin: EdgeInsets.fromLTRB((34.5 + 5.5) * fem,
                                  0 * fem, 0 * fem, 10 * fem),
                              child: Text(
                                'Activities'.tr,
                                style: Theme.of(context).textTheme.headline3,
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: chatList.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  if (index == 0) {
                                    return Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 7.5 * fem),
                                      child: StoryCard(
                                          fem: fem,
                                          ffem: ffem,
                                          image: "",
                                          name: "",
                                          isDashBorder: true,
                                          isStory: chatList[index]["isStory"],
                                          onPress: () {
                                            showModalBottomSheet(
                                              context: context,
                                              isScrollControlled: true,
                                              useRootNavigator: true,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                topLeft:
                                                    Radius.circular(50 * fem),
                                                topRight:
                                                    Radius.circular(50 * fem),
                                              )),
                                              builder: (BuildContext context) {
                                                return BottomSheetStory();
                                              },
                                            );
                                          }),
                                    );
                                  }
                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7.5 * fem),
                                    child: StoryCard(
                                        fem: fem,
                                        ffem: ffem,
                                        image: chatList[index]["image"],
                                        name: chatList[index]["name"],
                                        isStory: chatList[index]["isStory"],
                                        onPress: () {
                                          Get.to(() => Stories(),
                                              transition: Transition.downToUp,
                                              duration:
                                                  Duration(milliseconds: 300));
                                          debugPrint("STORY");
                                        }),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            (34.5 + 5.5) * fem, 0 * fem, 40 * fem, 10 * fem),
                        child: Text(
                          'Messages'.tr,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
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
                                message: chatList[index]["message"],
                                time: chatList[index]["time"],
                                image: chatList[index]["image"],
                                unread: chatList[index]["unread"],
                                isStory: chatList[index]["isStory"],
                                onPress: () {
                                  Get.to(() => Stories(),
                                      transition: Transition.downToUp,
                                      duration: Duration(milliseconds: 300));
                                  debugPrint("STORY");
                                },
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomSheetStory extends StatefulWidget {
  @override
  State<BottomSheetStory> createState() => _BottomSheetStoryState();
}

class _BottomSheetStoryState extends State<BottomSheetStory> {
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
                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 76.5 * fem, 0 * fem),
                          child: Text(
                            'Select Activity'.tr,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline1,
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
                          child: Text('Go-Live'.tr,
                              style: Theme.of(context).textTheme.headline5),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 30 * fem),
                          child: Text(
                              '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.''',
                              style: Theme.of(context).textTheme.subtitle1),
                        ),
                        CommonButton(
                            fem: fem,
                            ffem: ffem,
                            onPress: () {},
                            text: "Stream Now".tr)
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
                          child: Text('Reels'.tr,
                              style: Theme.of(context).textTheme.headline5),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 30 * fem),
                          child: Text(
                              '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.''',
                              style: Theme.of(context).textTheme.subtitle1),
                        ),
                        CommonButton(
                            fem: fem,
                            ffem: ffem,
                            onPress: () {},
                            text: "Add Reels".tr)
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
                          child: Text('Story'.tr,
                              style: Theme.of(context).textTheme.headline5),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 30 * fem),
                          child: Text(
                              '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.''',
                              style: Theme.of(context).textTheme.subtitle1),
                        ),
                        CommonButton(
                            fem: fem,
                            ffem: ffem,
                            onPress: () {},
                            text: "Publish Story".tr)
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
