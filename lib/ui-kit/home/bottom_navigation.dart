import 'package:datingapp/ui-kit/home/bottom_screen/events/event.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/group/groups_screen.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/match/match.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/match/matches.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/message/chat.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/dashboard.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/message/messages.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/cards/profile.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/notification/notification_screen.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/profile/profile-vit.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/widgets/check_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  final int? currIndex;
  const Home({Key? key, this.currIndex}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<PersistentBottomNavBarItem> bottomNav = [];
  int currentIndex = 0;
  PersistentTabController? _controller;
  List<PersistentBottomNavBarItem>? _navBarsItems;

  @override
  void initState() {
    super.initState();

    if (mounted) {
      _navBarsItems = [
        PersistentBottomNavBarItem(
          icon: Container(
            margin: const EdgeInsets.only(top: 8),
            height: 32,
            width: 32,
            child: Image.asset(
              'assets/ui-kit/swip_active.png',
            ),
          ),
          inactiveIcon: Container(
            margin: const EdgeInsets.only(top: 8),
            height: 32,
            width: 32,
            child: Image.asset(
              'assets/ui-kit/swip_disable.png',
            ),
          ),
          // textStyle: const TextStyle(fontSize: 12),
          // title: "CONNECT",
          activeColorPrimary: AppColor.primary,
        ),
        PersistentBottomNavBarItem(
          // textStyle: const TextStyle(fontSize: 12),
          icon: Container(
            margin: const EdgeInsets.only(top: 8),
            height: 32,
            width: 32,
            child: Image.asset(
              'assets/ui-kit/indicator_active.png',
            ),
          ),
          inactiveIcon: Container(
            margin: const EdgeInsets.only(top: 8),
            height: 32,
            width: 32,
            child: Image.asset(
              'assets/ui-kit/indicator_disable.png',
            ),
          ),
          // title: "MESSAGES",
          activeColorPrimary: AppColor.primary,

          // inactiveColorPrimary: AppColor.white,
        ),
        PersistentBottomNavBarItem(
          // textStyle: const TextStyle(fontSize: 12),
          icon: Container(
            margin: const EdgeInsets.only(top: 8),
            height: 32,
            width: 32,
            child: Icon(
              Icons.notifications_active,
              color: AppColor.primary,
              size: 34,
            ),
          ),
          inactiveIcon: Container(
            margin: const EdgeInsets.only(top: 8),
            height: 32,
            width: 32,
            child: Icon(
              Icons.notifications,
              color: Color(0xFFADAEBB),
              size: 34,
            ),
          ),
          // title: "MESSAGES",
          activeColorPrimary: AppColor.primary,

          // inactiveColorPrimary: AppColor.white,
        ),
        PersistentBottomNavBarItem(
          // textStyle: const TextStyle(fontSize: 12),
          icon: Container(
            margin: const EdgeInsets.only(top: 8),
            height: 32,
            width: 32,
            child: Icon(
              Icons.group,
              color: AppColor.primary,
              size: 34,
            ),
          ),
          inactiveIcon: Container(
            margin: const EdgeInsets.only(top: 8),
            height: 32,
            width: 32,
            child: Icon(
              Icons.group,
              color: Color(0xFFADAEBB),
              size: 34,
            ),
          ),
          // title: "MESSAGES",
          activeColorPrimary: AppColor.primary,

          // inactiveColorPrimary: AppColor.white,
        ),
        // PersistentBottomNavBarItem(
        //   // textStyle: const TextStyle(fontSize: 12),
        //   icon: Container(
        //     margin: const EdgeInsets.only(top: 8),
        //     height: 32,
        //     width: 32,
        //     child: Icon(
        //       Icons.group,
        //       color: AppColor.primary,
        //       size: 34,
        //     ),
        //   ),
        //   inactiveIcon: Container(
        //     margin: const EdgeInsets.only(top: 8),
        //     height: 32,
        //     width: 32,
        //     child: Icon(
        //       Icons.group,
        //       color: Color(0xFFADAEBB),
        //       size: 34,
        //     ),
        //   ),
        //   // title: "MESSAGES",
        //   activeColorPrimary: AppColor.primary,
        //
        //   // inactiveColorPrimary: AppColor.white,
        // ),
        PersistentBottomNavBarItem(
          // textStyle: const TextStyle(fontSize: 12),
          icon: Container(
            margin: const EdgeInsets.only(top: 8),
            height: 32,
            width: 32,
            child: Image.asset(
              'assets/ui-kit/message_active.png',
            ),
          ),
          inactiveIcon: Container(
            margin: const EdgeInsets.only(top: 8),
            height: 32,
            width: 32,
            child: Image.asset(
              'assets/ui-kit/message_disable.png',
            ),
          ),
          // title: "MESSAGES",
          activeColorPrimary: AppColor.primary,

          // inactiveColorPrimary: AppColor.white,
        ),
        PersistentBottomNavBarItem(
          // textStyle: const TextStyle(fontSize: 12),
          icon: Container(
            margin: const EdgeInsets.only(top: 8),
            height: 32,
            width: 32,
            child: Image.asset(
              'assets/ui-kit/people_disable.png',
              color: AppColor.primary,
            ),
          ),
          inactiveIcon: Container(
            margin: const EdgeInsets.only(top: 8),
            height: 32,
            width: 32,
            child: Image.asset(
              'assets/ui-kit/people_disable.png',
            ),
          ),
          // icon: ImageIcon(AssetImage('assets/icons/profile.png')),
          // title: "PROFILE",
          activeColorPrimary: AppColor.primary,
          // inactiveColorPrimary: AppColor.white,
        ),
      ];
    }
    widget.currIndex != null
        ? currentIndex = widget.currIndex!
        : currentIndex = 0;
    setState(() {
      _controller = PersistentTabController(initialIndex: currentIndex);
    });
  }

  List<Widget> _buildScreens() {
    return [
      Dashboard(),
      Matches(),
      Notifications(),
      EventScreen(),
      // Groups(),
      // Messages(),
      ChatTabScreen(),
      UserProfile()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      //       selectedIconTheme: const IconThemeData(size: 32),
      // unselectedIconTheme: const IconThemeData(size: 30),
      context,
      confineInSafeArea: true,
      // navBarHeight: 60,

      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems,
      navBarStyle: NavBarStyle.style3,
      backgroundColor: Theme.of(context).backgroundColor == Colors.black
          ? AppColor.black
          : AppColor.bottomNavPrimary,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true,
      stateManagement: false, // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      onItemSelected: (index) {
        setState(() {
          _controller?.index = index; // THIS IS CRITICAL!! Don't miss it!
        });
      },
    );
  }
}
