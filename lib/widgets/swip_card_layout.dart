import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';

class SwipeCardLayout extends StatelessWidget {
  const SwipeCardLayout(
      {Key? key,
      required this.fem,
      required List<SwipeItem> swipeItems,
      required this.ffem,
      required this.index,
      this.onPress})
      : _swipeItems = swipeItems,
        super(key: key);

  final double fem;
  final List<SwipeItem> _swipeItems;
  final double ffem;
  final int index;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: InkWell(
        onTap: onPress,
        child: Container(
          width: 295 * fem, //: 231 * fem,
          height: 450 * fem, // : 450 * fem,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15 * fem),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(_swipeItems[index].content.image),
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              padding:
                  EdgeInsets.fromLTRB(16 * fem, 20 * fem, 0 * fem, 145 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // locationpS4 (309:5456)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 210 * fem, 92 * fem),
                    padding: EdgeInsets.fromLTRB(
                        12.04 * fem, 8 * fem, 9 * fem, 8 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x26ffffff),
                      borderRadius: BorderRadius.circular(7 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // localtwosQL (309:5459)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 4.04 * fem, 0 * fem),
                          width: 9.92 * fem,
                          height: 12.83 * fem,
                          child: Image.asset(
                            'assets/ui-kit/images/local-two.png',
                            width: 9.92 * fem,
                            height: 12.83 * fem,
                          ),
                        ),
                        Text(
                          // kmBR2 (309:5458)
                          _swipeItems[index].content.distance,
                          style: AppTextStyle.buildSafeGoogleFont1270015white(
                              ffem, fem),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // paginationv1K1S (309:5449)
                    padding: EdgeInsets.fromLTRB(
                        8 * fem, 16 * fem, 8 * fem, 16 * fem),
                    width: 20 * fem,
                    decoration: BoxDecoration(
                      color: Color(0x26ffffff),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10 * fem),
                        bottomLeft: Radius.circular(10 * fem),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse1bDr (309:5455)
                          width: double.infinity,
                          height: 4 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2 * fem),
                            color: AppColor.white,
                          ),
                        ),
                        SizedBox(
                          height: 6 * fem,
                        ),
                        Container(
                          // ellipse2KvY (309:5454)
                          width: double.infinity,
                          height: 4 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2 * fem),
                            color: AppColor.secondWhite,
                          ),
                        ),
                        SizedBox(
                          height: 6 * fem,
                        ),
                        Container(
                          // ellipse3fDi (309:5453)
                          width: double.infinity,
                          height: 4 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2 * fem),
                            color: AppColor.secondWhite,
                          ),
                        ),
                        SizedBox(
                          height: 6 * fem,
                        ),
                        Container(
                          // ellipse4CjS (309:5452)
                          width: double.infinity,
                          height: 4 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2 * fem),
                            color: AppColor.secondWhite,
                          ),
                        ),
                        SizedBox(
                          height: 6 * fem,
                        ),
                        Container(
                          // ellipse5XFv (309:5451)
                          width: double.infinity,
                          height: 4 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2 * fem),
                            color: Color(0x7fffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                // autogroupejlyGzC (QbJ7g7T2QQEmNL625EeJLY)
                padding:
                    EdgeInsets.fromLTRB(16 * fem, 6 * fem, 16 * fem, 16 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.7),
                  backgroundBlendMode: BlendMode.colorBurn,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15 * fem),
                    bottomLeft: Radius.circular(15 * fem),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // jessicaparker23Wde (309:5447)
                      'Jessica Parker, 23',
                      style: AppTextStyle.buildSafeGoogleFont2470015white(
                          ffem, fem),
                    ),
                    Text(
                      // professionalmodelE3r (309:5448)
                      'Professional model',
                      style: AppTextStyle.buildSafeGoogleFont1440015white(
                          ffem, fem),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
