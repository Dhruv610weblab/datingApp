import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/units/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckInterestProfile extends StatelessWidget {
  const CheckInterestProfile({
    Key? key,
    required this.fem,
    required this.ffem,
    this.isCheck = false,
    required this.name,
  }) : super(key: key);

  final double fem;
  final double ffem;
  final bool isCheck;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(6.67 * fem, 5 * fem, 6 * fem, 6 * fem),
      height: double.infinity,
      decoration: isCheck
          ? BoxDecoration(
              border: Border.all(
                color: AppColor.primary,
              ),
              color: AppColor.white,
              borderRadius: BorderRadius.circular(5 * fem),
            )
          : BoxDecoration(
              border: Border.all(color: AppColor.thirdWhite),
              color: AppColor.white,
              borderRadius: BorderRadius.circular(5 * fem),
            ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isCheck
              ? Container(
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 1 * fem, 2.67 * fem, 0 * fem),
                  width: 14.67 * fem,
                  height: 8 * fem,
                  child: Image.asset(
                    'assets/ui-kit/images/done-all-oQ4.png',
                    width: 14.67 * fem,
                    height: 8 * fem,
                  ),
                )
              : Container(),
          Text(
            name,
            style: isCheck
                ? SafeGoogleFont(
                    'Sk-Modernist',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.5 * ffem / fem,
                    color: AppColor.primary,
                  )
                : SafeGoogleFont('Sk-Modernist',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem / fem,
                    // color: Color(0xff323755),
                    color: AppColor.black),
          ),
        ],
      ),
    );
  }
}
