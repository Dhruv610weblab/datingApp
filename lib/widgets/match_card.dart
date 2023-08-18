import 'dart:ui';

import 'package:datingapp/units/utils.dart';
import 'package:flutter/material.dart';

class MatchesCard extends StatelessWidget {
  const MatchesCard({
    Key? key,
    required this.fem,
    required this.ffem,
    required this.image,
    required this.name,
    required this.age,
    this.isLiked = false,
  }) : super(key: key);

  final double fem;
  final double ffem;
  final String image;
  final String name;
  final String age;
  final bool isLiked;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
      padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
      width: 140 * fem,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffc4c4c4),
        borderRadius: BorderRadius.circular(15 * fem),
        image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.fill),
      ),
      child: Stack(
        children: [
          isLiked
              ? Positioned(
                  top: -18 * fem,
                  right: -35 * fem,
                  child: Image.asset(
                    'assets/ui-kit/like (1).png',
                    scale: 4,
                  ))
              : Container(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(16 * fem, 0 * fem, 0 * fem, 4 * fem),
                child: Text(
                  '$name, $age',
                  style: SafeGoogleFont(
                    'Sk-Modernist',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.5 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                    29 * fem, 0 * fem, 25.67 * fem, 0 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.colorBurn,
                  color: Colors.transparent.withOpacity(0.65),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15 * fem),
                    bottomLeft: Radius.circular(15 * fem),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 31 * fem, 0 * fem),
                      width: 10 * fem,
                      height: 10 * fem,
                      child: Image.asset(
                        'assets/ui-kit/images/close-small-K3W.png',
                        width: 10 * fem,
                        height: 10 * fem,
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 26.67 * fem, 0 * fem),
                        width: 1 * fem,
                        height: 40 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x7fffffff),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0.97 * fem, 0 * fem, 0 * fem),
                      width: 16.67 * fem,
                      height: 14.3 * fem,
                      child: Image.asset(
                        'assets/ui-kit/images/like-Dpc.png',
                        width: 16.67 * fem,
                        height: 14.3 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
