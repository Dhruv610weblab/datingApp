// import 'package:datingapp/units/text_style.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:datingapp/units/utils.dart';
//
// class Chat extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 375;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     return Scaffold(
//       body: Container(
//         // chat7mr (309:5683)
//         width: double.infinity,
//         height: 812 * fem,
//         decoration: BoxDecoration(
//           color: Color(0xffffffff),
//         ),
//         child: Stack(
//           children: [
//             Positioned(
//               // barsstatusbariphonelightT52 (309:5684)
//               left: 34.5 * fem,
//               top: 14 * fem,
//               child: Container(
//                 width: 326.16 * fem,
//                 height: 19 * fem,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       // timeMgC (I309:5684;56:39)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 232.5 * fem, 0 * fem),
//                       child: Text(
//                         '4:20',
//                         textAlign: TextAlign.center,
//                         style: SafeGoogleFont(
//                           'SF Pro Text',
//                           fontSize: 15 * ffem,
//                           fontWeight: FontWeight.w600,
//                           height: 1.2575 * ffem / fem,
//                           letterSpacing: -0.3000000119 * fem,
//                           color: Color(0xff000000),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       // cellularconnection2XS (I309:5684;56:33)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 5 * fem, 1 * fem),
//                       width: 17 * fem,
//                       height: 10.67 * fem,
//                       child: Image.asset(
//                         'assets/ui-kit/images/cellular-connection-AeC.png',
//                         width: 17 * fem,
//                         height: 10.67 * fem,
//                       ),
//                     ),
//                     Container(
//                       // wifiJzk (I309:5684;56:29)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 5 * fem, 1.34 * fem),
//                       width: 15.33 * fem,
//                       height: 11 * fem,
//                       child: Image.asset(
//                         'assets/ui-kit/images/wifi-YJL.png',
//                         width: 15.33 * fem,
//                         height: 11 * fem,
//                       ),
//                     ),
//                     Container(
//                       // batteryqDz (I309:5684;56:25)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 0 * fem, 1 * fem),
//                       width: 24.33 * fem,
//                       height: 11.33 * fem,
//                       child: Image.asset(
//                         'assets/ui-kit/images/battery-Y9n.png',
//                         width: 24.33 * fem,
//                         height: 11.33 * fem,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               // headerkbr (309:5685)
//               left: 40 * fem,
//               top: 44 * fem,
//               child: Container(
//                 width: 295 * fem,
//                 height: 52 * fem,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       // messages5e8 (309:5693)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 101 * fem, 0 * fem),
//                       child: Text(
//                         'Messages',
//                         style: AppTextStyle.buildSafeGoogleFont3470015black(
//                             ffem, fem),
//                       ),
//                     ),
//                     Container(
//                       // btnfilterbMa (309:5686)
//                       width: 52 * fem,
//                       height: 52 * fem,
//                       child: Image.asset(
//                         'assets/ui-kit/images/btn-filter-pcx.png',
//                         width: 52 * fem,
//                         height: 52 * fem,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               // container5nY (309:5694)
//               left: 0 * fem,
//               top: 0 * fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 375 * fem,
//                   height: 812 * fem,
//                   child: Opacity(
//                     opacity: 0.5,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Color(0x7f000000),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // containerysv (309:5695)
//               left: 0 * fem,
//               top: 96 * fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 375 * fem,
//                   height: 716 * fem,
//                   child: Image.asset(
//                     'assets/ui-kit/images/container-CrL.png',
//                     width: 375 * fem,
//                     height: 716 * fem,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // inputtextnonegnL (309:5697)
//               left: 40 * fem,
//               top: 730 * fem,
//               child: Container(
//                 width: 295 * fem,
//                 height: 48 * fem,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       // autogroup8hr2RE8 (QbJMJJahZpp1F2xmEF8hR2)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 15 * fem, 0 * fem),
//                       padding: EdgeInsets.fromLTRB(
//                           16 * fem, 14 * fem, 16.83 * fem, 13 * fem),
//                       height: double.infinity,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xffe8e6ea)),
//                         color: Color(0xffffffff),
//                         borderRadius: BorderRadius.circular(15 * fem),
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // searchgfr (309:5702)
//                             margin: EdgeInsets.fromLTRB(
//                                 0 * fem, 0 * fem, 99.83 * fem, 0 * fem),
//                             child: Text(
//                               'Your message',
//                               style: SafeGoogleFont(
//                                 'Sk-Modernist',
//                                 fontSize: 14 * ffem,
//                                 fontWeight: FontWeight.w400,
//                                 height: 1.5 * ffem / fem,
//                                 color: Color(0x66000000),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // stickersD9z (309:5699)
//                             margin: EdgeInsets.fromLTRB(
//                                 0 * fem, 0 * fem, 0 * fem, 1 * fem),
//                             width: 18.33 * fem,
//                             height: 18.33 * fem,
//                             child: Image.asset(
//                               'assets/ui-kit/images/stickers-QxQ.png',
//                               width: 18.33 * fem,
//                               height: 18.33 * fem,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       // autogroup6fbevaC (QbJMPDcBJu7HFPjWhM6FBe)
//                       width: 48 * fem,
//                       height: 48 * fem,
//                       child: Image.asset(
//                         'assets/ui-kit/images/auto-group-6fbe.png',
//                         width: 48 * fem,
//                         height: 48 * fem,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               // rik (309:5703)
//               left: 40 * fem,
//               top: 261 * fem,
//               child: Container(
//                 width: 250 * fem,
//                 height: 117 * fem,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       // autogroupmk8qBm2 (QbJMYiLMfDF6tTVhwNmk8Q)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 0 * fem, 4 * fem),
//                       padding: EdgeInsets.fromLTRB(
//                           16 * fem, 16 * fem, 17 * fem, 16 * fem),
//                       width: double.infinity,
//                       height: 95 * fem,
//                       decoration: BoxDecoration(
//                         color: Color(0x11e94057),
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(15 * fem),
//                           topRight: Radius.circular(15 * fem),
//                           bottomRight: Radius.circular(15 * fem),
//                         ),
//                       ),
//                       child: Center(
//                         // messagefZi (309:5706)
//                         child: SizedBox(
//                           child: Container(
//                             constraints: BoxConstraints(
//                               maxWidth: 217 * fem,
//                             ),
//                             child: Text(
//                               'Hi Jake, how are you? I saw on the app that we’ve crossed paths several times this week 😄',
//                               style:
//                                   AppTextStyle.buildSafeGoogleFont1440015black(
//                                       ffem, fem),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Text(
//                       // pmYdW (309:5704)
//                       '2:55 PM',
//                       style: SafeGoogleFont(
//                         'Sk-Modernist',
//                         fontSize: 12 * ffem,
//                         fontWeight: FontWeight.w400,
//                         height: 1.5 * ffem / fem,
//                         color: Color(0x66000000),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               // todayTkU (309:6681)
//               left: 40 * fem,
//               top: 233 * fem,
//               child: Container(
//                 width: 295 * fem,
//                 height: 18 * fem,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       // line1Z2p (309:6684)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 3 * fem, 0 * fem, 0 * fem),
//                       width: 121 * fem,
//                       height: 1 * fem,
//                       decoration: BoxDecoration(
//                         color: Color(0xffe8e6ea),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 11 * fem,
//                     ),
//                     Text(
//                       // todayea4 (309:6682)
//                       'Today',
//                       textAlign: TextAlign.center,
//                       style: SafeGoogleFont(
//                         'Sk-Modernist',
//                         fontSize: 12 * ffem,
//                         fontWeight: FontWeight.w400,
//                         height: 1.5 * ffem / fem,
//                         color: Color(0xb2000000),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 11 * fem,
//                     ),
//                     Container(
//                       // line2Zh2 (309:6683)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 3 * fem, 0 * fem, 0 * fem),
//                       width: 121 * fem,
//                       height: 1 * fem,
//                       decoration: BoxDecoration(
//                         color: Color(0xffe8e6ea),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               // TnQ (309:5707)
//               left: 40 * fem,
//               top: 515 * fem,
//               child: Container(
//                 width: 143 * fem,
//                 height: 75 * fem,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       // autogroupn37wjzp (QbJMinstzjghgQsgeDN37W)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 0 * fem, 4 * fem),
//                       width: double.infinity,
//                       height: 53 * fem,
//                       decoration: BoxDecoration(
//                         color: Color(0x11e94057),
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(15 * fem),
//                           topRight: Radius.circular(15 * fem),
//                           bottomRight: Radius.circular(15 * fem),
//                         ),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Sure, let’s do it! 😊',
//                           style: AppTextStyle.buildSafeGoogleFont1440015black(
//                               ffem, fem),
//                         ),
//                       ),
//                     ),
//                     Text(
//                       // pm5xC (309:5708)
//                       '3:10 PM',
//                       style: SafeGoogleFont(
//                         'Sk-Modernist',
//                         fontSize: 12 * ffem,
//                         fontWeight: FontWeight.w400,
//                         height: 1.5 * ffem / fem,
//                         color: Color(0x66000000),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               // QUg (309:5711)
//               left: 85 * fem,
//               top: 388 * fem,
//               child: Container(
//                 width: 250 * fem,
//                 height: 117 * fem,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Container(
//                       // autogroupfyg4WGp (QbJMq3CVH9puBNmet2FyG4)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 0 * fem, 4 * fem),
//                       padding: EdgeInsets.fromLTRB(
//                           16 * fem, 16 * fem, 25 * fem, 16 * fem),
//                       width: double.infinity,
//                       height: 95 * fem,
//                       decoration: BoxDecoration(
//                         color: Color(0xfff3f3f3),
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(15 * fem),
//                           topRight: Radius.circular(15 * fem),
//                           bottomLeft: Radius.circular(15 * fem),
//                         ),
//                       ),
//                       child: Center(
//                         // messagexuW (309:5716)
//                         child: SizedBox(
//                           child: Container(
//                             constraints: BoxConstraints(
//                               maxWidth: 209 * fem,
//                             ),
//                             child: Text(
//                               'Haha truly! Nice to meet you Grace! What about a cup of coffee today evening? ☕️ ',
//                               style:
//                                   AppTextStyle.buildSafeGoogleFont1440015black(
//                                       ffem, fem),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       // timeFtc (309:5712)
//                       margin: EdgeInsets.fromLTRB(
//                           191 * fem, 0 * fem, 0.67 * fem, 0 * fem),
//                       width: double.infinity,
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // pmypc (309:5713)
//                             margin: EdgeInsets.fromLTRB(
//                                 0 * fem, 0 * fem, 4.67 * fem, 0 * fem),
//                             child: Text(
//                               '3:02 PM',
//                               textAlign: TextAlign.right,
//                               style: SafeGoogleFont(
//                                 'Sk-Modernist',
//                                 fontSize: 12 * ffem,
//                                 fontWeight: FontWeight.w400,
//                                 height: 1.5 * ffem / fem,
//                                 color: Color(0x66000000),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // donealluTN (309:5714)
//                             width: 14.67 * fem,
//                             height: 8 * fem,
//                             child: Image.asset(
//                               'assets/ui-kit/images/done-all-xKr.png',
//                               width: 14.67 * fem,
//                               height: 8 * fem,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               // STJ (309:5717)
//               left: 111 * fem,
//               top: 600 * fem,
//               child: Container(
//                 width: 224 * fem,
//                 height: 96 * fem,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Container(
//                       // autogroupzuywvNU (QbJMyHTkNajUvFMTGtZUyW)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 0 * fem, 4 * fem),
//                       padding: EdgeInsets.fromLTRB(
//                           16 * fem, 16 * fem, 28 * fem, 16 * fem),
//                       width: double.infinity,
//                       height: 74 * fem,
//                       decoration: BoxDecoration(
//                         color: Color(0xfff3f3f3),
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(15 * fem),
//                           topRight: Radius.circular(15 * fem),
//                           bottomLeft: Radius.circular(15 * fem),
//                         ),
//                       ),
//                       child: Center(
//                         // messageohA (309:5722)
//                         child: SizedBox(
//                           child: Container(
//                             constraints: BoxConstraints(
//                               maxWidth: 180 * fem,
//                             ),
//                             child: Text(
//                               'Great I will write later the exact\ntime and place. See you soon!',
//                               style:
//                                   AppTextStyle.buildSafeGoogleFont1440015black(
//                                       ffem, fem),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       // timeXdA (309:5718)
//                       margin: EdgeInsets.fromLTRB(
//                           165 * fem, 0 * fem, 0.67 * fem, 0 * fem),
//                       width: double.infinity,
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // pmfzG (309:5719)
//                             margin: EdgeInsets.fromLTRB(
//                                 0 * fem, 0 * fem, 4.67 * fem, 0 * fem),
//                             child: Text(
//                               '3:12 PM',
//                               textAlign: TextAlign.right,
//                               style: SafeGoogleFont(
//                                 'Sk-Modernist',
//                                 fontSize: 12 * ffem,
//                                 fontWeight: FontWeight.w400,
//                                 height: 1.5 * ffem / fem,
//                                 color: Color(0x66000000),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // doneallAw2 (309:5720)
//                             width: 14.67 * fem,
//                             height: 8 * fem,
//                             child: Image.asset(
//                               'assets/ui-kit/images/done-all.png',
//                               width: 14.67 * fem,
//                               height: 8 * fem,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               // headerK3E (309:5723)
//               left: 40 * fem,
//               top: 134 * fem,
//               child: Container(
//                 width: 295 * fem,
//                 height: 58 * fem,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       // photopEt (309:5726)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 2 * fem, 10 * fem, 0 * fem),
//                       padding: EdgeInsets.fromLTRB(
//                           4 * fem, 4 * fem, 4 * fem, 4 * fem),
//                       width: 56 * fem,
//                       decoration: BoxDecoration(
//                         color: Color(0xffffffff),
//                         borderRadius: BorderRadius.circular(28 * fem),
//                         border: Border(),
//                       ),
//                       child: Center(
//                         // photoir4 (309:5728)
//                         child: SizedBox(
//                           width: double.infinity,
//                           height: 48 * fem,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(24 * fem),
//                               image: DecorationImage(
//                                 image: AssetImage(
//                                   'assets/ui-kit/images/photo-bg-2si.png',
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       // autogrouprzk4S1N (QbJNAMyd7cZGqA5M4FrZk4)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 117 * fem, 8 * fem),
//                       width: 60 * fem,
//                       height: 50 * fem,
//                       child: Stack(
//                         children: [
//                           Positioned(
//                             // nameACG (309:5724)
//                             left: 0 * fem,
//                             top: 0 * fem,
//                             child: Align(
//                               child: SizedBox(
//                                 width: 60 * fem,
//                                 height: 36 * fem,
//                                 child: Text(
//                                   'Grace',
//                                   style: AppTextStyle
//                                       .buildSafeGoogleFont2470015black(
//                                           ffem, fem),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             // messagefep (309:5725)
//                             left: 10 * fem,
//                             top: 32 * fem,
//                             child: Align(
//                               child: SizedBox(
//                                 width: 34 * fem,
//                                 height: 18 * fem,
//                                 child: Text(
//                                   'Online',
//                                   style: SafeGoogleFont(
//                                     'Sk-Modernist',
//                                     fontSize: 12 * ffem,
//                                     fontWeight: FontWeight.w400,
//                                     height: 1.5 * ffem / fem,
//                                     color: Color(0x66000000),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             // ellipse6Aba (309:5739)
//                             left: 0 * fem,
//                             top: 39 * fem,
//                             child: Align(
//                               child: SizedBox(
//                                 width: 6 * fem,
//                                 height: 6 * fem,
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius:
//                                         BorderRadius.circular(3 * fem),
//                                     color: Color(0xffe94057),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       // btnfilter5Ck (309:5729)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 2 * fem, 0 * fem, 0 * fem),
//                       width: 52 * fem,
//                       height: 52 * fem,
//                       child: Image.asset(
//                         'assets/ui-kit/images/btn-filter-Jye.png',
//                         width: 52 * fem,
//                         height: 52 * fem,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               // indicatornsr (309:5736)
//               left: 174 * fem,
//               top: 93 * fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 27 * fem,
//                   height: 12.06 * fem,
//                   child: Image.asset(
//                     'assets/ui-kit/images/indicator-En4.png',
//                     width: 27 * fem,
//                     height: 12.06 * fem,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
