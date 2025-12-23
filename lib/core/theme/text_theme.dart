import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class UITextStyle {
  static  final _baseTextStyle = GoogleFonts.robotoFlex(
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
    textBaseline: TextBaseline.alphabetic,
  );

  static final TextStyle headline1 = _baseTextStyle.copyWith(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    height: 1.22,
  );

  static final TextStyle headline2 = _baseTextStyle.copyWith(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.25,
  );

  static final TextStyle headline3 = _baseTextStyle.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1.28,
  );

  static final TextStyle headline4 = _baseTextStyle.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.33,
  );

  static final TextStyle headline5 = _baseTextStyle.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    height: 1.27,
  );

  static final TextStyle headline6 = _baseTextStyle.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    height: 1.33,
  );

  static final TextStyle subtitle1 = _baseTextStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: 0.1,
  );

  static final TextStyle subtitle2 = _baseTextStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.42,
    letterSpacing: 0.1,
  );

  static final TextStyle bodyText1 = _baseTextStyle.copyWith(
    fontSize: 16,
    height: 1.5,
    letterSpacing: 0.5,
  );

  static final TextStyle bodyText2 = _baseTextStyle.copyWith(
    fontSize: 14,
    height: 1.42,
    letterSpacing: 0.25,
  );

  static final TextStyle caption = _baseTextStyle.copyWith(
    fontSize: 12,
    height: 1.33,
    letterSpacing: 0.4,
  );

  static final TextStyle button = _baseTextStyle.copyWith(
    fontSize: 16,
    height: 1.42,
    letterSpacing: 0.1,
  );

  static final TextStyle overline = _baseTextStyle.copyWith(
    fontSize: 11,
    height: 1.33,
    letterSpacing: 0.5,
  );

  static final TextStyle labelSmall = _baseTextStyle.copyWith(
    fontSize: 10,
    height: 1.45,
    letterSpacing: 0.5,
  );
}
