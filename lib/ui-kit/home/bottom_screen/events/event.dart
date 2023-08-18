import 'package:datingapp/ui-kit/home/bottom_screen/events/event_detail.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/widgets/message_chat_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            // decoration: BoxDecoration(
            //   color: Color(0xffffffff),
            // ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // headerRuS (309:5477)
                  margin:
                      EdgeInsets.fromLTRB(18 * fem, 0 * fem, 18 * fem, 0 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // messagesYjA (309:5485)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 97 * fem, 0 * fem),
                              child: Text(
                                'Events'.tr,
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                            // Text(
                            //   'Chicago, II',
                            //   textAlign: TextAlign.center,
                            //   style:
                            //       Theme.of(context).textTheme.subtitle1,
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  // padding:
                  //     EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                  // width: double.infinity,
                  child: Column(
                    // shrinkWrap: true,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 255 * fem,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.fromLTRB(
                                    18 * fem, 18 * fem, 0 * fem, 18 * fem),
                                child: Container(
                                  height: 270 * fem,
                                  width: 220 * fem,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade300,
                                          offset: Offset(0.0, 3.0), //(x,y)
                                          blurRadius: 6.0,
                                        ),
                                      ],
                                      color: AppColor.secondWhite,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Padding(
                                    padding: EdgeInsets.all(18),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 88 * fem,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: AppColor.primary,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              'assets/events/e2.jpeg',
                                              width: double.infinity,
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text('14 Dec, 2016',
                                              style: AppTextStyle
                                                  .buildSafeGoogleFont1470015primary(
                                                      ffem, fem)),
                                        ),
                                        Text(
                                            'International Gala Music Festival',
                                            style: AppTextStyle
                                                .buildSafeGoogleFont16600black(
                                                    ffem, fem)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 2.0),
                                              child: Icon(
                                                Icons.pin_drop_outlined,
                                                size: 18 * fem,
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Convention, Old city',
                                                style: AppTextStyle
                                                    .buildSafeGoogleFont1440015subtitle(
                                                        ffem, fem),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB((34.5 + 5.5) * fem,
                                  0 * fem, 40 * fem, 10 * fem),
                              child: Text(
                                'Upcoming Events'.tr,
                                style: Theme.of(context).textTheme.headline3,
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 6,
                                padding: EdgeInsets.fromLTRB(
                                    18 * fem, 0 * fem, 18 * fem, 0 * fem),
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: InkWell(
                                        onTap: () =>
                                            Get.to(() => EventDetail()),
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 18.0),
                                                child: Container(
                                                    width: 60 * fem,
                                                    height: 70 * fem,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      child: Image.asset(
                                                        'assets/events/e1.jpeg',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    )),
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('14 Dec, 2019',
                                                      style: AppTextStyle
                                                          .buildSafeGoogleFont1470015primary(
                                                              ffem, fem)),
                                                  Text('Bussiness Seminar',
                                                      style: AppTextStyle
                                                          .buildSafeGoogleFont16600black(
                                                              ffem, fem)),
                                                  Text(
                                                    'Convention, Old city',
                                                    style: AppTextStyle
                                                        .buildSafeGoogleFont1440015subtitle(
                                                            ffem, fem),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ));
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
