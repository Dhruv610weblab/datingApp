import 'package:datingapp/units/colors.dart';
import 'package:flutter/material.dart';

class TfDesign {
  InputDecoration textFieldInputStyle(
      {required String hint, IconButton? sufix}) {
    return InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
            color: AppColor.greyBorder,
            fontWeight: FontWeight.w400,
            fontSize: 14),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
        focusColor: AppColor.primary,
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0)),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0)),
        suffixIcon: sufix == null ? null : sufix);
  }
}
