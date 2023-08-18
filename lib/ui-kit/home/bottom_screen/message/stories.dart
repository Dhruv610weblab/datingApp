import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        storyItems: [
          StoryItem.text(
            title: "I guess you'd love to see more of our food. That's great.",
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: "Nice!\n\nTap to continue.",
            backgroundColor: Colors.red,
            textStyle: TextStyle(
              fontFamily: 'Dancing',
              fontSize: 40,
            ),
          ),
          StoryItem.pageImage(
            url:
                "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
            caption: "Still sampling",
            controller: storyController,
          ),
          StoryItem.pageImage(
              url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
              caption: "Working with gifs",
              controller: storyController),
          StoryItem.pageImage(
            url: "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
            caption: "Hello, from the other side",
            controller: storyController,
          ),
          StoryItem.pageImage(
            url: "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
            caption: "Hello, from the other side2",
            controller: storyController,
          ),
        ],
        onStoryShow: (s) {
          print("Showing a story");
        },
        onComplete: () {
          Get.back();
          print("Completed a cycle");
        },
        onVerticalSwipeComplete: (val) {
          print(val);
          if (val.toString() == "Direction.down") {
            Get.back();
          }
        },
        progressPosition: ProgressPosition.top,
        repeat: false,
        controller: storyController,
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:datingapp/units/utils.dart';
//
// class Stories extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 375;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     return Container(
//       width: double.infinity,
//       child: ImageFiltered(
//         // storiesuag (309:5671)
//         imageFilter: ImageFilter.blur(
//           sigmaX: 50 * fem,
//           sigmaY: 50 * fem,
//         ),
//         child: Container(
//           padding: EdgeInsets.fromLTRB(40 * fem, 42 * fem, 40 * fem, 34 * fem),
//           width: double.infinity,
//           height: 812 * fem,
//           decoration: BoxDecoration(
//             color: Color(0x33000000),
//             image: DecorationImage(
//               fit: BoxFit.cover,
//               image: AssetImage(
//                 'assets/ui-kit/images/photo-bg-bg.png',
//               ),
//             ),
//           ),
//           child: Container(
//             // interfacewGU (461:4)
//             width: double.infinity,
//             height: double.infinity,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   // timeline5da (309:5673)
//                   margin:
//                       EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Color(0xffffffff),
//                     borderRadius: BorderRadius.circular(2 * fem),
//                   ),
//                   child: Align(
//                     // lineactiveoZa (309:5675)
//                     alignment: Alignment.centerLeft,
//                     child: SizedBox(
//                       width: 100 * fem,
//                       height: 2 * fem,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(2 * fem),
//                           color: Color(0xffe94057),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   // nameinputU9v (461:7)
//                   width: double.infinity,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         // headerRax (309:6603)
//                         margin: EdgeInsets.fromLTRB(
//                             0 * fem, 0 * fem, 0 * fem, 620 * fem),
//                         width: double.infinity,
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Container(
//                               // nameAYY (309:5676)
//                               margin: EdgeInsets.fromLTRB(
//                                   0 * fem, 8 * fem, 118 * fem, 0 * fem),
//                               child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     // photoKAY (309:5678)
//                                     margin: EdgeInsets.fromLTRB(
//                                         0 * fem, 0 * fem, 10 * fem, 0 * fem),
//                                     width: 48 * fem,
//                                     height: 48 * fem,
//                                     decoration: BoxDecoration(
//                                       borderRadius:
//                                           BorderRadius.circular(24 * fem),
//                                       image: DecorationImage(
//                                         image: AssetImage(
//                                           'assets/ui-kit/images/photo-bg-GbJ.png',
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Text(
//                                     // annabelledBE (309:5677)
//                                     'Annabelle',
//                                     style: SafeGoogleFont(
//                                       'Sk-Modernist',
//                                       fontSize: 16 * ffem,
//                                       fontWeight: FontWeight.w700,
//                                       height: 1.5 * ffem / fem,
//                                       color: Color(0xb2000000),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               // btnclose9vG (309:5679)
//                               margin: EdgeInsets.fromLTRB(
//                                   0 * fem, 0 * fem, 0 * fem, 8 * fem),
//                               width: 48 * fem,
//                               height: 48 * fem,
//                               child: Image.asset(
//                                 'assets/ui-kit/images/btn-close.png',
//                                 width: 48 * fem,
//                                 height: 48 * fem,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         // inputtextnoneTvx (309:6593)
//                         width: double.infinity,
//                         height: 48 * fem,
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Container(
//                               // yourmessageoE8 (309:6597)
//                               margin: EdgeInsets.fromLTRB(
//                                   0 * fem, 0 * fem, 15 * fem, 0 * fem),
//                               padding: EdgeInsets.fromLTRB(
//                                   16 * fem, 14 * fem, 16.83 * fem, 13 * fem),
//                               height: double.infinity,
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: Color(0xffe8e6ea)),
//                                 color: Color(0x33ffffff),
//                                 borderRadius: BorderRadius.circular(15 * fem),
//                               ),
//                               child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     // searchHuz (309:6600)
//                                     margin: EdgeInsets.fromLTRB(
//                                         0 * fem, 0 * fem, 99.83 * fem, 0 * fem),
//                                     child: Text(
//                                       'Your message',
//                                       style: SafeGoogleFont(
//                                         'Sk-Modernist',
//                                         fontSize: 14 * ffem,
//                                         fontWeight: FontWeight.w400,
//                                         height: 1.5 * ffem / fem,
//                                         color: Color(0xffffffff),
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     // stickersotL (309:6599)
//                                     margin: EdgeInsets.fromLTRB(
//                                         0 * fem, 0 * fem, 0 * fem, 1 * fem),
//                                     width: 18.33 * fem,
//                                     height: 18.33 * fem,
//                                     child: Image.asset(
//                                       'assets/ui-kit/images/stickers.png',
//                                       width: 18.33 * fem,
//                                       height: 18.33 * fem,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               // btnsendVFN (309:6594)
//                               width: 48 * fem,
//                               height: 48 * fem,
//                               child: Image.asset(
//                                 'assets/ui-kit/images/btn-send.png',
//                                 width: 48 * fem,
//                                 height: 48 * fem,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
