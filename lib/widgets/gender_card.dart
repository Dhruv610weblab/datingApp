import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    Key? key,
    required this.fem,
    required this.ffem,
    this.image,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  final double fem;
  final double ffem;
  final String? image;
  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      // womanN1W (309:5129)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
      padding: EdgeInsets.fromLTRB(20 * fem, 16 * fem, 23.33 * fem, 18 * fem),
      width: double.infinity,
      decoration: isSelected
          ? BoxDecoration(
              color: Color(0xffe94057),
              borderRadius: BorderRadius.circular(15 * fem),
            )
          : BoxDecoration(
              border: Border.all(color: Color(0xffe8e6ea)),
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(15 * fem),
            ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // womanrhN (309:5132)
            width: 220 * fem,
            child: Text(
              title,
              style: isSelected
                  ? AppTextStyle.buildSafeGoogleFont1670015white(fem, ffem)
                  : AppTextStyle.buildSafeGoogleFont1640015black(fem, ffem),
            ),
          ),
          Container(
            // checksmallymz (309:5131)
            margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 10 * fem, 0 * fem),
            width: 12.5 * fem,
            height: 8.33 * fem,
            child: isSelected
                ? Icon(
                    Icons.check,
                    color: AppColor.white,
                  )
                : Container(),
          ),
        ],
      ),
    );
  }
}
