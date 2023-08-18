import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/validators.dart';
import 'package:datingapp/widgets/app_bar.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/profile_editing_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/units/validators.dart';
import 'package:datingapp/widgets/check_theme.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/passion_widget.dart';
import 'package:datingapp/widgets/profile_editing_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:datingapp/units/utils.dart';

class WorkEducation extends StatefulWidget {
  const WorkEducation({super.key});

  @override
  State<WorkEducation> createState() => _WorkEducationState();
}

class _WorkEducationState extends State<WorkEducation> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: mainAppBar(context, title: Text('Work & Eductaion')),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
            margin: EdgeInsets.fromLTRB(18, 20, 18, 0),
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                      18 * fem, 0 * fem, 18 * fem, 10 * fem),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Education'.tr,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              useRootNavigator: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50 * fem),
                                topRight: Radius.circular(50 * fem),
                              )),
                              builder: (BuildContext context) {
                                return BottomSheetEducation(isEducation: true);
                              },
                            );
                          },
                          icon: Icon(
                            Icons.add_rounded,
                            color: AppColor.primary,
                          ))
                    ],
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Card(
                              child: Container(
                                  margin: EdgeInsets.all(10 * fem),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.start,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'College name: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5),
                                          TextSpan(
                                              text:
                                                  'College of Engineering, Pune',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4)
                                        ]),
                                      ),
                                      RichText(
                                        textAlign: TextAlign.start,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'Branch name: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5),
                                          TextSpan(
                                              text:
                                                  'Computer Science and Engineering',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4)
                                        ]),
                                      ),
                                      RichText(
                                        textAlign: TextAlign.start,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'Start date: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5),
                                          TextSpan(
                                              text: '2021-05-14',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4)
                                        ]),
                                      ),
                                      RichText(
                                        textAlign: TextAlign.start,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'End date: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5),
                                          TextSpan(
                                              text: '2023-05-14',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4)
                                        ]),
                                      )
                                      // Text(
                                      //   "College name: College of Engineering, Pune",
                                      //   style: Theme.of(context).textTheme.headline5,
                                      // )
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      );
                    }),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      18 * fem, 30 * fem, 18 * fem, 0 * fem),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Work'.tr,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              useRootNavigator: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50 * fem),
                                topRight: Radius.circular(50 * fem),
                              )),
                              builder: (BuildContext context) {
                                return BottomSheetEducation();
                              },
                            );
                          },
                          icon: Icon(
                            Icons.add_rounded,
                            color: AppColor.primary,
                          ))
                    ],
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Card(
                              child: Container(
                                  margin: EdgeInsets.all(10 * fem),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.start,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'Company name: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5),
                                          TextSpan(
                                              text: 'ITC',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4)
                                        ]),
                                      ),
                                      RichText(
                                        textAlign: TextAlign.start,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'Position: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5),
                                          TextSpan(
                                              text: 'Senior Data Analytic',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4)
                                        ]),
                                      ),
                                      RichText(
                                        textAlign: TextAlign.start,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'Start date: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5),
                                          TextSpan(
                                              text: '2021-05-14',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4)
                                        ]),
                                      ),
                                      RichText(
                                        textAlign: TextAlign.start,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'End date: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5),
                                          TextSpan(
                                              text: '2023-05-14',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4)
                                        ]),
                                      )
                                      // Text(
                                      //   "College name: College of Engineering, Pune",
                                      //   style: Theme.of(context).textTheme.headline5,
                                      // )
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      );
                    }),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 14 * fem, 0 * fem, 0 * fem),
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
                        // Get.to(() => GenderSelect());
                        debugPrint("Update");
                      },
                      text: 'Update'),
                ),
              ],
            )),
      ),
    );
  }
}

class BottomSheetEducation extends StatefulWidget {
  final bool isEducation;
  const BottomSheetEducation({super.key, this.isEducation = false});

  @override
  State<BottomSheetEducation> createState() => _BottomSheetEducationState();
}

class _BottomSheetEducationState extends State<BottomSheetEducation> {
  final collegeNameController = TextEditingController();
  final branchNameController = TextEditingController();
  final locationController = TextEditingController();
  final aboutController = TextEditingController();
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();
  // FocusNode nodeFirst = FocusNode();
  // FocusNode nodeLast = FocusNode();
  final _formKeyProfile = GlobalKey<FormState>();
  String _displayText(DateTime? date) {
    if (date != null) {
      return '${date.toString().split(' ')[0]}';
    } else {
      return 'Choose The Date';
    }
  }

  DateTime? startDate, endDate;

  Future<DateTime?> pickDate() async {
    return await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1999),
      lastDate: DateTime(2999),
    );
  }

  String? startDateValidator(value) {
    if (startDate == null) return "select the date";
  }

  String? endDateValidator(value) {
    if (startDate != null && endDate == null) {
      return "select Both data";
    }
    if (endDate == null) return "select the date";
    if (endDate!.isBefore(startDate!)) {
      return "End date must be after startDate";
    }

    return null; // optional while already return type is null
  }

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
      height: fem * 580,
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
                          child: Text(
                              widget.isEducation
                                  ? 'Add Education'.tr
                                  : 'Add Company'.tr,
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
                  Container(
                    // inputtextnonedXv (309:5269)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                    width: Get.width,
                    height: 67 * fem,
                    child: TextFormField(
                        controller: collegeNameController,
                        decoration: TFProfileDetail(context, ffem, fem,
                            lable: widget.isEducation
                                ? 'College name'
                                : 'Company name',
                            hint: widget.isEducation
                                ? 'Enter college name'
                                : 'Enter company name'),
                        validator: Validators.notEmpty),
                  ),
                  Container(
                    // inputtextnoneLjA (309:5263)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                    width: double.infinity,
                    height: 67 * fem,
                    child: TextFormField(
                        controller: branchNameController,
                        decoration: TFProfileDetail(context, ffem, fem,
                            lable: widget.isEducation
                                ? '''Branch name'''
                                : 'Designation',
                            hint: widget.isEducation
                                ? 'Enter branch name'
                                : 'Enter designation'),
                        validator: Validators.notEmpty),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        // inputtextnoneLjA (309:5263)

                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 10 * fem),
                          height: 67 * fem,
                          child: TextFormField(
                            controller: startDateController,
                            decoration: TFProfileDetail(context, ffem, fem,
                                lable: 'Start date', hint: 'Enter start date'),
                            onTap: () async {
                              startDate = await pickDate();
                              startDateController.text =
                                  _displayText(startDate);
                              setState(() {});
                            },
                            readOnly: true,
                            validator: startDateValidator,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10 * fem,
                      ),
                      Expanded(
                        // inputtextnoneLjA (309:5263)

                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 10 * fem),
                          height: 67 * fem,
                          child: TextFormField(
                            controller: endDateController,
                            decoration: TFProfileDetail(context, ffem, fem,
                                lable: 'End date', hint: 'Enter end date'),
                            onTap: () async {
                              endDate = await pickDate();
                              endDateController.text = _displayText(endDate);
                              setState(() {});
                            },
                            readOnly: true,
                            validator: startDateValidator,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    // inputtextnoneLjA (309:5263)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                    width: double.infinity,
                    height: 67 * fem,
                    child: TextFormField(
                        controller: locationController,
                        decoration: TFProfileDetail(context, ffem, fem,
                            lable: 'Address', hint: 'Enter address name'),
                        validator: Validators.notEmpty),
                  ),
                  // Container(
                  //   // inputtextnoneLjA (309:5263)
                  //   margin: EdgeInsets.fromLTRB(
                  //       0 * fem, 0 * fem, 0 * fem, 10 * fem),
                  //   width: double.infinity,
                  //   // height: 67 * fem,
                  //   child: TextFormField(
                  //       maxLines: 6,
                  //       controller: aboutController,
                  //       decoration: TFProfileDetail(context, ffem, fem,
                  //           lable: 'About', hint: 'Enter about yourself'),
                  //       validator: Validators.notEmpty),
                  // ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 40 * fem),
                    child: CommonButton(
                      ffem: ffem,
                      fem: fem,
                      onPress: () {},
                      text: 'Continue'.tr,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
