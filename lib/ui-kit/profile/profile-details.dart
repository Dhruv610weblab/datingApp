import 'package:datingapp/ui-kit/permission/i-am.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/units/validators.dart';
import 'package:datingapp/widgets/calender_botton_sheet.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/profile_editing_field.dart';
import 'package:datingapp/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:datingapp/units/utils.dart';

class ProfileDetails extends StatefulWidget {
  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  FocusNode nodeFirst = FocusNode();
  FocusNode nodeLast = FocusNode();
  final _formKeyProfile = GlobalKey<FormState>();

  void formatFirstNickname() {
    firstnameController.text = firstnameController.text.replaceAll(" ", "");
  }

  void formatLstNickname() {
    lastnameController.text = lastnameController.text.replaceAll(" ", "");
  }

  @override
  void initState() {
    nodeFirst.addListener(() {
      if (!nodeFirst.hasFocus) {
        formatFirstNickname();
      }
    });
    nodeLast.addListener(() {
      if (!nodeLast.hasFocus) {
        formatLstNickname();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // profiledetailsePA (309:5243)
            padding:
                EdgeInsets.fromLTRB(40 * fem, 44 * fem, 40 * fem, 48 * fem),
            width: double.infinity,
            // decoration: BoxDecoration(
            //   color: Color(0xffffffff),
            // ),
            child: Form(
              key: _formKeyProfile,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  // Row(
                  //   mainAxisSize: MainAxisSize.max,
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  // Container(
                  //   // skipKkC (309:5286)
                  //   margin: EdgeInsets.fromLTRB(
                  //       0 * fem, 0 * fem, 0 * fem, 36 * fem),
                  //   child: Skip(
                  //       fem: fem,
                  //       ffem: ffem,
                  //       onPress: () {
                  //         Get.to(() => GenderSelect());
                  //       }),
                  // ),
                  //   ],
                  // ),
                  Container(
                    // profiledetailsD4t (309:5285)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 86 * fem, 81 * fem),
                    child: Text(
                      'Profile details'.tr,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Container(
                    // facegz4 (309:5274)
                    margin: EdgeInsets.fromLTRB(
                        97 * fem, 0 * fem, 97 * fem, 37 * fem),
                    width: double.infinity,
                    height: 106 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // photo2Y8 (309:5275)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 99 * fem,
                              height: 99 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25 * fem),
                                child: Image.asset(
                                  'assets/ui-kit/images/photo.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // cameraLYp (309:5276)
                          left: 67 * fem,
                          top: 72 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 34 * fem,
                              height: 34 * fem,
                              child: Image.asset(
                                'assets/ui-kit/images/camera.png',
                                width: 34 * fem,
                                height: 34 * fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // inputtextnonedXv (309:5269)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                    width: double.infinity,
                    height: 67 * fem,
                    child: TextFormField(
                        focusNode: nodeFirst,
                        controller: firstnameController,
                        decoration: TFProfileDetail(context, ffem, fem,
                            lable: 'First name'.tr,
                            hint: 'Enter first name'.tr),
                        validator: Validators.notEmpty),
                  ),
                  Container(
                    // inputtextnoneLjA (309:5263)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                    width: double.infinity,
                    height: 67 * fem,
                    child: TextFormField(
                        focusNode: nodeLast,
                        controller: lastnameController,
                        decoration: TFProfileDetail(context, ffem, fem,
                            lable: 'Last name'.tr, hint: 'Enter last name'.tr),
                        validator: Validators.notEmpty),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50 * fem),
                          topRight: Radius.circular(50 * fem),
                        )),
                        builder: (BuildContext context) {
                          return BottomSheetCalendar();
                        },
                      );
                    },
                    child: Container(
                      // inputcalendar3Qc (309:5247)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 88 * fem),
                      padding: EdgeInsets.fromLTRB(
                          20 * fem, 19 * fem, 105.5 * fem, 19 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x19e94057),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // iconcalendarkK2 (309:5250)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 19.5 * fem, 0 * fem),
                            width: 18 * fem,
                            height: 20 * fem,
                            child: Image.asset(
                              'assets/ui-kit/images/icon-calendar.png',
                              width: 18 * fem,
                              height: 20 * fem,
                            ),
                          ),
                          Text(
                            // Fma (309:5249)
                            'Choose birthday date'.tr,
                            style: SafeGoogleFont(
                              'Sk-Modernist',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2575 * ffem / fem,
                              color: AppColor.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14 * fem,
                  ),
                  Container(
                    // btncontinueRUC (309:5155)
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
                          Get.to(() => GenderSelect());
                          debugPrint("Confirm".tr);
                        },
                        text: 'Confirm'.tr),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
