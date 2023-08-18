import 'package:datingapp/units/colors.dart';
import 'package:flutter/material.dart';

class PassionStyle {
  static BoxDecoration buildBoxDecorationDisable(double fem) {
    return BoxDecoration(
      border: Border.all(color: AppColor.greyBorder),
      color: AppColor.white,
      borderRadius: BorderRadius.circular(15 * fem),
    );
  }

  static BoxDecoration buildBoxDecorationActive(double fem) {
    return BoxDecoration(
      color: AppColor.primary,
      borderRadius: BorderRadius.circular(15 * fem),
      boxShadow: [
        BoxShadow(
          color: AppColor.lightPrimary,
          offset: Offset(0 * fem, 15 * fem),
          blurRadius: 7.5 * fem,
        ),
      ],
    );
  }
}
