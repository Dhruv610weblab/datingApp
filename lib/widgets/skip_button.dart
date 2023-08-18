import 'package:datingapp/units/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Skip extends StatelessWidget {
  const Skip({
    Key? key,
    required this.fem,
    required this.ffem,
    required this.onPress,
  }) : super(key: key);

  final double fem;
  final double ffem;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPress,
        child: Text(
          'Skip'.tr,
          style: AppTextStyle.buildSafeGoogleFont16715primary(ffem, fem),
        ));
  }
}
