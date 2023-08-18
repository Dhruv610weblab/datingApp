import 'package:datingapp/units/colors.dart';
import 'package:datingapp/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:datingapp/units/utils.dart';

class Photos extends StatefulWidget {
  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  List gallery = [
    'assets/ui-kit/images/.png',
    'assets/ui-kit/images/photo-bg-Xha.png',
    'assets/ui-kit/images/photo-bg-Fon.png',
    'assets/ui-kit/images/.png',
    'assets/ui-kit/images/photo-bg-ofe.png'
  ];

  int isActive = 0;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      // backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        width: double.infinity,
        child: Container(
          // photofullsreentzk (309:5987)
          padding: EdgeInsets.fromLTRB(0 * fem, 44 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          // decoration: BoxDecoration(
          //   color: Color(0xffffffff),
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(
                      40 * fem, 0 * fem, 40 * fem, 24 * fem),
                  width: 52 * fem,
                  height: 52 * fem,
                  child: Back(
                    fem: fem,
                  )),
              Expanded(
                flex: 6,
                child: Image.asset(
                  gallery[isActive],
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20 * fem, right: 20 * fem),
                  child: ListView.builder(
                      itemCount: gallery.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: 14.0 * fem,
                            bottom: 16 * fem,
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isActive = index;
                              });
                            },
                            child: Container(
                              // photoNgx (309:5989)
                              margin: EdgeInsets.fromLTRB(
                                  2 * fem,
                                  isActive != index ? 6 * fem : 0 * fem,
                                  0 * fem,
                                  isActive != index ? 6 * fem : 0 * fem),
                              padding: EdgeInsets.all(2 * fem),
                              width: isActive != index ? 54 * fem : 64 * fem,
                              height: isActive != index ? 54 * fem : 64 * fem,

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10 * fem),
                                child: Image.asset(
                                  gallery[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
