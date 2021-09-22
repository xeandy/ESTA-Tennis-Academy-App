import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

InputDecoration customDecoration({
  String? prefixText,
  required String iconPath,
  required String hintText,
  required String labelText,
}) {
  return InputDecoration(
    errorStyle: TextStyle(fontSize: 12),
    hintStyle: TextStyle(fontSize: 13),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    prefixIcon: Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: SvgPicture.asset(
        iconPath,
        height: 25,
        color: Colors.purpleAccent[700],
      ),
    ),
    prefixText: prefixText,
    prefixStyle: TextStyle(color: Colors.black, fontSize: 16),
    hintText: hintText,
    labelText: labelText,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(22),
      borderSide: BorderSide(
        color: kTextColor,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(22),
      borderSide: BorderSide(
        color: kTextColor,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: kTextColor,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: kTextColor,
      ),
    ),
  );
}
