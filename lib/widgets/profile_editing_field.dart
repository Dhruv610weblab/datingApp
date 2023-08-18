import 'package:datingapp/units/colors.dart';
import 'package:datingapp/units/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

InputDecoration TFProfileDetail(
  context,
  double ffem,
  double fem, {
  required String lable,
  required String hint,
  Icon? iconn,
}) {
  return InputDecoration(
      filled: true,
      fillColor: AppColor.white,
      alignLabelWithHint: true,
      labelText: lable,
      icon: iconn,
      labelStyle: AppTextStyle.safeGoogleFont144001566(ffem, fem),
      hintText: hint,
      hintStyle: AppTextStyle.safeGoogleFont144001566(ffem, fem),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.red, width: 0.5),
          borderRadius: BorderRadius.circular(15 * fem)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15 * fem)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15 * fem)),
        borderSide: BorderSide(color: AppColor.primary, width: 0.5),
      ));
}
