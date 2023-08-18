import 'package:datingapp/units/colors.dart';
import 'package:flutter/material.dart';

AppBar mainAppBar(BuildContext context,
        {Widget? title,
        Color? color,
        bool? isTextCenter = true,
        Widget? leading,
        List<Widget>? actions,
        bool automaticallyImplyLeading = true}) =>
    AppBar(
      centerTitle: isTextCenter,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: title,
      // title: Material(
      //   child: Text(
      //     title == null ? "" : title.toString(),
      //     maxLines: 2,
      //     overflow: TextOverflow.ellipsis,
      //     style: TextStyle(
      //         fontSize: 16.0,
      //         fontWeight: FontWeight.w600,
      //         color: color == null ? AppColor.black : color),
      //   ),
      // ),
      leading: leading ?? (automaticallyImplyLeading ? null : Container()),
      actions: actions,
    );
