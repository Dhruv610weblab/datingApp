import 'package:datingapp/ui-kit/home/bottom_screen/dashboard.dart';
import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    Key? key,
    required this.fem,
    required this.ffem,
    required this.image,
    required this.name,
    this.isStory = false,
    this.isDashBorder = false,
    this.onPress,
  }) : super(key: key);

  final double fem;
  final double ffem;
  final String image;
  final String name;
  final bool isStory;
  final bool isDashBorder;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      // personyHz (309:5561)
      width: 66 * fem,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100 * fem),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: isStory ? onPress : null,
            child: isDashBorder
                ? DottedBorder(
                    borderType: BorderType.Circle,
                    strokeCap: StrokeCap.butt,
                    radius: Radius.circular(0),
                    color: Theme.of(context).backgroundColor == Colors.black
                        ? AppColor.white
                        : AppColor.black,
                    dashPattern: [10, 5],
                    strokeWidth: 2,
                    child: Container(
                      // photoiWU (309:5563)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          2 * fem, 2 * fem, 2 * fem, 2 * fem),
                      width: double.infinity,
                      height: 65 * fem,

                      child: Center(
                        // photor6t (309:5565)
                        child: Icon(
                          Icons.add,
                          color:
                              Theme.of(context).backgroundColor == Colors.black
                                  ? AppColor.white
                                  : AppColor.black,
                        ),
                      ),
                    ),
                  )
                : Container(
                    // photoiWU (309:5563)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
                    padding:
                        EdgeInsets.fromLTRB(2 * fem, 2 * fem, 2 * fem, 2 * fem),
                    width: double.infinity,
                    height: 65 * fem,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100 * fem),
                        border: isStory
                            ? Border.all(color: AppColor.primary, width: 2)
                            : Border()),
                    child: Center(
                      // photor6t (309:5565)
                      child: SizedBox(
                        width: double.infinity,
                        height: 58 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                image,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
