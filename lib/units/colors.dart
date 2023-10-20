import 'dart:math';

import 'package:flutter/material.dart';

class AppColor {
  static Color white = const Color(0xffffffff);
  static Color secondWhite = const Color(0x7fffffff);
  static Color thirdWhite = const Color(0xffe8e6ea);
  static Color grey = const Color(0x66000000);
  static Color greySubTitle = const Color(0xb2000000);
  static Color greyBorder = const Color(0xffe8e6ea);
  static Color black = const Color(0xff000000);
  static Color navyBlue = const Color(0xff323755);
  static Color red = Colors.red;
  static Color primary = const Color(0xffe94057);
  static Color lightPrimary = const Color(0x33e94057);
  static Color bottomNavPrimary = const Color(0xFFF3F3F3);

  // static List<Color> gridColorList = <Color>[
  //   Color(0x33e94057),
  //   Color(0xff323755),
  //   Color(0xffe94057),
  //   Color(0x33e94057),
  //   Color(0xff323755),
  //   Color(0xffe94057),
  //   Color(0x33e94057),
  //   Color(0xff323755),
  //   Color(0xffe94057),
  //   Color(0x33e94057),
  //   Color(0xff323755),
  //   Color(0xffe94057),
  //   Color(0x33e94057),
  //   Color(0xff323755),
  //   Color(0xffe94057),
  //   Color(0xffe94057),
  //   Color(0xffe94057)
  // ];
  Color getRandomColor() {
    Random random = Random();
    int r = 0;
    int g = 0;
    int b = 0;

    // Generate random RGB values until the color is not black or white
    while (r < 100 || g < 100 || b < 100) {
      r = random.nextInt(256); // Random value between 0 and 255 for red
      g = random.nextInt(256); // Random value between 0 and 255 for green
      b = random.nextInt(256); // Random value between 0 and 255 for blue
    }

    return Color.fromARGB(255, r, g, b); // Create and return the random color
  }
}
