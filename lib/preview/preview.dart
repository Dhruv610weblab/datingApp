import 'package:datingapp/units/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // previewmSQ (601:1399)
        padding: EdgeInsets.fromLTRB(100 * fem, 0 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupva4gsnG (QbHutHRncyJGAqLQp4Va4g)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 222 * fem, 0 * fem),
              width: 479 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // titleaAt (601:1380)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 72 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // datingappfreeuikituDA (601:1382)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 40 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 479 * fem,
                          ),
                          child: Text(
                            'Dating app\nFree UI Kit',
                            style: SafeGoogleFont(
                              'Sk-Modernist',
                              fontSize: 100 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Text(
                          // findyoursoulmateinafewclicksj5 (601:1381)
                          'Find your soulmate in a few clicks',
                          style: SafeGoogleFont(
                            'Sk-Modernist',
                            fontSize: 30 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xb2000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // figmaF44 (601:1360)
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // iconfigma9QL (601:1362)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 157 * fem, 20 * fem),
                          padding: EdgeInsets.fromLTRB(
                              34 * fem, 26 * fem, 34 * fem, 26 * fem),
                          decoration: BoxDecoration(
                            color: Color(0xff323755),
                            borderRadius: BorderRadius.circular(16 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x11000000),
                                offset: Offset(0 * fem, 20 * fem),
                                blurRadius: 25 * fem,
                              ),
                            ],
                          ),
                          child: Center(
                            // figma1Be (601:1364)
                            child: SizedBox(
                              width: 32 * fem,
                              height: 48 * fem,
                              child: Image.asset(
                                'assets/preview/images/figma.png',
                                width: 32 * fem,
                                height: 48 * fem,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          // screensh4U (601:1361)
                          '25+ screens',
                          style: SafeGoogleFont(
                            'Sk-Modernist',
                            fontSize: 50 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff323755),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup4ad6pet (QbHvCrjAuJVVUu8fgQ4aD6)
              width: 599 * fem,
              height: 752 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // redkYY (601:1383)
                    left: 189 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 410 * fem,
                        height: 752 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffe94057),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // mockupdsE (601:1394)
                    left: 0 * fem,
                    top: 80 * fem,
                    child: Container(
                      width: 460 * fem,
                      height: 672 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // mocupyRJ (601:1395)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 376.99 * fem,
                                height: 672 * fem,
                                child: Image.asset(
                                  'assets/preview/images/mocup.png',
                                  width: 376.99 * fem,
                                  height: 672 * fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // swiperightF7v (601:1398)
                            left: 127.185546875 * fem,
                            top: 124.1904602051 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 332.81 * fem,
                                height: 424.38 * fem,
                                child: Image.asset(
                                  'assets/preview/images/swipe-right.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
