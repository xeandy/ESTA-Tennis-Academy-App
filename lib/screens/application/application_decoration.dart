import 'package:flutter/material.dart';

import '../../../constants.dart';

InputDecoration applicationDecoration(
    {required String labelText, String? prefix}) {
  return InputDecoration(
    errorStyle: TextStyle(fontSize: 12),
    prefixStyle: TextStyle(
      color: Colors.black,
      fontSize: 18,
    ),
    labelText: labelText,
    labelStyle: TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    isDense: true,
    prefixText: prefix,
    contentPadding: EdgeInsets.fromLTRB(20, 22, 20, 15),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: kTextColor,
        width: 1.3,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: kTextColor,
        width: 1.3,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: kTextColor,
        width: 1.3,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: kTextColor,
        width: 1.3,
      ),
    ),
  );
}
