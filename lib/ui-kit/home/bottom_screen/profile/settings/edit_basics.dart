import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/units/validators.dart';
import 'package:datingapp/widgets/app_bar.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/passion_widget.dart';
import 'package:datingapp/widgets/profile_editing_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasicInfoEdit extends StatefulWidget {
  const BasicInfoEdit({super.key});

  @override
  State<BasicInfoEdit> createState() => _BasicInfoEditState();
}

class _BasicInfoEditState extends State<BasicInfoEdit> {
  double _currentSliderValue = 120;
  double _ageSliderValue = 20;
  Map<String, dynamic>? selectedEthnicity;
  Map<String, dynamic>? selectedReligion;
  Map<String, dynamic>? selectedExercise;
  Map<String, dynamic>? selectedStar;
  Map<String, dynamic>? selectedDrinking;
  Map<String, dynamic>? selectedSmoking;
  List<Map<String, dynamic>> religionList = <Map<String, dynamic>>[
    {"name": "Hindu", "image": 'assets/ui-kit/hindu.png', "active": false},
    {"name": "Christian", "image": 'assets/ui-kit/church.png', "active": false},
    {"name": "Muslim", "image": 'assets/ui-kit/muslims.png', "active": false},
    {"name": "Sikh", "image": 'assets/ui-kit/sikh.png', "active": false},
    {"name": "Jewish", "image": 'assets/ui-kit/jewish.png', "active": false},
    {"name": "Other", "image": 'assets/ui-kit/religion.png', "active": false}
  ];
  List<Map<String, dynamic>> ethnicityList = <Map<String, dynamic>>[
    {'name': 'Indian'},
    {'name': 'Black'},
    {'name': 'White'},
    {'name': 'Asian'},
    {'name': 'American'},
    {'name': 'Hispanic'},
    {'name': 'Arabic'},
    {'name': 'Native'}
  ];
  List<Map<String, dynamic>> exerciseList = <Map<String, dynamic>>[
    {'name': 'Daily'},
    {'name': 'Weekly'},
    {'name': '5 days in a week'},
    {'name': 'On week end'},
    {'name': 'Rarely'},
    {'name': 'Almost never'},
  ];
  List<Map<String, dynamic>> starsList = <Map<String, dynamic>>[
    {'name': 'Aries'},
    {'name': 'Taurus'},
    {'name': 'Gemini'},
    {'name': 'Cancer'},
    {'name': 'Leo'},
    {'name': 'Virgo'},
    {'name': 'Libra'},
    {'name': 'Scorpio'},
    {'name': 'Sagittarius'},
    {'name': 'Capricorn'},
    {'name': 'Aquarius'},
    {'name': 'Pisces'},
  ];
  List<Map<String, dynamic>> drinkingSmokeList = <Map<String, dynamic>>[
    {'name': 'Daily'},
    {'name': 'Weekly'},
    {'name': 'Rarely'},
    {'name': 'Occasionally'},
    {'name': 'Almost never'},
  ];
  List<Map<String, dynamic>> selectedCoreValues = <Map<String, dynamic>>[];
  List<Map<String, dynamic>> coreValueList = <Map<String, dynamic>>[
    {'name': 'Faith', "active": false},
    {'name': 'Honesty/Integrity/Authenticity', "active": false},
    {'name': 'Family', "active": false},
    {'name': 'Loyalty/Tribal/Commitment', "active": false},
    {'name': 'Conservative', "active": false},
    {'name': 'Financially Responsible', "active": false},
    {'name': 'Big Heart', "active": false},
    {'name': 'Hard Work', "active": false},
    {'name': 'Physical wellbeing', "active": false},
  ];
  String? selectedKids;
  List kidsList = [
    'Have kids - want more',
    '''Have kids don't want more''',
    '''Don't have kids - want some''',
    '''Don't have kids - don't want'''
  ];

  int openTile = 0;
  @override
  void initState() {
    // TODO: implement initState
    selectedReligion = religionList[0];
    selectedEthnicity = ethnicityList[0];
    selectedExercise = exerciseList[0];
    selectedDrinking = drinkingSmokeList[0];
    selectedSmoking = drinkingSmokeList[0];
    selectedStar = starsList[0];
    selectedKids = kidsList[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: mainAppBar(context, title: Text('Edit Basic Info'.tr)),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          margin: EdgeInsets.fromLTRB(18, 20, 18, 0),
          width: double.infinity,
          child: Column(
            children: [
              ExpansionTile(
                onExpansionChanged: (onchange) {
                  setState(() => openTile = onchange ? 1 : 0);
                  print(openTile);
                },
                initiallyExpanded: openTile == 1 ? true : false,
                maintainState: openTile == 1 ? true : false,
                leading: Icon(
                  Icons.scale,
                  color: AppColor.primary,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Height'.tr,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text('${_currentSliderValue.toInt()} cm',
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                    child: Slider(
                      value: _currentSliderValue,
                      max: 250,
                      activeColor: AppColor.primary,
                      inactiveColor: AppColor.greyBorder,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                onExpansionChanged: (onchange) {
                  setState(() => openTile = onchange ? 2 : 0);
                  print(openTile);
                },
                initiallyExpanded: openTile == 2 ? true : false,
                maintainState: openTile == 2 ? true : false,
                leading: Icon(
                  Icons.height,
                  color: AppColor.primary,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Age'.tr,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text('${_ageSliderValue.toInt()}',
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                    child: Slider(
                      value: _ageSliderValue,
                      max: 100,
                      activeColor: AppColor.primary,
                      inactiveColor: AppColor.greyBorder,
                      label: _ageSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _ageSliderValue = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(
                  Icons.emoji_transportation,
                  color: AppColor.primary,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Ethnicity'.tr,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text('${selectedEthnicity?["name"]}',
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                children: [
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.8 * fem,
                          crossAxisCount: 2,
                          crossAxisSpacing: 12 * fem,
                          mainAxisSpacing: 12 * fem),
                      itemCount: ethnicityList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(
                                () => selectedEthnicity = ethnicityList[index]);
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                14.79 * fem, 12 * fem, 23 * fem, 12 * fem),
                            height: double.infinity,
                            decoration: ethnicityList[index] ==
                                    selectedEthnicity
                                ? PassionStyle.buildBoxDecorationActive(fem)
                                : PassionStyle.buildBoxDecorationDisable(fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Container(
                                //   margin: EdgeInsets.fromLTRB(0 * fem,
                                //       0 * fem, 8.79 * fem, 0 * fem),
                                //   width: 25.42 * fem,
                                //   height: 25.83 * fem,
                                //   child: Image.asset(
                                //     ethnicityList[index]["image"]
                                //         .toString(),
                                //     // width: 17.42 * fem,
                                //     // height: 15.83 * fem,
                                //     color: ethnicityList[index]
                                //                 ["active"] ==
                                //             true
                                //         ? AppColor.white
                                //         : AppColor.primary,
                                //   ),
                                // ),
                                Text(
                                  ethnicityList[index]["name"].toString(),
                                  style:
                                      ethnicityList[index] == selectedEthnicity
                                          ? AppTextStyle
                                              .buildSafeGoogleFont1470015white(
                                                  ffem, fem)
                                          : AppTextStyle
                                              .buildSafeGoogleFont1470015black(
                                                  ffem, fem),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
              ExpansionTile(
                leading: Icon(
                  Icons.front_hand_sharp,
                  color: AppColor.primary,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Religion'.tr,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text('${selectedReligion?["name"]}',
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                children: [
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.8 * fem,
                          crossAxisCount: 2,
                          crossAxisSpacing: 12 * fem,
                          mainAxisSpacing: 12 * fem),
                      itemCount: religionList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(
                                () => selectedReligion = religionList[index]);
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                14.79 * fem, 12 * fem, 23 * fem, 12 * fem),
                            height: double.infinity,
                            decoration: religionList[index] == selectedReligion
                                ? PassionStyle.buildBoxDecorationActive(fem)
                                : PassionStyle.buildBoxDecorationDisable(fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 8.79 * fem, 0 * fem),
                                  width: 25.42 * fem,
                                  height: 25.83 * fem,
                                  child: Image.asset(
                                    religionList[index]["image"].toString(),
                                    // width: 17.42 * fem,
                                    // height: 15.83 * fem,
                                    color:
                                        religionList[index] == selectedReligion
                                            ? AppColor.white
                                            : AppColor.primary,
                                  ),
                                ),
                                Text(
                                  religionList[index]["name"].toString(),
                                  style: religionList[index] == selectedReligion
                                      ? AppTextStyle
                                          .buildSafeGoogleFont1470015white(
                                              ffem, fem)
                                      : AppTextStyle
                                          .buildSafeGoogleFont1470015black(
                                              ffem, fem),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
              ExpansionTile(
                leading: Icon(
                  Icons.fitness_center,
                  color: AppColor.primary,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Exercise'.tr,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text('${selectedExercise?["name"]}',
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                children: [
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.8 * fem,
                          crossAxisCount: 2,
                          crossAxisSpacing: 12 * fem,
                          mainAxisSpacing: 12 * fem),
                      itemCount: exerciseList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(
                                () => selectedExercise = exerciseList[index]);
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                14.79 * fem, 12 * fem, 23 * fem, 12 * fem),
                            height: double.infinity,
                            decoration: exerciseList[index] == selectedExercise
                                ? PassionStyle.buildBoxDecorationActive(fem)
                                : PassionStyle.buildBoxDecorationDisable(fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  exerciseList[index]["name"].toString(),
                                  style: exerciseList[index] == selectedExercise
                                      ? AppTextStyle
                                          .buildSafeGoogleFont1470015white(
                                              ffem, fem)
                                      : AppTextStyle
                                          .buildSafeGoogleFont1470015black(
                                              ffem, fem),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
              ExpansionTile(
                leading: Icon(
                  Icons.smoking_rooms,
                  color: AppColor.primary,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Smoking'.tr,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text('${selectedSmoking?["name"]}',
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                children: [
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.8 * fem,
                          crossAxisCount: 2,
                          crossAxisSpacing: 12 * fem,
                          mainAxisSpacing: 12 * fem),
                      itemCount: drinkingSmokeList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() =>
                                selectedSmoking = drinkingSmokeList[index]);
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                14.79 * fem, 12 * fem, 23 * fem, 12 * fem),
                            height: double.infinity,
                            decoration: drinkingSmokeList[index] ==
                                    selectedSmoking
                                ? PassionStyle.buildBoxDecorationActive(fem)
                                : PassionStyle.buildBoxDecorationDisable(fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  drinkingSmokeList[index]["name"].toString(),
                                  style: drinkingSmokeList[index] ==
                                          selectedSmoking
                                      ? AppTextStyle
                                          .buildSafeGoogleFont1470015white(
                                              ffem, fem)
                                      : AppTextStyle
                                          .buildSafeGoogleFont1470015black(
                                              ffem, fem),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
              ExpansionTile(
                leading: Icon(
                  Icons.local_drink,
                  color: AppColor.primary,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Drinking'.tr,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text('${selectedDrinking?["name"]}',
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                children: [
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.8 * fem,
                          crossAxisCount: 2,
                          crossAxisSpacing: 12 * fem,
                          mainAxisSpacing: 12 * fem),
                      itemCount: drinkingSmokeList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() =>
                                selectedDrinking = drinkingSmokeList[index]);
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                14.79 * fem, 12 * fem, 23 * fem, 12 * fem),
                            height: double.infinity,
                            decoration: drinkingSmokeList[index] ==
                                    selectedDrinking
                                ? PassionStyle.buildBoxDecorationActive(fem)
                                : PassionStyle.buildBoxDecorationDisable(fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  drinkingSmokeList[index]["name"].toString(),
                                  style: drinkingSmokeList[index] ==
                                          selectedDrinking
                                      ? AppTextStyle
                                          .buildSafeGoogleFont1470015white(
                                              ffem, fem)
                                      : AppTextStyle
                                          .buildSafeGoogleFont1470015black(
                                              ffem, fem),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
              ExpansionTile(
                leading: Icon(
                  Icons.star,
                  color: AppColor.primary,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Star sign'.tr,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text('${selectedStar?["name"]}',
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                children: [
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.8 * fem,
                          crossAxisCount: 2,
                          crossAxisSpacing: 12 * fem,
                          mainAxisSpacing: 12 * fem),
                      itemCount: starsList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() => selectedStar = starsList[index]);
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                14.79 * fem, 12 * fem, 23 * fem, 12 * fem),
                            height: double.infinity,
                            decoration: starsList[index] == selectedStar
                                ? PassionStyle.buildBoxDecorationActive(fem)
                                : PassionStyle.buildBoxDecorationDisable(fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  starsList[index]["name"].toString(),
                                  style: starsList[index] == selectedStar
                                      ? AppTextStyle
                                          .buildSafeGoogleFont1470015white(
                                              ffem, fem)
                                      : AppTextStyle
                                          .buildSafeGoogleFont1470015black(
                                              ffem, fem),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
              ExpansionTile(
                leading: Icon(
                  Icons.center_focus_strong,
                  color: AppColor.primary,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Core values'.tr,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    // Text('${selectedStar?["name"]}',
                    //     textAlign: TextAlign.left,
                    //     style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                children: [
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      shrinkWrap: true,
                      itemCount: coreValueList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.4 * fem,
                          crossAxisCount: 2,
                          crossAxisSpacing: 12 * fem,
                          mainAxisSpacing: 12 * fem),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (selectedCoreValues.length <= 6 &&
                                  coreValueList[index]["active"] == false) {
                                coreValueList[index]["active"] = true;
                                selectedCoreValues.add(coreValueList[index]);
                              } else {
                                coreValueList[index]["active"] = false;
                                selectedCoreValues.remove(coreValueList[index]);
                              }
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                14.79 * fem, 12 * fem, 23 * fem, 12 * fem),
                            height: double.infinity,
                            decoration: coreValueList[index]["active"] == true
                                ? PassionStyle.buildBoxDecorationActive(fem)
                                : PassionStyle.buildBoxDecorationDisable(fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Container(
                                //   margin: EdgeInsets.fromLTRB(0 * fem,
                                //       0 * fem, 8.79 * fem, 0 * fem),
                                //   width: 25.42 * fem,
                                //   height: 25.83 * fem,
                                //   child: Image.asset(
                                //     religionList[index]["image"]
                                //         .toString(),
                                //     // width: 17.42 * fem,
                                //     // height: 15.83 * fem,
                                //     color: religionList[index]
                                //                 ["active"] ==
                                //             true
                                //         ? AppColor.white
                                //         : AppColor.primary,
                                //   ),
                                // ),
                                Expanded(
                                  child: Text(
                                    coreValueList[index]["name"].toString(),
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: coreValueList[index]["active"] ==
                                            true
                                        ? AppTextStyle
                                            .buildSafeGoogleFont1470015white(
                                                ffem, fem)
                                        : AppTextStyle
                                            .buildSafeGoogleFont1470015black(
                                                ffem, fem),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
              ExpansionTile(
                leading: Icon(
                  Icons.child_care,
                  color: AppColor.primary,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Kids'.tr,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text('${selectedKids}',
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: kidsList.length,
                      itemBuilder: (context, index) {
                        return Container(
                            // height: 58 * fem,
                            margin: EdgeInsets.fromLTRB(
                              0,
                              0,
                              0,
                              10 * fem,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffe8e6ea)),
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(15 * fem),
                            ),
                            child: Column(
                              children: [
                                RadioListTile(
                                    value: kidsList[index],
                                    title: Text(kidsList[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    groupValue: selectedKids,
                                    onChanged: (change) {
                                      setState(() {
                                        selectedKids = kidsList[index];
                                      });
                                    }),
                              ],
                            ));
                      })
                ],
              ),
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
                    text: 'Update'.tr),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
