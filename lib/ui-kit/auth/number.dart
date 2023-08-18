import 'package:country_code_picker/country_code_picker.dart';
import 'package:datingapp/ui-kit/auth/code.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/validators.dart';
import 'package:datingapp/widgets/check_theme.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/text_editing_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:datingapp/units/utils.dart';

class SignUpNumber extends StatefulWidget {
  @override
  State<SignUpNumber> createState() => _SignUpNumberState();
}

class _SignUpNumberState extends State<SignUpNumber> {
  String countCode = 'IN';
  TextEditingController phoneController = TextEditingController();
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
            // numberRLc (309:5109)
            padding:
                EdgeInsets.fromLTRB(40 * fem, 128 * fem, 40 * fem, 0 * fem),
            width: double.infinity,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // headerw44 (309:5118)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 25 * fem, 32 * fem),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // mymobileGc8 (309:5119)
                        'My mobile'.tr,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Container(
                        // pleaseenteryourvalidphonenumbe (309:5120)
                        constraints: BoxConstraints(
                          maxWidth: 270 * fem,
                        ),
                        child: Text(
                            'Please enter your valid phone number. We will send you a 4-digit code to verify your account.'
                                .tr,
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                    ],
                  ),
                ),
                Container(
                  // countryregionHGL (309:5111)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 64 * fem),
                  padding:
                      EdgeInsets.fromLTRB(2 * fem, 1 * fem, 2 * fem, 1 * fem),
                  width: double.infinity,
                  height: 58 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffe8e6ea)),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // usunitedstatesZUk (309:5114)
                        margin: EdgeInsets.fromLTRB(
                            8 * fem, 0 * fem, 8 * fem, 1 * fem),
                        width: 90 * fem,
                        height: 15 * fem,
                        child: SizedBox(
                          width: 30 * fem,
                          height: 21 * fem,
                          child: CountryCodePicker(
                            dialogBackgroundColor:
                                Theme.of(context).backgroundColor,

                            searchDecoration: InputDecoration(
                                prefixIconColor: AppColor.white,
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Theme.of(context).backgroundColor ==
                                                    Colors.black
                                                ? AppColor.white
                                                : AppColor.black))),

                            closeIcon: Icon(
                              Icons.close_rounded,
                              color: Theme.of(context).backgroundColor ==
                                      Colors.black
                                  ? AppColor.white
                                  : AppColor.black,
                            ),
                            onChanged: (CountryCode countryCode) {
                              setState(() =>
                                  countCode = countryCode.code.toString());
                              print("Selected country: ${countryCode.code}");
                            },
                            builder: (p0) => Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  p0!.flagUri!,
                                  package: 'country_code_picker',
                                  width: 30 * fem,
                                ),
                                SizedBox(
                                  width: 10 * fem,
                                ),
                                Text(
                                  p0.dialCode.toString(),
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont('Sk-Modernist',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      // color: Color(0xff323755),
                                      color: AppColor.black),
                                ),
                                // Container(
                                //     margin: EdgeInsets.fromLTRB(
                                //         0 * fem, 0 * fem, 0 * fem, 50 * fem),
                                //     child: Icon(Icons.keyboard_arrow_down))
                              ],
                            ),
                            enabled: true,
                            showDropDownButton: false,
                            showFlagDialog: true,
                            // showFlagMain: true,
                            // showOnlyCountryWhenClosed: true,
                            comparator: (a, b) => b.name!.compareTo(a.name!),
                            onInit: (code) => debugPrint(
                                "on init ${code!.name} ${code.dialCode} ${code.flagUri}"),
                            initialSelection: countCode,
                            favorite: ['+91', 'IN'],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 10 * fem, 0 * fem),
                        width: 1 * fem,
                        height: 18 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffe8e6ea),
                        ),
                      ),
                      Container(
                        height: 60 * fem,
                        width: 180 * fem,
                        // unitedstates1sGU (309:5117)
                        // margin: EdgeInsets.fromLTRB(
                        //     0 * fem, 0 * fem, 0 * fem, 3 * fem),
                        child: TextFormField(
                          controller: phoneController,
                          cursorColor: AppColor.primary,
                          validator: Validators.phoneValidator,
                          decoration: TfDesign().textFieldInputStyle(
                              hint: 'Enter your phone number'.tr),
                          style: SafeGoogleFont(
                            'Sk-Modernist',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CommonButton(
                    fem: fem,
                    ffem: ffem,
                    onPress: () {
                      Get.to(() => Code());
                      debugPrint("Continue".tr);
                    },
                    text: 'Continue'.tr),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
