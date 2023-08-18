import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:datingapp/units/utils.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.fem,
    required this.ffem,
    required this.name,
    required this.message,
    required this.time,
    required this.image,
    this.unread = false,
    this.isStory = false,
    this.count,
    this.onPress,
    this.onChat,
    this.onAccept,
    this.onReject,
    this.isNotification,
  }) : super(key: key);

  final double fem;
  final double ffem;
  final String name;
  final String message;
  final String time;
  final String image;
  final bool unread;
  final bool isStory;
  final String? count;
  final Function()? onPress;
  final Function()? onChat;
  final Function()? onAccept;
  final Function()? onReject;
  final int? isNotification;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // message9zQ (309:5537)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          height: 56 * fem,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: isStory ? onPress : null,
                child: Stack(
                  children: [
                    Container(
                      // phototwz (309:5544)
                      padding: EdgeInsets.fromLTRB(
                          2 * fem, 2 * fem, 2 * fem, 2 * fem),
                      width: 56 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(100 * fem),
                        border: isStory
                            ? Border.all(color: AppColor.primary, width: 2)
                            : Border(),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100 * fem),
                          image: DecorationImage(
                              image: AssetImage(
                                image,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    isNotification == 0
                        ? Positioned(
                            top: 0,
                            right: 0,
                            child: Image.asset(
                              'assets/ui-kit/images/like-2SC.png',
                              width: 24,
                            ))
                        : isNotification == 1
                            ? Positioned(
                                top: -0,
                                right: -0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColor.white,
                                  ),
                                  padding: EdgeInsets.all(4),
                                  child: Icon(
                                    Icons.thumb_up,
                                    shadows: [
                                      BoxShadow(
                                          offset: Offset(1, 1),
                                          spreadRadius: 1,
                                          color:
                                              AppColor.primary.withOpacity(0.2),
                                          blurStyle: BlurStyle.inner)
                                    ],
                                    color: AppColor.primary,
                                    size: 14,
                                  ),
                                ))
                            : isNotification == 2
                                ? Positioned(
                                    top: -0,
                                    right: -0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: AppColor.white,
                                      ),
                                      padding: EdgeInsets.all(4),
                                      child: Icon(
                                        Icons.remove_red_eye,
                                        shadows: [
                                          BoxShadow(
                                              offset: Offset(1, 1),
                                              color: AppColor.primary
                                                  .withOpacity(0.2),
                                              blurStyle: BlurStyle.inner)
                                        ],
                                        color: AppColor.primary,
                                        size: 14,
                                      ),
                                    ))
                                : Container(),
                  ],
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: onChat,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          // autogrouphgvcaiL (QbJCaZ7QVVCzaDDhiPHGvC)
                          // width: 240 * fem,
                          margin: EdgeInsets.fromLTRB(
                              10 * fem, 10 * fem, 0 * fem, 1 * fem),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              Text(
                                message,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // autogroupi1sno5J (QbJCg8nSWERjKsZ4Zqi1sn)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 2 * fem, 0 * fem, 0 * fem),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // timejUk (309:5541)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 3 * fem),
                              child: Text(
                                time,
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Sk-Modernist',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffadafbb),
                                ),
                              ),
                            ),
                            unread
                                ? Container(
                                    // messageindicators5A (309:5538)
                                    margin: EdgeInsets.fromLTRB(
                                        16 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        6.5 * fem, 0 * fem, 6.5 * fem, 0 * fem),
                                    height: 20 * fem,
                                    decoration: BoxDecoration(
                                      color: AppColor.primary,
                                      borderRadius:
                                          BorderRadius.circular(10 * fem),
                                    ),
                                    child: Text(
                                      count.toString(),
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Sk-Modernist',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      isNotification == 3
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/ui-kit/images/close-small.png',
                                    scale: 2,
                                  ),
                                ),
                                InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                        'assets/ui-kit/images/like (1).png'))
                              ],
                            )
                          : Container()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          indent: 65 * fem,
          endIndent: 0 * fem,
          thickness: 1,
          color: Color(0xffe8e6ea),
        )
      ],
    );
  }
}
