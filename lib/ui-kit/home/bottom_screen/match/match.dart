import 'package:datingapp/units/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:datingapp/units/utils.dart';

class Match extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // matchr6t (309:5749)
          padding: EdgeInsets.fromLTRB(18 * fem, 53 * fem, 18 * fem, 48 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // photosvcY (309:5750)
                margin: EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 0.43 * fem, 20.49 * fem),
                width: double.infinity,
                height: 403.51 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // photomainT6g (309:5751)
                      left: 95.3244628906 * fem,
                      top: 25 * fem,
                      child: Container(
                        width: 199.24 * fem,
                        height: 264.14 * fem,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x26000000),
                              offset: Offset(0 * fem, 25 * fem),
                              blurRadius: 12.5 * fem,
                            ),
                          ],
                        ),
                        child: Center(
                          // photojK6 (I309:5751;174:1)
                          child: SizedBox(
                            width: double.infinity,
                            height: 264.14 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15 * fem),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/ui-kit/images/photo-bg-kJc.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // photomainFoE (309:5752)
                      left: 0 * fem,
                      top: 117 * fem,
                      child: Container(
                        width: 199.24 * fem,
                        height: 264.14 * fem,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x26000000),
                              offset: Offset(0 * fem, 25 * fem),
                              blurRadius: 12.5 * fem,
                            ),
                          ],
                        ),
                        child: Center(
                          // photoNsr (I309:5752;174:1)
                          child: SizedBox(
                            width: double.infinity,
                            height: 264.14 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15 * fem),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/ui-kit/images/photo-bg-EiC.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // likeuct (309:5753)
                      left: 112 * fem,
                      top: 0 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            16.85 * fem, 16.85 * fem, 16.85 * fem, 16.85 * fem),
                        width: 69.51 * fem,
                        height: 69.51 * fem,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/ui-kit/images/container-328.png',
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x11000000),
                              offset: Offset(0 * fem, 20 * fem),
                              blurRadius: 25 * fem,
                            ),
                          ],
                        ),
                        child: Center(
                          // likewZa (309:5755)
                          child: SizedBox(
                            width: 35.81 * fem,
                            height: 35.81 * fem,
                            child: Image.asset(
                              'assets/ui-kit/images/like-hQk.png',
                              width: 35.81 * fem,
                              height: 35.81 * fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // likesTE (309:5756)
                      left: 16 * fem,
                      top: 334 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            16.85 * fem, 16.85 * fem, 16.85 * fem, 16.85 * fem),
                        width: 69.51 * fem,
                        height: 69.51 * fem,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/ui-kit/images/container-EJc.png',
                            ),
                          ),
                        ),
                        child: Center(
                          // likexDn (309:5758)
                          child: SizedBox(
                            width: 35.81 * fem,
                            height: 35.81 * fem,
                            child: Image.asset(
                              'assets/ui-kit/images/like-yAg.png',
                              width: 35.81 * fem,
                              height: 35.81 * fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // titlehBN (309:5759)
                margin:
                    EdgeInsets.fromLTRB(11 * fem, 0 * fem, 11 * fem, 83 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        // itsamatchjakeQrU (309:5761)
                        'It’s a match, Jake!',
                        textAlign: TextAlign.center,
                        style: AppTextStyle.buildSafeGoogleFont3470015primary(
                            fem, ffem)),
                    Text(
                      // startaconversationnowwitheacho (309:5760)
                      'Start a conversation now with each other',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Sk-Modernist',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0xb2000000),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // btncontinueeF2 (309:5762)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
                width: double.infinity,
                height: 56 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffe94057),
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                child: Center(
                  child: Text(
                    'Say hello',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Sk-Modernist',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              Container(
                // btncontinueG1W (309:5765)
                width: double.infinity,
                height: 56 * fem,
                decoration: BoxDecoration(
                  color: Color(0x19e94057),
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                child: Center(
                  child: Text(
                    'Keep swiping',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Sk-Modernist',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      color: Color(0xffe94057),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
