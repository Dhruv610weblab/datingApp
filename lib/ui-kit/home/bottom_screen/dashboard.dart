import 'package:datingapp/ui-kit/profile/profile-details.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/cards/profile.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/widgets/back_button.dart';
import 'package:datingapp/widgets/filter_bottom_sheet.dart';
import 'package:datingapp/widgets/filter_button.dart';
import 'package:datingapp/widgets/swip_card_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:datingapp/units/utils.dart';
import 'package:get/get.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  List<String> _cards = [
    'assets/ui-kit/images/photo-bg.png',
    'assets/ui-kit/images/photo-8Jc.png',
    'assets/ui-kit/images/photo-bg-7e8.png',
    'assets/ui-kit/images/photo-bg-EiC.png',
  ];

  int currentIndex = 0;
  List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine? _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<Map<String, dynamic>> _peoples = <Map<String, dynamic>>[
    {
      "name": "Evey",
      "age": 22,
      "distance": "1Km",
      "prof": "Doctor",
      "image": 'assets/ui-kit/images/photo-bg.png',
    },
    {
      "name": "Ashi",
      "age": 19,
      "distance": "6Km",
      "prof": "Tester",
      "image": 'assets/ui-kit/images/photo-8Jc.png',
    },
    {
      "name": "Nancy",
      "age": 20,
      "distance": "10Km",
      "prof": "SDE",
      "image": 'assets/ui-kit/images/photo-bg-7e8.png',
    },
  ];

  @override
  void initState() {
    for (int i = 0; i < _peoples.length; i++) {
      _swipeItems.add(SwipeItem(
          content: Content(
              name: _peoples[i]["name"],
              distance: _peoples[i]["distance"],
              image: _peoples[i]["image"],
              age: _peoples[i]["age"],
              profession: _peoples[i]["prof"]),
          likeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Liked ${_peoples[i]["name"]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          nopeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Nope ${_peoples[i]["name"]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          superlikeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Superliked ${_peoples[i]["name"]}"),
              duration: Duration(milliseconds: 500),
            ));
          },
          onSlideUpdate: (SlideRegion? region) async {
            print("Region $region");
          }));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

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
            width: double.infinity,
            // decoration: BoxDecoration(
            //   color: Color(0xffffffff),
            // ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 0 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // headerRuS (309:5477)
                        margin: EdgeInsets.fromLTRB(
                            18 * fem, 0 * fem, 18 * fem, 0 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // messagesYjA (309:5485)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 97 * fem, 0 * fem),
                                    child: Text(
                                      'Discover'.tr,
                                      style:
                                          Theme.of(context).textTheme.headline2,
                                    ),
                                  ),
                                  Text(
                                    'Chicago, II',
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                ],
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
                                      return BottomSheetFilter();
                                    },
                                  );
                                }),
                          ],
                        ),
                      ),
                      // Container(
                      //   // headerFHA (309:5460)
                      //   margin: EdgeInsets.fromLTRB(
                      //       18 * fem, 0 * fem, 18 * fem, 24 * fem),
                      //   width: double.infinity,
                      //   height: 52 * fem,
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: [
                      //       // Back(fem: fem),
                      //       Container(),
                      //       Column(
                      //         mainAxisSize: MainAxisSize.max,
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: [
                      //           Text(
                      //             'Discover',
                      //             textAlign: TextAlign.center,
                      //             style: AppTextStyle
                      //                 .buildSafeGoogleFont2470012575black(
                      //                     ffem, fem),
                      //           ),
                      //           Text(
                      //             'Chicago, II',
                      //             textAlign: TextAlign.center,
                      //             style: AppTextStyle
                      //                 .buildSafeGoogleFont1240012575grysubtitle(
                      //                     ffem, fem),
                      //           ),
                      //         ],
                      //       ),
                      //       Filter(
                      //           fem: fem,
                      //           onPress: () {
                      //             showModalBottomSheet(
                      //               context: context,
                      //               isScrollControlled: true,
                      //               useRootNavigator: true,
                      //               shape: RoundedRectangleBorder(
                      //                   borderRadius: BorderRadius.only(
                      //                 topLeft: Radius.circular(50 * fem),
                      //                 topRight: Radius.circular(50 * fem),
                      //               )),
                      //               builder: (BuildContext context) {
                      //                 return BottomSheetFilter();
                      //               },
                      //             );
                      //           })
                      //     ],
                      //   ),
                      // ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              18 * fem, 0 * fem, 18 * fem, 20 * fem),
                          width: double.infinity,
                          height: 477 * fem,
                          child: Container(
                            width: 295 * fem,
                            height: double.infinity,
                            child: SwipeCards(
                              matchEngine: _matchEngine!,
                              itemBuilder: (BuildContext context, int index) {
                                return SwipeCardLayout(
                                  fem: fem,
                                  swipeItems: _swipeItems,
                                  ffem: ffem,
                                  index: index,
                                  onPress: () {
                                    debugPrint("PRINT DJD");
                                    Get.to(() => Profile(),
                                        transition: Transition.downToUp,
                                        duration: Duration(milliseconds: 300));
                                  },
                                );
                              },
                              onStackFinished: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("Stack Finished"),
                                  duration: Duration(milliseconds: 500),
                                ));
                              },
                              itemChanged: (SwipeItem item, int index) {
                                print(
                                    "item: ${item.content.name}, index: $index");
                              },
                              leftSwipeAllowed: true,
                              rightSwipeAllowed: true,
                              upSwipeAllowed: true,
                              fillSpace: true,
                              likeTag: Container(
                                height: 300 * fem,
                                width: 300 * fem,
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/ui-kit/like 2.png'),
                                )),
                              ),
                              nopeTag: Container(
                                height: 300 * fem,
                                width: 300 * fem,
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image:
                                      AssetImage('assets/ui-kit/dislike.png'),
                                )),
                              ),
                              superLikeTag: Container(
                                height: 300 * fem,
                                width: 300 * fem,
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/ui-kit/star.png'),
                                )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // buttonsNA4 (309:5424)
                        margin: EdgeInsets.fromLTRB(
                            18 * fem, 0 * fem, 18 * fem, 0 * fem),
                        width: double.infinity,
                        height: 99 * fem,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                _matchEngine!.currentItem?.nope();
                              },
                              child: Container(
                                // dislikescc (309:5431)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 10 * fem, 0 * fem, 11 * fem),
                                padding: EdgeInsets.fromLTRB(31.5 * fem,
                                    31.5 * fem, 31.5 * fem, 31.5 * fem),
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
                                  // closesmallZEY (309:5433)
                                  child: SizedBox(
                                    width: 15 * fem,
                                    height: 15 * fem,
                                    child: Image.asset(
                                      'assets/ui-kit/images/close-small.png',
                                      width: 15 * fem,
                                      height: 15 * fem,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20 * fem,
                            ),
                            InkWell(
                              onTap: () {
                                _matchEngine!.currentItem?.like();
                              },
                              child: Container(
                                // likesm2 (309:5425)
                                padding: EdgeInsets.fromLTRB(28.25 * fem,
                                    32.5 * fem, 28.25 * fem, 30.03 * fem),
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xffe94057),
                                  borderRadius:
                                      BorderRadius.circular(49.5 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x33e94057),
                                      offset: Offset(0 * fem, 15 * fem),
                                      blurRadius: 7.5 * fem,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  // likePDa (309:5427)
                                  child: SizedBox(
                                    width: 42.5 * fem,
                                    height: 36.47 * fem,
                                    child: Image.asset(
                                      'assets/ui-kit/images/like-Dpc.png',
                                      width: 42.5 * fem,
                                      height: 36.47 * fem,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20 * fem,
                            ),
                            InkWell(
                              onTap: () {
                                _matchEngine!.currentItem?.superLike();
                              },
                              child: Container(
                                // startg8 (309:5428)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 10 * fem, 0 * fem, 11 * fem),
                                padding: EdgeInsets.fromLTRB(26.5 * fem,
                                    27.13 * fem, 26.5 * fem, 27.13 * fem),
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
                                  // starnWc (309:5430)
                                  child: SizedBox(
                                    width: 25 * fem,
                                    height: 23.75 * fem,
                                    child: Image.asset(
                                      'assets/ui-kit/images/star.png',
                                      width: 25 * fem,
                                      height: 23.75 * fem,
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
      ),
    );
  }
}

class Content {
  final String? name;
  final int? age;
  final String? profession;
  final String? distance;
  final String? image;

  Content({this.name, this.age, this.profession, this.distance, this.image});
}
