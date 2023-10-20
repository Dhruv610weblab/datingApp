import 'package:datingapp/ui-kit/home/bottom_navigation.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/dashboard.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:datingapp/units/utils.dart';
import 'package:get/get.dart';

import '../../widgets/gender_card.dart';

class ContactInvitation extends StatefulWidget {
  @override
  State<ContactInvitation> createState() => _ContactInvitationState();
}

class _ContactInvitationState extends State<ContactInvitation> {
  List genderList = [
    {"name": "Imily", "image": Icons.person, "active": false},
    {"name": "Jone", "image": Icons.person, "active": false},
    {"name": "Keam", "image": Icons.person, "active": false},
    {"name": "Amit", "image": Icons.person, "active": false},
    {"name": "Dr. Imily", "image": Icons.person, "active": false},
    {"name": "Mohit pal", "image": Icons.person, "active": false},
    {"name": "Ramesh", "image": Icons.person, "active": false},
    {"name": "Aditya", "image": Icons.person, "active": false},
    {"name": "Gautom", "image": Icons.person, "active": false},
    {"name": "Wranglar", "image": Icons.person, "active": false}
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // notificationUWL (309:5158)
          padding: EdgeInsets.fromLTRB(40 * fem, 44 * fem, 40 * fem, 48 * fem),
          width: double.infinity,
          // decoration: BoxDecoration(
          //   color: Color(0xffffffff),
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    // skipK8L (309:5154)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 36 * fem),
                    child: Skip(
                      fem: fem,
                      ffem: ffem,
                      onPress: () {
                        Get.to(() => Home());
                      },
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 28 * fem, 32 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Invitation'.tr,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: 267 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500 * fem,
                      child: Scrollable(
                        physics: NeverScrollableScrollPhysics(),
                        viewportBuilder: (_, __) {
                          return ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              padding: EdgeInsets.all(0),
                              itemCount: genderList.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() => genderList[index]
                                                ['active'] ==
                                            true
                                        ? genderList[index]['active'] = false
                                        : genderList[index]['active'] = true);
                                  },
                                  child: GenderCard(
                                    fem: fem,
                                    ffem: ffem,
                                    isSelected: genderList[index]['active'],
                                    title:
                                        genderList[index]["name"].toString().tr,
                                  ),
                                );
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  // btncontinueRUC (309:5155)
                  width: double.infinity,
                  height: 56 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffe94057),
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  child: CommonButton(
                      fem: fem,
                      onPress: () {
                        Get.to(() => Home());
                        debugPrint('I want to be notified');
                      },
                      text: 'Send Invitation'.tr,
                      ffem: ffem)),
            ],
          ),
        ),
      ),
    );
  }
}
