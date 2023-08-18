import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/utils.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {Key? key,
      required this.fem,
      required this.ffem,
      required this.onPress,
      required this.text,
      this.isColorReplace = false})
      : super(key: key);

  final double fem;
  final double ffem;
  final String text;
  final Function() onPress;
  final bool isColorReplace;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        // btncontinuemB6 (309:5182)
        width: double.infinity,
        height: 56 * fem,
        decoration: BoxDecoration(
          color: isColorReplace ? AppColor.white : AppColor.primary,
          borderRadius: BorderRadius.circular(15 * fem),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: SafeGoogleFont(
              'Sk-Modernist',
              fontSize: 16 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.5 * ffem / fem,
              color: isColorReplace ? AppColor.primary : AppColor.white,
            ),
          ),
        ),
      ),
    );
  }
}
