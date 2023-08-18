import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Back extends StatelessWidget {
  const Back({
    Key? key,
    required this.fem,
    this.color,
  }) : super(key: key);

  final double fem;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.back(),
      child: Container(
        padding:
            EdgeInsets.fromLTRB(21.5 * fem, 19 * fem, 22.5 * fem, 19 * fem),
        // decoration: BoxDecoration(
        //   border: Border.all(color: Color(0xffe8e6ea)),
        //   color: Color(0xffffffff),
        //   borderRadius: BorderRadius.circular(15 * fem),
        // ),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffe8e6ea)),
          color: Color(0x33ffffff),
          borderRadius: BorderRadius.circular(15 * fem),
        ),
        child: Center(
          // rightY56 (I309:5330;152:127)
          child: SizedBox(
            width: 8 * fem,
            height: 14 * fem,
            child: Image.asset(
              color == null
                  ? 'assets/ui-kit/images/right-Yjr.png'
                  : 'assets/ui-kit/images/right-2NL.png',
              width: 8 * fem,
              height: 14 * fem,
            ),
          ),
        ),
      ),
    );
  }
}
