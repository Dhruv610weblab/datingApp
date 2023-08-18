import 'package:datingapp/ui-kit/home/bottom_screen/profile/settings/edit_basics.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/profile/settings/edit_profile.dart';
import 'package:datingapp/ui-kit/home/bottom_screen/profile/settings/edit_work_education.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/units/utils.dart';
import 'package:datingapp/widgets/app_bar.dart';
import 'package:datingapp/widgets/check_theme.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int isActive = 1;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: mainAppBar(
        context,
        title: Text("Settings".tr),
        actions: [
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Logout'.tr}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(
                    choice,
                    style: TextStyle(color: AppColor.black),
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
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.fromLTRB(18 * fem, 0 * fem, 18 * fem, 0 * fem),
            child: ListView(
              children: [
                ListTile(
                  onTap: () => Get.to(() => ProfileEdit()),
                  title: Text(
                    'Edit Profile'.tr,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  leading: Icon(
                    Icons.person,
                    color: AppColor.primary,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).backgroundColor == Colors.black
                        ? AppColor.white
                        : AppColor.black,
                  ),
                ),
                ListTile(
                  onTap: () => Get.to(() => BasicInfoEdit()),
                  title: Text(
                    'My Basics'.tr,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  leading: Icon(
                    Icons.edit,
                    color: AppColor.primary,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).backgroundColor == Colors.black
                        ? AppColor.white
                        : AppColor.black,
                  ),
                ),
                ListTile(
                  onTap: () => Get.to(() => WorkEducation()),
                  title: Text(
                    'My Work & Education'.tr,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  leading: Icon(
                    Icons.work_history,
                    color: AppColor.primary,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).backgroundColor == Colors.black
                        ? AppColor.white
                        : AppColor.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    ThemeHelper().switchTheme();
                  },
                  title: Text(
                    'Theme'.tr,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  leading: Icon(
                    Icons.brightness_6,
                    color: AppColor.primary,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).backgroundColor == Colors.black
                        ? AppColor.white
                        : AppColor.black,
                  ),
                ),
                ListTile(
                  onTap: () {
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
                        return BottomSheetLanguage();
                      },
                    );
                  },
                  title: Text(
                    'App language'.tr,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  leading: Icon(
                    Icons.language,
                    color: AppColor.primary,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).backgroundColor == Colors.black
                        ? AppColor.white
                        : AppColor.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Help Center'.tr,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  leading: Icon(
                    Icons.help,
                    color: AppColor.primary,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).backgroundColor == Colors.black
                        ? AppColor.white
                        : AppColor.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Terms'.tr,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  leading: Icon(
                    Icons.file_copy,
                    color: AppColor.primary,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).backgroundColor == Colors.black
                        ? AppColor.white
                        : AppColor.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Contact us'.tr,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  leading: Icon(
                    Icons.people,
                    color: AppColor.primary,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).backgroundColor == Colors.black
                        ? AppColor.white
                        : AppColor.black,
                  ),
                ),
                ListTile(
                  title: Text(
                    'App info'.tr,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  leading: Icon(
                    Icons.info,
                    color: AppColor.primary,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).backgroundColor == Colors.black
                        ? AppColor.white
                        : AppColor.black,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 5 * fem),
                        child: Text(
                          'Private Profile'.tr,
                          style: Theme.of(context).textTheme.headline5,
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
                                  0 * fem, 0 * fem, 0 * fem, 20 * fem),
                              child: Text(
                                '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.''',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                            bottomLeft:
                                                Radius.circular(15 * fem),
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
                                                : SafeGoogleFont(
                                                    'Sk-Modernist',
                                                    fontSize: 14 * ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.5 * ffem / fem,
                                                    color: AppColor.black,
                                                  ),
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
                                            bottomRight:
                                                Radius.circular(15 * fem),
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
                Container(
                  margin: EdgeInsets.only(bottom: 40 * fem),
                  child: CommonButton(
                    ffem: ffem,
                    fem: fem,
                    onPress: () {},
                    text: 'Update'.tr,
                  ),
                )
              ],
            )),
      ),
    );
  }

  void handleClick(String value) {
    switch (value) {
      case 'Logout':
        break;
    }
  }
}

class BottomSheetLanguage extends StatefulWidget {
  @override
  State<BottomSheetLanguage> createState() => _BottomSheetLanguageState();
}

class _BottomSheetLanguageState extends State<BottomSheetLanguage> {
  int isActive = 1;
  List<Map<String, dynamic>> languageList = [
    {"name": "English", "code": "en"},
    {"name": "Hindi", "code": "hi"},
    {"name": "Greek", "code": "el"},
    {"name": "French", "code": "fr"},
  ];
  String? selectedValue = Get.locale?.languageCode ?? "en";
  @override
  Widget build(BuildContext context) {
    print("${Get.locale?.languageCode}");
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
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
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 40 * fem, 0 * fem, 0 * fem),
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
                            child: Text('Language'.tr,
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
                                    .buildSafeGoogleFont1670015primary(
                                        fem, ffem),
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
                            child: Text('Select language'.tr,
                                style: Theme.of(context).textTheme.headline5),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 30 * fem),
                            child: Text(
                                '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.''',
                                style: Theme.of(context).textTheme.subtitle1),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: languageList.length,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                    margin: EdgeInsets.only(bottom: 10 * fem),
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffe8e6ea)),
                                      color: Color(0xffffffff),
                                      borderRadius:
                                          BorderRadius.circular(15 * fem),
                                    ),
                                    child: RadioListTile(
                                        value: languageList[index]["code"]
                                            .toString(),
                                        title: Text(
                                            languageList[index]["name"] +
                                                " (" +
                                                languageList[index]["code"] +
                                                ")",
                                            style: AppTextStyle
                                                .buildSafeGoogleFont16600black(
                                                    fem, ffem)),
                                        groupValue: selectedValue,
                                        onChanged: (change) {
                                          setState(() {
                                            selectedValue = change.toString();
                                          });
                                          print(selectedValue);
                                        }));
                              })
                        ],
                      ),
                    ),
                    CommonButton(
                      ffem: ffem,
                      fem: fem,
                      onPress: () {
                        print(selectedValue);
                        Get.updateLocale(Locale(selectedValue.toString()));
                        Navigator.of(context).pop();
                      },
                      text: 'Continue',
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
