import 'package:datingapp/ui-kit/home/bottom_navigation.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/dashboard.dart';
import 'package:datingapp/ui-kit/permission/contact_Invitation.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:datingapp/units/utils.dart';
import 'package:get/get.dart';

class Notifications extends StatelessWidget {
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
              Container(
                // chatsoN (309:5160)
                margin: EdgeInsets.fromLTRB(
                    18.62 * fem, 20 * fem, 0 * fem, 94.99 * fem),
                width: 199.62 * fem,
                height: 169.01 * fem,
                child: Image.asset(
                  'assets/ui-kit/images/chat.png',
                  width: 199.62 * fem,
                  height: 169.01 * fem,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // enablenotificationsvFr (309:5174)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 10 * fem),
                      child: Text('Enable notification’s'.tr,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline2),
                    ),
                    Container(
                      // getpushnotificationwhenyougett (309:5173)
                      constraints: BoxConstraints(
                        maxWidth: 282 * fem,
                      ),
                      child: Text(
                          'Get push-notification when you get the match or receive a message.'
                              .tr,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1),
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
                        Get.to(() => ContactInvitation());
                        debugPrint('I want to be notified');
                      },
                      text: 'I want to be notified'.tr,
                      ffem: ffem)),
            ],
          ),
        ),
      ),
    );
  }
}
