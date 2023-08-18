import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/validators.dart';
import 'package:datingapp/widgets/app_bar.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/profile_editing_field.dart';
import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final locationController = TextEditingController();
  final aboutController = TextEditingController();
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
    return Scaffold(
      appBar: mainAppBar(context, title: Text('Edit Profile')),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
            margin: EdgeInsets.fromLTRB(18, 20, 18, 0),
            width: double.infinity,
            child: Column(
              children: [
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
                        left: 72 * fem,
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
                          lable: 'First name', hint: 'Enter first name'),
                      validator: Validators.notEmpty),
                ),
                Container(
                  // inputtextnoneLjA (309:5263)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                  width: double.infinity,
                  height: 67 * fem,
                  child: TextFormField(
                      focusNode: nodeLast,
                      controller: lastnameController,
                      decoration: TFProfileDetail(context, ffem, fem,
                          lable: 'Last name', hint: 'Enter last name'),
                      validator: Validators.notEmpty),
                ),
                Container(
                  // inputtextnoneLjA (309:5263)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                  width: double.infinity,
                  height: 67 * fem,
                  child: TextFormField(
                      controller: locationController,
                      decoration: TFProfileDetail(context, ffem, fem,
                          lable: 'Location', hint: 'Enter address name'),
                      validator: Validators.notEmpty),
                ),
                Container(
                  // inputtextnoneLjA (309:5263)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                  width: double.infinity,
                  // height: 67 * fem,
                  child: TextFormField(
                      maxLines: 6,
                      controller: aboutController,
                      decoration: TFProfileDetail(context, ffem, fem,
                          lable: 'About', hint: 'Enter about yourself'),
                      validator: Validators.notEmpty),
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
                      text: 'Update'),
                ),
              ],
            )),
      ),
    );
  }
}
