import 'package:datingapp/ui-kit/permission/notification.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:datingapp/units/utils.dart';

class SearchFriends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // friendsRHr (309:5144)
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
                        Get.to(() => Notifications());
                      },
                    ),
                  ),
                ],
              ),
              Container(
                // peopledui (309:5148)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 84 * fem),
                width: 180 * fem,
                height: 200 * fem,
                child: Image.asset(
                  'assets/ui-kit/images/people.png',
                  width: 180 * fem,
                  height: 200 * fem,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // searchfriendss3N (309:5147)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 10 * fem),
                      child: Text('Search friend’s'.tr,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline2),
                    ),
                    Container(
                      // youcanfindfriendsfromyourconta (309:5146)
                      constraints: BoxConstraints(
                        maxWidth: 247 * fem,
                      ),
                      child: Text(
                        'You can find friends from your contact lists\nto connected'
                            .tr,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1,
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
                        Get.to(() => Notifications());
                        debugPrint('Access to a contact list');
                      },
                      text: 'Access to a contact list'.tr,
                      ffem: ffem)),
            ],
          ),
        ),
      ),
    );
  }
}
