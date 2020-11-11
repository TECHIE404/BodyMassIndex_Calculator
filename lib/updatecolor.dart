import 'main.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

Color maleCardColor = inactiveCardColor;
Color femaleCardColor = inactiveCardColor;

void updateColor(Gender selectedGender) {
  //1-male
  //2-female
  if (selectedGender == Gender.male) {
    if (maleCardColor == inactiveCardColor) {
      maleCardColor = activeCardColor;
      femaleCardColor = inactiveCardColor;
    } else {
      maleCardColor = inactiveCardColor;
    }
  } else if (selectedGender == Gender.female) {
    if (femaleCardColor == inactiveCardColor) {
      femaleCardColor = activeCardColor;
      maleCardColor = inactiveCardColor;
    } else {
      femaleCardColor = inactiveCardColor;
    }
  }
}
