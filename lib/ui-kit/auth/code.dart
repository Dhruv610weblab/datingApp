import 'package:datingapp/ui-kit/profile/profile-details.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/validators.dart';
import 'package:datingapp/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:datingapp/units/utils.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class Code extends StatefulWidget {
  @override
  State<Code> createState() => _CodeState();
}

class _CodeState extends State<Code> {
  final pinController = TextEditingController();
  final List<String> pinList = <String>[];
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    Color focusedBorderColor = Color(0xffe94057);
    Color fillColor = Color.fromRGBO(243, 246, 249, 0);
    Color borderColor = Colors.grey;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // codeCdW (309:5287)
          padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          // decoration: BoxDecoration(
          //   color: Color(0xffffffff),
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupfen4hqA (QbJ2vR357VsDToD6NDfEN4)
                padding:
                    EdgeInsets.fromLTRB(40 * fem, 44 * fem, 40 * fem, 35 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // btnbackqRa (309:5330)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 243 * fem, 32 * fem),
                      child: Back(fem: fem),
                    ),
                    Container(
                      // timer552 (309:5327)
                      margin: EdgeInsets.fromLTRB(
                          49 * fem, 0 * fem, 49 * fem, 48 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // zBz (309:5329)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 8 * fem),
                            child: Text(
                              '00:42',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                          Container(
                            // typetheverificatioHwn (309:5328)
                            constraints: BoxConstraints(
                              maxWidth: 197 * fem,
                            ),
                            child: Text(
                              'Type the verification code we’ve sent you'.tr,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // inputsov8 (309:5315)
                      width: double.infinity,
                      height: 85 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Directionality(
                            // Specify direction if desired
                            textDirection: TextDirection.ltr,
                            child: Pinput(
                              controller: pinController,
                              focusNode: focusNode,
                              androidSmsAutofillMethod:
                                  AndroidSmsAutofillMethod.smsUserConsentApi,
                              listenForMultipleSmsOnAndroid: true,
                              defaultPinTheme: defaultPinTheme,
                              validator: Validators.otpValidator,
                              // validator: (value) {
                              //   return value == '2222'
                              //       ? null
                              //       : 'Pin is incorrect';
                              // },
                              onClipboardFound: (value) {
                                debugPrint('onClipboardFound: $value');
                                pinController.setText(value);
                              },
                              hapticFeedbackType:
                                  HapticFeedbackType.lightImpact,
                              onCompleted: (pin) {
                                debugPrint('onCompleted: $pin');
                              },
                              onChanged: (value) {
                                debugPrint('onChanged: $value');
                              },
                              cursor: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 9),
                                    width: 22,
                                    height: 1,
                                    color: focusedBorderColor,
                                  ),
                                ],
                              ),
                              focusedPinTheme: defaultPinTheme.copyWith(
                                decoration:
                                    defaultPinTheme.decoration!.copyWith(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: focusedBorderColor),
                                ),
                              ),
                              submittedPinTheme: defaultPinTheme.copyWith(
                                textStyle: SafeGoogleFont(
                                  'Sk-Modernist',
                                  fontSize: 34 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                                decoration:
                                    defaultPinTheme.decoration!.copyWith(
                                  color: Color(0xffe94057),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: focusedBorderColor),
                                ),
                              ),
                              errorPinTheme: defaultPinTheme.copyBorderWith(
                                border: Border.all(color: Colors.red),
                              ),
                            ),
                          ),
                          // Container(
                          //   // wmS (309:5324)
                          //   margin: EdgeInsets.fromLTRB(
                          //       0 * fem, 0 * fem, 9 * fem, 0 * fem),
                          //   width: 67 * fem,
                          //   height: double.infinity,
                          //   decoration: BoxDecoration(
                          //     color: Color(0xffe94057),
                          //     borderRadius: BorderRadius.circular(15 * fem),
                          //   ),
                          //   child: Center(
                          //     child: Text(
                          //       '8',
                          //       textAlign: TextAlign.center,
                          //       style: SafeGoogleFont(
                          //         'Sk-Modernist',
                          //         fontSize: 34 * ffem,
                          //         fontWeight: FontWeight.w700,
                          //         height: 1.5 * ffem / fem,
                          //         color: Color(0xffffffff),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //   // zUp (309:5321)
                          //   margin: EdgeInsets.fromLTRB(
                          //       0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          //   width: 67 * fem,
                          //   height: double.infinity,
                          //   decoration: BoxDecoration(
                          //     color: Color(0xffe94057),
                          //     borderRadius: BorderRadius.circular(15 * fem),
                          //   ),
                          //   child: Center(
                          //     child: Text(
                          //       '2',
                          //       textAlign: TextAlign.center,
                          //       style: SafeGoogleFont(
                          //         'Sk-Modernist',
                          //         fontSize: 34 * ffem,
                          //         fontWeight: FontWeight.w700,
                          //         height: 1.5 * ffem / fem,
                          //         color: Color(0xffffffff),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //   // r1E (309:5318)
                          //   margin: EdgeInsets.fromLTRB(
                          //       0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          //   width: 66 * fem,
                          //   height: double.infinity,
                          //   decoration: BoxDecoration(
                          //     border: Border.all(color: Color(0xffe94057)),
                          //     color: Color(0xffffffff),
                          //     borderRadius: BorderRadius.circular(15 * fem),
                          //   ),
                          //   child: Center(
                          //     child: Text(
                          //       '0',
                          //       textAlign: TextAlign.center,
                          //       style: SafeGoogleFont(
                          //         'Sk-Modernist',
                          //         fontSize: 34 * ffem,
                          //         fontWeight: FontWeight.w700,
                          //         height: 1.5 * ffem / fem,
                          //         color: Color(0xffe94057),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //   // autogrouprwgu7xk (QbJ35KwtUbhFwyMW9SRwGU)
                          //   width: 66 * fem,
                          //   height: double.infinity,
                          //   decoration: BoxDecoration(
                          //     border: Border.all(color: Color(0xffe8e6ea)),
                          //     color: Color(0xffffffff),
                          //     borderRadius: BorderRadius.circular(15 * fem),
                          //   ),
                          //   child: Center(
                          //     child: Text(
                          //       '0',
                          //       textAlign: TextAlign.center,
                          //       style: SafeGoogleFont(
                          //         'Sk-Modernist',
                          //         fontSize: 34 * ffem,
                          //         fontWeight: FontWeight.w700,
                          //         height: 1.5 * ffem / fem,
                          //         color: Color(0xffe8e6ea),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ClipRect(
                // keuboardBBv (309:5289)
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 54.3656349182 * fem,
                    sigmaY: 54.3656349182 * fem,
                  ),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 53 * fem),
                    padding: EdgeInsets.fromLTRB(
                        58.5 * fem, 0 * fem, 52 * fem, 16 * fem),
                    width: double.infinity,
                    // decoration: BoxDecoration(
                    //   color: Color(0xffffffff),
                    // ),
                    child: GridView.builder(
                        // padding: EdgeInsets.all(1),
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 12,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1.9 * fem,
                            crossAxisCount: 3,
                            crossAxisSpacing: 10 * fem,
                            mainAxisSpacing: 18 * fem),
                        itemBuilder: (context, index) {
                          if (index + 1 == 12) {
                            return Container(
                              // delete8Tr (309:5292)
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 3.99 * fem, 0 * fem, 0 * fem),
                              width: 24 * fem,
                              height: 17.99 * fem,
                              child: InkWell(
                                onTap: pinList.isEmpty
                                    ? () {}
                                    : () {
                                        setState(() {
                                          pinList.removeLast();
                                          pinController.text = pinList.join("");
                                        });
                                      },
                                child: Image.asset(
                                  'assets/ui-kit/images/delete.png',
                                  color: Get.isDarkMode == true
                                      ? AppColor.white
                                      : AppColor.black,
                                  width: 24 * fem,
                                  height: 17.99 * fem,
                                ),
                              ),
                            );
                          }
                          if (index + 1 == 10) {
                            return Container();
                          }

                          return TextButton(
                              onPressed: pinList.length < 4
                                  ? () {
                                      setState(() {
                                        pinList.add(
                                            '${index + 1 == 11 ? 0 : index + 1}');
                                        pinController.text = pinList.join("");
                                      });
                                    }
                                  : () {},
                              // qfn (309:5314)
                              child: Text(
                                index + 1 == 11 ? '0' : '${index + 1}',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyText2,
                              ));
                        }),
                  ),
                ),
              ),
              Container(
                // sendagainrek (309:5288)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 7 * fem, 0 * fem),
                child: TextButton(
                  onPressed: () {
                    Get.to(() => ProfileDetails());
                  },
                  child: Text('Send again'.tr,
                      style: SafeGoogleFont(
                        'Sk-Modernist',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffe94057),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
