import 'package:example/core/constant/app_colors.dart';
import 'package:example/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class AppTheme {
  const AppTheme();

  Brightness get brightness => Brightness.light;

  Color get backgroundColor => AppColors.light;

  Color get primary => AppColors.light;

  ThemeData get theme =>
      FlexThemeData.light(
        scheme: FlexScheme.custom,
        colors: FlexSchemeColor.from(
          brightness: brightness,
          primary: primary,
          swapOnMaterial3: true,
        ),
        useMaterial3: true,
        useMaterial3ErrorColors: true,
      ).copyWith(
        textTheme: AppTheme().textTheme,
        iconTheme: IconThemeData(color: AppColors.text),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          surfaceTintColor: AppColors.light,
          backgroundColor: AppColors.light,
        ),
      );

  TextTheme get textTheme => contentTextTheme;

  static final contentTextTheme = uiTextTheme;

  static final uiTextTheme =
      TextTheme(
        displayLarge: UITextStyle.headline1,
        displayMedium: UITextStyle.headline2,
        displaySmall: UITextStyle.headline3,
        headlineMedium: UITextStyle.headline4,
        headlineSmall: UITextStyle.headline5,
        titleLarge: UITextStyle.headline6,
        titleMedium: UITextStyle.subtitle1,
        titleSmall: UITextStyle.subtitle2,
        bodyLarge: UITextStyle.bodyText1,
        bodyMedium: UITextStyle.bodyText2,
        labelLarge: UITextStyle.button,
        bodySmall: UITextStyle.caption,
        labelSmall: UITextStyle.overline,
      ).apply(
        bodyColor: AppColors.text,
        displayColor: AppColors.text,
        decorationColor: AppColors.text,
      );
}
