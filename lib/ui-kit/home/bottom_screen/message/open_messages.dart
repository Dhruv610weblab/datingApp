import 'package:datingapp/ui-kit/home/bottom_screen/cards/profile.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:datingapp/units/utils.dart';
import 'package:get/get.dart';

class OpenMessages extends StatefulWidget {
  @override
  State<OpenMessages> createState() => _OpenMessagesState();
}

class _OpenMessagesState extends State<OpenMessages> {
  bool isSearchActive = false;
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: mainAppBar(
        context,
        leading: isSearchActive
            ? IconButton(
                onPressed: () => setState(() => isSearchActive = false),
                icon: Icon(Icons.arrow_back))
            : null,
        title: isSearchActive
            ? TextFormField(
                controller: searchController,
                cursorColor: AppColor.primary,
                decoration: InputDecoration(
                  constraints: BoxConstraints(maxHeight: 40 * fem),
                  contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColor.primary)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColor.primary)),
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // photopEt (309:5726)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 2 * fem, 10 * fem, 0 * fem),
                    padding:
                        EdgeInsets.fromLTRB(0 * fem, 4 * fem, 0 * fem, 4 * fem),
                    width: 40 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(28 * fem),
                      border: Border(),
                    ),
                    child: Center(
                      // photoir4 (309:5728)
                      child: SizedBox(
                        width: 36 * fem,
                        height: 36 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24 * fem),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/ui-kit/images/photo-bg-2si.png',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogrouprzk4S1N (QbJNAMyd7cZGqA5M4FrZk4)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                    width: 100 * fem,
                    height: 50 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // nameACG (309:5724)
                          left: 0 * fem,
                          bottom: 10 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 60 * fem,
                              height: 36 * fem,
                              child: Text(
                                'GraceGrace Grace Grace',
                                maxLines: 2,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // messagefep (309:5725)
                          left: 10 * fem,
                          top: 32 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 34 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Online'.tr,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // ellipse6Aba (309:5739)
                          left: 0 * fem,
                          top: 39 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 6 * fem,
                              height: 6 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3 * fem),
                                  color: Color(0xffe94057),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   // btnfilter5Ck (309:5729)
                  //   margin: EdgeInsets.fromLTRB(
                  //       0 * fem, 2 * fem, 0 * fem, 0 * fem),
                  //   width: 52 * fem,
                  //   height: 52 * fem,
                  //   child: Image.asset(
                  //     'assets/ui-kit/images/btn-filter-Jye.png',
                  //     width: 52 * fem,
                  //     height: 52 * fem,
                  //   ),
                  // ),
                ],
              ),
        actions: isSearchActive == true
            ? [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.keyboard_arrow_up)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down))
              ]
            : [
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.video_call,
                      color: AppColor.primary,
                      size: 20,
                    )),
                SizedBox(
                  width: 3 * ffem,
                ),
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.mic,
                      color: AppColor.primary,
                      size: 20,
                    )),
                SizedBox(
                  width: 3 * ffem,
                ),
                PopupMenuButton<String>(
                  onSelected: handleClick,
                  itemBuilder: (BuildContext context) {
                    return {
                      'Search'.tr,
                      'View Profile'.tr,
                      'Block'.tr,
                      'Clear chat'.tr
                    }.map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(
                          choice,
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList();
                  },
                ),
                SizedBox(
                  width: 4 * ffem,
                ),
              ],
        isTextCenter: false,
        color: AppColor.primary,
      ),
      body: Container(
        width: double.infinity,
        height: fem * 680,
        child: Stack(
          children: [
            Align(
              child: Container(
                width: 350 * fem,
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: 3,
                          reverse: true,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ChatBubble(
                                isMe: index == 0 ? false : true,
                                ffem: ffem,
                                fem: fem);
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 10 * fem, 0 * fem, 20 * fem),
                      width: 350 * fem,
                      height: 48 * fem,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              // autogroup8hr2RE8 (QbJMJJahZpp1F2xmEF8hR2)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 15 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  16 * fem, 14 * fem, 16.83 * fem, 13 * fem),
                              height: double.infinity,

                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffe8e6ea)),
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      // searchgfr (309:5702)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 99.83 * fem, 0 * fem),
                                      child: Text(
                                        'Your message'.tr,
                                        style: SafeGoogleFont(
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
                                    // stickersD9z (309:5699)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                    width: 18.33 * fem,
                                    height: 18.33 * fem,
                                    child: Image.asset(
                                      'assets/ui-kit/images/stickers-QxQ.png',
                                      width: 18.33 * fem,
                                      height: 18.33 * fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            // autogroup6fbevaC (QbJMPDcBJu7HFPjWhM6FBe)
                            width: 48 * fem,
                            height: 48 * fem,
                            child: Image.asset(
                              'assets/ui-kit/images/auto-group-6fbe.png',
                              width: 48 * fem,
                              height: 48 * fem,
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
      ),
    );
  }

  void handleClick(String value) {
    if (value == 'Search'.tr) {
      setState(() => isSearchActive = true);
    }
    if (value == 'Block'.tr) {}
    if (value == 'Clear chat'.tr) {}
    if (value == 'View Profile'.tr) {
      Get.to(() => Profile(),
          transition: Transition.downToUp,
          duration: Duration(milliseconds: 300));
    }
  }
}

class ChatBubble extends StatelessWidget {
  const ChatBubble(
      {Key? key, this.isMe = true, required this.ffem, required this.fem})
      : super(key: key);
  final bool? isMe;
  final double ffem;
  final double fem;
  @override
  Widget build(BuildContext context) {
    return isMe == true
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 20 * fem, 0 * fem, 4 * fem),
                    child: CircleAvatar(
                      foregroundImage:
                          AssetImage('assets/ui-kit/images/photo-bg-2si.png'),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  Container(
                    width: Get.width / 1.6,
                    // autogroupn37wjzp (QbJMinstzjghgQsgeDN37W)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 10 * fem, 40 * fem, 4 * fem),
                    // width: 240 * fem,
                    padding: EdgeInsets.all(18 * fem),
                    decoration: BoxDecoration(
                      color: Color(0x11e94057),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15 * fem),
                        topRight: Radius.circular(15 * fem),
                        bottomRight: Radius.circular(15 * fem),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Grace',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          'Sure, let’s do it! 😊Sure, let’s do it! 😊Sure, let’s do it! 😊Sure, let’s do it! 😊Sure, let’s do it! 😊',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          // pm5xC (309:5708)
                          '3:10 PM',
                          style: SafeGoogleFont(
                            'Sk-Modernist',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0x66000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Get.width / 1.6,
                    margin: EdgeInsets.fromLTRB(
                        40 * fem, 10 * fem, 0 * fem, 4 * fem),
                    // width: 240 * fem,
                    padding: EdgeInsets.all(18 * fem),
                    decoration: BoxDecoration(
                      color: AppColor.lightPrimary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15 * fem),
                        topRight: Radius.circular(15 * fem),
                        bottomLeft: Radius.circular(15 * fem),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jack',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          'Great I will write later the exactme and  later the exactime and  later the exact \ntime and place. See you soon!',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // pmfzG (309:5719)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 4.67 * fem, 0 * fem),
                              child: Text(
                                '3:12 PM',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Sk-Modernist',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0x66000000),
                                ),
                              ),
                            ),
                            // Container(
                            //   // doneallAw2 (309:5720)
                            //   width: 14.67 * fem,
                            //   height: 8 * fem,
                            //   child: Image.asset(
                            //     'assets/ui-kit/images/done-all.png',
                            //     width: 14.67 * fem,
                            //     height: 8 * fem,
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 20 * fem, 0 * fem, 4 * fem),
                    child: CircleAvatar(
                      foregroundImage:
                          AssetImage('assets/ui-kit/images/stickers-QxQ.png'),
                    ),
                  ),
                ],
              ),
            ],
          );
  }
}
