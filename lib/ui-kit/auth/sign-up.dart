// import 'package:datingapp/ui-kit/auth/number.dart';
// import 'package:datingapp/units/colors.dart';
// import 'package:datingapp/widgets/common_button.dart';
// import 'package:datingapp/widgets/login_icon.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'package:get/get.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:datingapp/units/utils.dart';
//
// class SignUp extends StatefulWidget {
//   @override
//   State<SignUp> createState() => _SignUpState();
// }
//
// class _SignUpState extends State<SignUp> {
//   List iconImage = [
//     'assets/ui-kit/images/icons-logo-facebook.png',
//     'assets/ui-kit/images/icons-logo-google.png',
//     'assets/ui-kit/images/icons-logo-apple.png'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 385;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         child: Container(
//           // signupWmW (309:5065)
//           padding: EdgeInsets.fromLTRB(40 * fem, 128 * fem, 40 * fem, 0 * fem),
//           width: double.infinity,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 // trademark2jr (309:5077)
//                 margin:
//                     EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0.36 * fem, 78 * fem),
//                 width: 108.64 * fem,
//                 height: 100 * fem,
//                 child: Image.asset(
//                   'assets/ui-kit/images/trademark.png',
//                   width: 108.64 * fem,
//                   height: 100 * fem,
//                 ),
//               ),
//               Container(
//                 // signupvKS (309:5066)
//                 margin:
//                     EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 64 * fem),
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15 * fem),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 0 * fem, 32 * fem),
//                       child: Text(
//                         'Sign up to continue'.tr,
//                         textAlign: TextAlign.center,
//                         style: Theme.of(context).textTheme.headline3,
//                       ),
//                     ),
//                     Container(
//                       // btncontinuewithemailjXn (309:5067)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 0 * fem, 20 * fem),
//                       width: double.infinity,
//                       height: 56 * fem,
//                       decoration: BoxDecoration(
//                         color: AppColor.primary,
//                         borderRadius: BorderRadius.circular(15 * fem),
//                       ),
//                       child: CommonButton(
//                           fem: fem,
//                           ffem: ffem,
//                           onPress: () {
//                             debugPrint("Continue with email");
//                           },
//                           text: 'Continue with email'.tr),
//                     ),
//                     Container(
//                       // btnusephonenumberQP2 (309:5070)
//                       width: double.infinity,
//                       height: 56 * fem,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xfff3f3f3)),
//                         color: Color(0xffffffff),
//                         borderRadius: BorderRadius.circular(15 * fem),
//                       ),
//                       child: CommonButton(
//                           isColorReplace: true,
//                           fem: fem,
//                           ffem: ffem,
//                           onPress: () {
//                             Get.to(() => SignUpNumber());
//                             debugPrint("Use phone number");
//                           },
//                           text: 'Use phone number'.tr),
//                     ),
//                   ],
//                 ),
//               ),
//               // Container(
//               //   // socialsSqW (309:5078)
//               //   margin:
//               //       EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 76 * fem),
//               //   width: double.infinity,
//               //   child: Column(
//               //     crossAxisAlignment: CrossAxisAlignment.center,
//               //     children: [
//               // Container(
//               //   // orloginwithBo6 (309:5079)
//               //   margin: EdgeInsets.fromLTRB(
//               //       0 * fem, 0 * fem, 0 * fem, 24 * fem),
//               //   width: double.infinity,
//               //   child: Row(
//               //     crossAxisAlignment: CrossAxisAlignment.center,
//               //     children: [
//               //       Container(
//               //         // line1thW (309:5082)
//               //         margin: EdgeInsets.fromLTRB(
//               //             0 * fem, 2.5 * fem, 0 * fem, 0 * fem),
//               //         width: 94 * fem,
//               //         height: 0.5 * fem,
//               //         decoration: BoxDecoration(
//               //           color: Color(0x66000000),
//               //         ),
//               //       ),
//               //       SizedBox(
//               //         width: 16.5 * fem,
//               //       ),
//               //       Text(
//               //         // orsignupwithPuA (309:5081)
//               //         'or sign up with'.tr,
//               //         textAlign: TextAlign.center,
//               //         style: SafeGoogleFont(
//               //           'Sk-Modernist',
//               //           fontSize: 12 * ffem,
//               //           fontWeight: FontWeight.w400,
//               //           height: 1.5 * ffem / fem,
//               //           color: Color(0xff000000),
//               //         ),
//               //       ),
//               //       SizedBox(
//               //         width: 16.5 * fem,
//               //       ),
//               //       Container(
//               //         // line2VhJ (309:5080)
//               //         margin: EdgeInsets.fromLTRB(
//               //             0 * fem, 2.5 * fem, 0 * fem, 0 * fem),
//               //         width: 94 * fem,
//               //         height: 0.5 * fem,
//               //         decoration: BoxDecoration(
//               //           color: Color(0x66000000),
//               //         ),
//               //       ),
//               //     ],
//               //   ),
//               // ),
//               // Container(
//               //   margin: EdgeInsets.fromLTRB(
//               //       31 * fem, 0 * fem, 32 * fem, 0 * fem),
//               //   width: double.infinity,
//               //   height: 64 * fem,
//               //   child: Row(
//               //     crossAxisAlignment: CrossAxisAlignment.center,
//               //     children: [
//               //       for (int i = 0; i < iconImage.length; i++)
//               //         Padding(
//               //           padding:
//               //               EdgeInsets.symmetric(horizontal: 6 * fem),
//               //           child: LoginIcon(fem: fem, img: iconImage[i]),
//               //         ),
//               //     ],
//               //   ),
//               // ),
//               //     ],
//               //   ),
//               // ),
//               Container(
//                 // footerNTa (309:5074)
//                 margin: EdgeInsets.fromLTRB(
//                     52.5 * fem, 0 * fem, 51.5 * fem, 0 * fem),
//                 width: double.infinity,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       // termsofuseuiQ (309:5075)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 36 * fem, 0 * fem),
//                       child: Text(
//                         'Terms of use'.tr,
//                         textAlign: TextAlign.center,
//                         style: SafeGoogleFont(
//                           'Sk-Modernist',
//                           fontSize: 14 * ffem,
//                           fontWeight: FontWeight.w400,
//                           height: 1.5 * ffem / fem,
//                           color: Color(0xffe94057),
//                         ),
//                       ),
//                     ),
//                     Text(
//                       // privacypolicyRRr (309:5076)
//                       'Privacy Policy'.tr,
//                       textAlign: TextAlign.center,
//                       style: SafeGoogleFont(
//                         'Sk-Modernist',
//                         fontSize: 14 * ffem,
//                         fontWeight: FontWeight.w400,
//                         height: 1.5 * ffem / fem,
//                         color: Color(0xffe94057),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
