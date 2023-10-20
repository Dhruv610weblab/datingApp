import 'package:datingapp/ui-kit/home/bottom_screen/message/group_messages.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/message/messages.dart';
import 'package:datingapp/units/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../units/utils.dart';

class ChatTabScreen extends StatelessWidget {
  const ChatTabScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = Get.width / baseWidth;
    double ffem = fem * 0.97;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            '',
            style: Theme.of(context).textTheme.headline2,
          ),
          centerTitle: false,
          bottom: TabBar(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: AppColor.white,
            indicator: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(10)),
            labelPadding: const EdgeInsets.symmetric(vertical: 10),
            unselectedLabelColor: AppColor.primary,
            tabs: [
              Text('Messages',
                  style: SafeGoogleFont(
                    'Sk-Modernist',
                    fontSize: 18 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.5 * ffem / fem,
                  )),
              Text('Group Messages',
                  style: SafeGoogleFont(
                    'Sk-Modernist',
                    fontSize: 18 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.5 * ffem / fem,
                  ))
            ],
          ),
          // title: Text('Messages')
        ),
        body: TabBarView(children: [Messages(), GroupMessages()]),
      ),
    );
  }
}