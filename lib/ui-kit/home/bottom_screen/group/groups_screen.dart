import 'package:datingapp/ui-kit/home/bottom_screen/group/group_open_message.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/units/validators.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/profile_editing_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List yourRoomList = ["Financial Input", "Honest Advice", "Secrets & Regrets"];
List roomList = [
  "Single Parents",
  "In a rut",
  "Nerds",
  "Shy Introverts",
  "Addiction Recovery",
  "Happy Places",
  "GOD & Politics",
  "Physically Challenged",
  "Senior 65+",
  "Alpha Male",
  "Sadness & Lonely",
  "Beta Female",
  "General",
  "Entrepreneurial"
];

class Groups extends StatelessWidget {
  const Groups({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // headerRuS (309:5477)
                    margin: EdgeInsets.fromLTRB(
                        (18) * fem, 10 * fem, 18 * fem, 10 * fem),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'Rooms'.tr,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ),
                        // Filter(fem: fem, onPress: () {}),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(
                            (18) * fem, 0 * fem, 18 * fem, 0 * fem),
                        child: Text('Created by you',
                            style: Theme.of(context).textTheme.headline6)),
                    GridView.builder(
                        padding: EdgeInsets.fromLTRB(
                            18 * fem, 10 * fem, 18 * fem, 20 * fem),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 2.8 * fem,
                            crossAxisCount: 2,
                            crossAxisSpacing: 8 * fem,
                            mainAxisSpacing: 8 * fem),
                        itemCount: yourRoomList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => Get.to(() =>
                                GroupsOpenMessages(title: yourRoomList[index])),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColor()
                                      .getRandomColor()
                                      .withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  yourRoomList[index],
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                            ),
                          );
                        }),
                    Container(
                        padding: EdgeInsets.fromLTRB(
                            18 * fem, 10 * fem, 18 * fem, 0 * fem),
                        child: Text(
                          'Rooms',
                          style: Theme.of(context).textTheme.headline6,
                        )),
                    GridView.builder(
                        padding: EdgeInsets.fromLTRB(
                          18 * fem,
                          10 * fem,
                          18 * fem,
                          20 * fem,
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 2.8 * fem,
                            crossAxisCount: 2,
                            crossAxisSpacing: 8 * fem,
                            mainAxisSpacing: 8 * fem),
                        itemCount: roomList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => Get.to(() =>
                                GroupsOpenMessages(title: roomList[index])),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColor()
                                      .getRandomColor()
                                      .withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  roomList[index],
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        isExtended: true,
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
              return BottomSheetNotification();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class BottomSheetNotification extends StatefulWidget {
  @override
  State<BottomSheetNotification> createState() =>
      _BottomSheetNotificationState();
}

class _BottomSheetNotificationState extends State<BottomSheetNotification> {
  double _currentSliderValue = 20;
  RangeLabels labels = const RangeLabels('18', '108');
  RangeValues values = const RangeValues(18, 108);

  List<Map<String, dynamic>> interestedIn = <Map<String, dynamic>>[
    {"gender": "Male", "active": true},
    {"gender": "Female", "active": false},
    {"gender": "Both", "active": false}
  ];
  int isActive = 1;
  final roomController = TextEditingController();
  final descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor == Colors.black
              ? AppColor.black
              : AppColor.white,
          border: Border.all(color: AppColor.white, width: 0.2),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(52), topLeft: Radius.circular(52))),
      width: double.infinity,
      height: fem * 640,
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
                          child: Text('Add Room'.tr,
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
                              style: AppTextStyle
                                  .buildSafeGoogleFont1670015primary(ffem, fem),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 5 * fem),
                          child: Text('Create room'.tr,
                              style: Theme.of(context).textTheme.headline5),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 30 * fem),
                          child: Text(
                              '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.''',
                              style: Theme.of(context).textTheme.subtitle1),
                        ),
                        Container(
                          // inputtextnoneLjA (309:5263)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 10 * fem),
                          width: double.infinity,
                          height: 67 * fem,
                          child: TextFormField(
                              controller: roomController,
                              decoration: TFProfileDetail(context, ffem, fem,
                                  lable: 'Title', hint: 'Enter title'),
                              validator: Validators.notEmpty),
                        ),
                        Container(
                          // inputtextnoneLjA (309:5263)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 10 * fem),
                          width: double.infinity,
                          // height: 67 * fem,
                          child: TextFormField(
                              maxLines: 6,
                              controller: descriptionController,
                              decoration: TFProfileDetail(context, ffem, fem,
                                  lable: 'Description',
                                  hint: 'Enter about room'),
                              validator: Validators.notEmpty),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 40 * fem, 0, 40 * fem),
                          child: CommonButton(
                            ffem: ffem,
                            fem: fem,
                            onPress: () {},
                            text: 'Continue'.tr,
                          ),
                        ),
                      ],
                    ),
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
