import 'package:carousel_slider/carousel_slider.dart';
import 'package:datingapp/ui-kit/auth/sign-up.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/utils.dart';
import 'package:datingapp/widgets/common_button.dart';
import 'package:datingapp/widgets/login_bottom_sheet.dart';
import 'package:datingapp/widgets/login_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatefulWidget {
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final CarouselController _controller = CarouselController();
  final CarouselController _controllerText = CarouselController();
  int activeIndex = 0;

  List imgList = [
    'assets/ui-kit/images/girl1-bg.png',
    'assets/ui-kit/images/girl2-bg-ayn.png',
    'assets/ui-kit/images/girl3-bg.png'
  ];
  List iconImage = [
    'assets/ui-kit/images/icons-logo-facebook.png',
    'assets/ui-kit/images/icons-logo-google.png',
    'assets/ui-kit/images/icons-logo-apple.png'
  ];
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(0 * fem, 80 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  // photodzG (96:8)
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  child: CarouselSlider.builder(
                    carouselController: _controller,
                    options: CarouselOptions(
                      autoPlayInterval: Duration(milliseconds: 5000),
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal,
                      initialPage: activeIndex,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                          _controllerText.jumpToPage(index);
                        });
                      },
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: .6,
                      aspectRatio: 1.4,
                      animateToClosest: true,
                      reverse: false,
                    ),
                    itemCount: imgList.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        Container(
                      // girl1YrL (96:11)
                      width: 200 * fem,
                      height: 300 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15 * fem),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            imgList[itemIndex],
                          ),
                        ),
                      ),
                    ),
                  )),
              Container(
                // autogrouphuuaqU4 (QbHvdM2NLDNBvH3b6NHuua)
                padding:
                    EdgeInsets.fromLTRB(40 * fem, 20 * fem, 40 * fem, 33 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CarouselSlider.builder(
                      carouselController: _controllerText,
                      options: CarouselOptions(
                          enableInfiniteScroll: true,
                          scrollDirection: Axis.horizontal,
                          initialPage: activeIndex,
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex = index;
                              _controller.jumpToPage(index);
                            });
                          },
                          autoPlay: false,
                          enlargeCenterPage: false,
                          reverse: false,
                          animateToClosest: true,
                          scrollPhysics: BouncingScrollPhysics(),
                          viewportFraction: 1,
                          aspectRatio: 1.4,
                          height: Get.height / 7 * fem),
                      itemCount: imgList.length,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Container(
                        // contentAmE (96:5)
                        margin: EdgeInsets.fromLTRB(
                            9.5 * fem, 0 * fem, 9.5 * fem, 0 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // algorithmhmA (96:7)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 10 * fem),
                              child: Text(
                                itemIndex == 0
                                    ? 'Algorithm'.tr
                                    : itemIndex == 1
                                        ? 'Matches'.tr
                                        : 'Premium'.tr,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ),
                            Container(
                              // usersgoingthroughavettingproce (96:6)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 30 * fem),
                              constraints: BoxConstraints(
                                maxWidth: 276 * fem,
                              ),
                              child: Text(
                                itemIndex == 0
                                    ? 'Users going through a vetting process to ensure you never match with bots.'
                                    : itemIndex == 1
                                        ? 'We match to others  with shared core values.'
                                        : 'Sign up today and enjoy the first monthof premium benefits on us.',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyText1,
                                // style: SafeGoogleFont(
                                //   'Sk-Modernist',
                                //   fontSize: 14 * ffem,
                                //   fontWeight: FontWeight.w400,
                                //   height: 1.5 * ffem / fem,
                                //   // color: Color(0xff323755),
                                // ),
                              ),
                            ),
                            // Container(
                            //   // onboardingdotsdHS (57:136)
                            //   margin: EdgeInsets.fromLTRB(
                            //       0 * fem, 0 * fem, 1 * fem, 0 * fem),
                            //   width: 40 * fem,
                            //   height: 8 * fem,
                            //   child: Image.asset(
                            //     'assets/ui-kit/images/onboarding-dots-fz8.png',
                            //     width: 40 * fem,
                            //     height: 8 * fem,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // contentAmE (96:5)
                      margin: EdgeInsets.fromLTRB(
                          9.5 * fem, 0 * fem, 9.5 * fem, 20 * fem),
                      width: double.infinity,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < imgList.length; i++)
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      _controller.jumpToPage(i);
                                      _controllerText.jumpToPage(i);
                                    });
                                  },
                                  child: Container(
                                    width: 8.0,
                                    height: 8.0,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 2.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: activeIndex == i
                                          ? AppColor.primary
                                          : Color(0xFFE5E5E5),
                                    ),
                                  ))
                          ]),
                    ),
                    Container(
                      // btncreateaccountj5a (96:2)
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
                            // Get.to(() => SignUp());
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
                                return BottomSheetSignup();
                              },
                            );
                            debugPrint("Create an account");
                          },
                          text: 'Create an account'.tr),
                    ),
                    RichText(
                      // privacyandagreemenz1W (96:1)
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: SafeGoogleFont(
                          'Sk-Modernist',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2000000817 * ffem / fem,
                          color: AppColor.primary,
                        ),
                        children: [
                          TextSpan(
                            text: 'Already have an account?'.tr,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          TextSpan(
                            text: ' ',
                            style: SafeGoogleFont(
                              'Sk-Modernist',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575 * ffem / fem,
                              color: AppColor.primary,
                            ),
                          ),
                          TextSpan(
                            text: 'Sign In'.tr,
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
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Container(
                      // orloginwithBo6 (309:5079)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 10 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              // line1thW (309:5082)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2.5 * fem, 0 * fem, 0 * fem),
                              width: 94 * fem,
                              height: 0.5 * fem,
                              decoration: BoxDecoration(
                                color: Color(0x66000000),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16.5 * fem,
                          ),
                          Text(
                            // orsignupwithPuA (309:5081)
                            'OR'.tr,
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Sk-Modernist',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            width: 16.5 * fem,
                          ),
                          Expanded(
                            child: Container(
                              // line2VhJ (309:5080)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2.5 * fem, 0 * fem, 0 * fem),
                              width: 94 * fem,
                              height: 0.5 * fem,
                              decoration: BoxDecoration(
                                color: Color(0x66000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          28 * fem, 0 * fem, 28 * fem, 0 * fem),
                      width: double.infinity,
                      height: 64 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          for (int i = 0; i < iconImage.length; i++)
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 6 * fem),
                              child: LoginIcon(fem: fem, img: iconImage[i]),
                            ),
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
    );
  }
}
