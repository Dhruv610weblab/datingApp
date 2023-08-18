import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeHelper extends GetxController {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  /// Load isDarkMode from local storage and if it's empty, returns false (that means default theme is light)
  RxBool loadThemeFromBox() => _box.read(_key) == true ? true.obs : false.obs;

  /// Get isDarkMode info from local storage and return ThemeMode
  ThemeMode get theme =>
      loadThemeFromBox().value ? ThemeMode.dark : ThemeMode.light;

  /// Save isDarkMode to local storage
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);
  _removeThemeToBox() => _box.remove(_key);

  /// Switch theme and save to local storage
  void switchTheme() {
    final double fem = Get.width / 375;
    final double ffem = fem * 0.97;
    Get.changeThemeMode(
        loadThemeFromBox().value ? ThemeMode.light : ThemeMode.dark);
    Get.changeTheme(loadThemeFromBox().value
        ? brightThemeData(fem, ffem)
        : darkThemeData(fem, ffem));
    loadThemeFromBox().value ? _saveThemeToBox(false) : _saveThemeToBox(true);
    print(loadThemeFromBox());
    print(theme);
  }
}

ThemeData brightThemeData(double fem, double ffem) {
  return ThemeData(
    appBarTheme: AppBarTheme(
        foregroundColor: AppColor.black,
        backgroundColor: AppColor.white,
        iconTheme: IconThemeData(color: AppColor.primary)),
    primarySwatch: Colors.pink,
    backgroundColor: AppColor.white,
    scaffoldBackgroundColor: AppColor.white,
    iconTheme: IconThemeData(color: AppColor.black),
    textTheme: TextTheme(
      headline1: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 24 * ffem,
        fontWeight: FontWeight.w700,
        height: 1.5 * ffem / fem,
        color: AppColor.primary,
      ),
      headline2: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 34 * ffem,
        fontWeight: FontWeight.w700,
        height: 1.5 * ffem / fem,
        color: AppColor.black,
      ),
      headline3: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 18 * ffem,
        fontWeight: FontWeight.w700,
        height: 1.5 * ffem / fem,
        color: AppColor.black,
      ),
      headline4: SafeGoogleFont('Sk-Modernist',
          fontSize: 16 * ffem,
          fontWeight: FontWeight.w400,
          height: 1.5 * ffem / fem,
          // color: Color(0xff323755),
          color: AppColor.black),
      headline5: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 16 * ffem,
        fontWeight: FontWeight.w700,
        height: 1.5 * ffem / fem,
        color: AppColor.black,
      ),
      headline6: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 24 * ffem,
        fontWeight: FontWeight.w700,
        height: 1.5 * ffem / fem,
        color: AppColor.black,
      ),
      subtitle1: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 12 * ffem,
        fontWeight: FontWeight.w400,
        height: 1.5 * ffem / fem,
        color: AppColor.black,
      ),
      subtitle2: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 20 * ffem,
        fontWeight: FontWeight.w700,
        height: 1.5 * ffem / fem,
        color: AppColor.black,
      ),
      bodyText1: SafeGoogleFont('Sk-Modernist',
          fontSize: 14 * ffem,
          fontWeight: FontWeight.w400,
          height: 1.5 * ffem / fem,
          // color: Color(0xff323755),
          color: AppColor.black),
      bodyText2: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 24 * ffem,
        fontWeight: FontWeight.w400,
        height: 1.5 * ffem / fem,
        color: AppColor.black,
      ),
    ),
  );
}

ThemeData darkThemeData(double fem, double ffem) {
  return ThemeData(
    appBarTheme: AppBarTheme(
        foregroundColor: AppColor.white,
        backgroundColor: AppColor.black,
        iconTheme: IconThemeData(color: AppColor.white)),
    primarySwatch: Colors.pink,
    backgroundColor: AppColor.black,
    scaffoldBackgroundColor: AppColor.black,
    iconTheme: IconThemeData(color: AppColor.white),
    textTheme: TextTheme(
      headline1: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 24 * ffem,
        fontWeight: FontWeight.w700,
        height: 1.5 * ffem / fem,
        color: AppColor.primary,
      ),
      headline2: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 34 * ffem,
        fontWeight: FontWeight.w700,
        height: 1.5 * ffem / fem,
        color: AppColor.white,
      ),
      headline3: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 18 * ffem,
        fontWeight: FontWeight.w700,
        height: 1.5 * ffem / fem,
        color: AppColor.white,
      ),
      headline4: SafeGoogleFont('Sk-Modernist',
          fontSize: 16 * ffem,
          fontWeight: FontWeight.w400,
          height: 1.5 * ffem / fem,
          // color: Color(0xff323755),
          color: AppColor.white),
      headline5: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 16 * ffem,
        fontWeight: FontWeight.w700,
        height: 1.5 * ffem / fem,
        color: AppColor.white,
      ),
      headline6: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 24 * ffem,
        fontWeight: FontWeight.w700,
        height: 1.5 * ffem / fem,
        color: AppColor.white,
      ),
      subtitle1: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 12 * ffem,
        fontWeight: FontWeight.w400,
        height: 1.5 * ffem / fem,
        color: AppColor.white,
      ),
      subtitle2: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 20 * ffem,
        fontWeight: FontWeight.w700,
        height: 1.5 * ffem / fem,
        color: AppColor.white,
      ),
      bodyText1: SafeGoogleFont('Sk-Modernist',
          fontSize: 14 * ffem,
          fontWeight: FontWeight.w400,
          height: 1.5 * ffem / fem,
          // color: Color(0xff323755),
          color: AppColor.white),
      bodyText2: SafeGoogleFont(
        'Sk-Modernist',
        fontSize: 24 * ffem,
        fontWeight: FontWeight.w400,
        height: 1.5 * ffem / fem,
        color: AppColor.white,
      ),
    ),
  );
}
