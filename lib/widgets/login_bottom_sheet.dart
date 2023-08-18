import 'package:datingapp/ui-kit/auth/number.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/units/validators.dart';
import 'package:datingapp/widgets/check_theme.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/profile_editing_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:datingapp/units/utils.dart';

class BottomSheetSignup extends StatefulWidget {
  @override
  State<BottomSheetSignup> createState() => _BottomSheetSignupState();
}

class _BottomSheetSignupState extends State<BottomSheetSignup> {
  double _currentSliderValue = 20;

  int isActive = 1;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          border: Border.all(color: AppColor.white, width: 0.2),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(52), topLeft: Radius.circular(52))),
      width: double.infinity,
      height: fem * 300,
      child: Stack(
        children: [
          Positioned(
            left: 174 * fem,
            top: 10 * fem,
            child: Align(
              child: SizedBox(
                width: 27 * fem,
                height: 12.06 * fem,
                child: Image.asset(
                  'assets/ui-kit/images/indicator-hRS.png',
                  width: 27 * fem,
                  height: 12.06 * fem,
                ),
              ),
            ),
          ),
          Align(
            child: Container(
              width: 295 * fem,
              margin: EdgeInsets.fromLTRB(0 * fem, 40 * fem, 0 * fem, 0 * fem),
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 76.5 * fem, 0 * fem),
                          child: Text('Sign Up'.tr,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline6),
                        ),
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 6 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'Close'.tr,
                              textAlign: TextAlign.right,
                              style: SafeGoogleFont(
                                'Sk-Modernist',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
                                color: AppColor.primary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.fromLTRB(
                  //       0 * fem, 0 * fem, 0 * fem, 40 * fem),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Container(
                  //         margin: EdgeInsets.fromLTRB(
                  //             0 * fem, 0 * fem, 0 * fem, 40 * fem),
                  //         child: Text('Interested in'.tr,
                  //             style: Theme.of(context).textTheme.headline5),
                  //       ),
                  //       Container(
                  //         height: 58 * fem,
                  //         decoration: BoxDecoration(
                  //           border: Border.all(
                  //               color: Theme.of(context).backgroundColor ==
                  //                       Colors.black
                  //                   ? AppColor.black
                  //                   : Color(0xffe8e6ea)),
                  //           color: Color(0xffffffff),
                  //           borderRadius: BorderRadius.circular(16 * fem),
                  //         ),
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           crossAxisAlignment: CrossAxisAlignment.center,
                  //           children: [
                  //             Expanded(
                  //               flex: 1,
                  //               child: InkWell(
                  //                 onTap: () {
                  //                   setState(() {
                  //                     isActive = 1;
                  //                   });
                  //                 },
                  //                 child: Container(
                  //                   margin: EdgeInsets.fromLTRB(
                  //                       0 * fem, 0 * fem, 0 * fem, 0 * fem),
                  //                   height: double.infinity,
                  //                   decoration: BoxDecoration(
                  //                     color: isActive == 1
                  //                         ? AppColor.primary
                  //                         : AppColor.white,
                  //                     borderRadius: BorderRadius.only(
                  //                       topLeft: Radius.circular(15 * fem),
                  //                       bottomLeft: Radius.circular(15 * fem),
                  //                     ),
                  //                   ),
                  //                   child: Center(
                  //                     child: Text('Male'.tr,
                  //                         textAlign: TextAlign.center,
                  //                         style: isActive == 1
                  //                             ? AppTextStyle
                  //                                 .buildSafeGoogleFont1470015white(
                  //                                     ffem, fem)
                  //                             : AppTextStyle
                  //                                 .buildSafeGoogleFont1470015black(
                  //                                     fem, ffem)),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //             Container(
                  //               width: 1 * fem,
                  //               height: 22 * fem,
                  //               decoration: BoxDecoration(
                  //                 color: Color(0xffe8e6ea),
                  //               ),
                  //             ),
                  //             Expanded(
                  //               flex: 1,
                  //               child: InkWell(
                  //                 onTap: () {
                  //                   setState(() {
                  //                     isActive = 2;
                  //                   });
                  //                 },
                  //                 child: Container(
                  //                   margin: EdgeInsets.fromLTRB(
                  //                       0 * fem, 0 * fem, 0 * fem, 0 * fem),
                  //                   height: double.infinity,
                  //                   decoration: BoxDecoration(
                  //                     color: isActive == 2
                  //                         ? AppColor.primary
                  //                         : AppColor.white,
                  //                   ),
                  //                   child: Center(
                  //                     child: Text(
                  //                       'Female'.tr,
                  //                       textAlign: TextAlign.center,
                  //                       style: isActive == 2
                  //                           ? AppTextStyle
                  //                               .buildSafeGoogleFont1470015white(
                  //                                   ffem, fem)
                  //                           : AppTextStyle
                  //                               .buildSafeGoogleFont1470015black(
                  //                                   fem, ffem),
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //             Container(
                  //               width: 1 * fem,
                  //               height: 22 * fem,
                  //               decoration: BoxDecoration(
                  //                 color: Color(0xffe8e6ea),
                  //               ),
                  //             ),
                  //             Expanded(
                  //               flex: 1,
                  //               child: InkWell(
                  //                 onTap: () {
                  //                   setState(() {
                  //                     isActive = 3;
                  //                   });
                  //                 },
                  //                 child: Container(
                  //                   margin: EdgeInsets.fromLTRB(
                  //                       0 * fem, 0 * fem, 0 * fem, 0 * fem),
                  //                   height: double.infinity,
                  //                   decoration: BoxDecoration(
                  //                     color: isActive == 3
                  //                         ? AppColor.primary
                  //                         : AppColor.white,
                  //                     borderRadius: BorderRadius.only(
                  //                       topRight: Radius.circular(15 * fem),
                  //                       bottomRight: Radius.circular(15 * fem),
                  //                     ),
                  //                   ),
                  //                   child: Center(
                  //                     child: Text(
                  //                       'Both'.tr,
                  //                       textAlign: TextAlign.center,
                  //                       style: isActive == 3
                  //                           ? AppTextStyle
                  //                               .buildSafeGoogleFont1470015white(
                  //                                   ffem, fem)
                  //                           : AppTextStyle
                  //                               .buildSafeGoogleFont1470015black(
                  //                                   fem, ffem),
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   margin: EdgeInsets.fromLTRB(
                  //       0 * fem, 0 * fem, 0 * fem, 40 * fem),
                  //   child: TextFormField(
                  //       initialValue: 'Chicago, USA',
                  //       style: SafeGoogleFont(
                  //         'Sk-Modernist',
                  //         fontSize: 14 * ffem,
                  //         fontWeight: FontWeight.w700,
                  //         height: 1.5 * ffem / fem,
                  //         color: AppColor.black,
                  //       ),
                  //       decoration: TFProfileDetail(context, ffem, fem,
                  //           lable: 'Location'.tr, hint: 'Location'.tr),
                  //       validator: Validators.notEmpty),
                  // ),
                  // Container(
                  //   margin: EdgeInsets.fromLTRB(
                  //       0 * fem, 0 * fem, 0 * fem, 20 * fem),
                  //   width: double.infinity,
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     crossAxisAlignment: CrossAxisAlignment.end,
                  //     children: [
                  //       Text('Distance'.tr,
                  //           style: Theme.of(context).textTheme.headline5),
                  //       Text('${_currentSliderValue.toInt()} km',
                  //           textAlign: TextAlign.right,
                  //           style: Theme.of(context).textTheme.bodyText1),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   margin: EdgeInsets.fromLTRB(
                  //       0 * fem, 0 * fem, 0 * fem, 20 * fem),
                  //   child: Slider(
                  //     value: _currentSliderValue,
                  //     max: 100,
                  //     activeColor: AppColor.primary,
                  //     inactiveColor: AppColor.greyBorder,
                  //     label: _currentSliderValue.round().toString(),
                  //     onChanged: (double value) {
                  //       setState(() {
                  //         _currentSliderValue = value;
                  //       });
                  //     },
                  //   ),
                  // ),
                  // Container(
                  //   margin: EdgeInsets.fromLTRB(
                  //       0 * fem, 0 * fem, 0 * fem, 20 * fem),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     mainAxisSize: MainAxisSize.max,
                  //     crossAxisAlignment: CrossAxisAlignment.end,
                  //     children: [
                  //       Text('Age'.tr,
                  //           style: Theme.of(context).textTheme.headline5),
                  //       Text('${values.start.toInt()}-${values.end.toInt()}',
                  //           textAlign: TextAlign.right,
                  //           style: Theme.of(context).textTheme.bodyText1),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   margin: EdgeInsets.fromLTRB(
                  //       0 * fem, 0 * fem, 0 * fem, 40 * fem),
                  //   child: RangeSlider(
                  //       activeColor: AppColor.primary,
                  //       inactiveColor: AppColor.greyBorder,
                  //       min: 18,
                  //       max: 108,
                  //       values: values,
                  //       labels: labels,
                  //       onChanged: (value) {
                  //         print('START: ${value.start}, End: ${value.end}');
                  //         setState(() {
                  //           values = value;
                  //           labels = RangeLabels(
                  //               '${value.start.toInt().toString()}',
                  //               '${value.end.toInt().toString()}');
                  //         });
                  //       }),
                  // ),
                  Container(
                    // btncontinuewithemailjXn (309:5067)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                    width: double.infinity,
                    height: 56 * fem,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    child: CommonButton(
                        fem: fem,
                        ffem: ffem,
                        onPress: () {
                          debugPrint("Continue with email");
                        },
                        text: 'Continue with email'.tr),
                  ),
                  Container(
                    // btnusephonenumberQP2 (309:5070)
                    width: double.infinity,
                    height: 56 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xfff3f3f3)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    child: CommonButton(
                        isColorReplace: true,
                        fem: fem,
                        ffem: ffem,
                        onPress: () {
                          Get.to(() => SignUpNumber());
                          debugPrint("Use phone number");
                        },
                        text: 'Use phone number'.tr),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
