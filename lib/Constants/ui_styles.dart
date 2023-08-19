import 'package:flutter/material.dart';
import 'package:mr_thinker/Constants/text_styles.dart';

import 'colors.dart';

final textFieldStyle = InputDecoration(
    filled: true,
    fillColor: UIColors.white,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2,
        color: UIColors.yellow,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: UIColors.yellow)),
    hintStyle: UITextStyle.normalSmall.copyWith(color: UIColors.black)
);