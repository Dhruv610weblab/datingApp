import 'package:flutter/material.dart';

class LoginIcon extends StatelessWidget {
  const LoginIcon({
    Key? key,
    required this.fem,
    required this.img,
  }) : super(key: key);
  final String img;
  final double fem;

  @override
  Widget build(BuildContext context) {
    return Container(
      // fbg16 (309:5083)
      padding: EdgeInsets.fromLTRB(18 * fem, 18 * fem, 18 * fem, 18 * fem),
      height: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffe8e6ea)),
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(15 * fem),
      ),
      child: Center(
        // iconslogofacebookasA (309:5085)
        child: SizedBox(
          width: 28 * fem,
          height: 28 * fem,
          child: Image.asset(
            img,
            width: 28 * fem,
            height: 28 * fem,
          ),
        ),
      ),
    );
  }
}
