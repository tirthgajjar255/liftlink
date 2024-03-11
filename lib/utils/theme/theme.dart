import 'package:flutter/material.dart';
import 'package:liftlink/utils/theme/custom_theme/text_theme.dart';
import 'package:liftlink/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:liftlink/utils/theme/custom_theme/appbar_theme.dart';
import 'package:liftlink/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:liftlink/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:liftlink/utils/theme/custom_theme/chip_theme.dart';
import 'package:liftlink/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:liftlink/utils/theme/custom_theme/text_field_theme.dart';

class LAppTheme {

  LAppTheme._();
static const Color bgColor = Color(0xFFFF960E);
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Schyler',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: LTextTheme.lightTextTheme,
    elevatedButtonTheme: LElevatedButtonTheme.LightElevatedButtonTheme,
    chipTheme: LChipTheme. LightChipTheme,
    appBarTheme: LAppBarTheme. LightAppBarTheme,
    checkboxTheme: LCheckboxTheme. LightCheckboxTheme,
    bottomSheetTheme: LBottomSheetTheme. LightBottomSheetTheme,
    outlinedButtonTheme: LOutlinedButtonTheme. lightOutlinedButtonTheme,
    inputDecorationTheme: LTextFormFieldTheme. LightInputDecorationTheme,
  );

  static const Color bgColor1 = Color(0xFFFF960E);
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Schyler',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: LTextTheme.darkTextTheme,
    elevatedButtonTheme: LElevatedButtonTheme.DarkElevatedButtonTheme,
    chipTheme: LChipTheme. darkChipTheme,
    appBarTheme: LAppBarTheme. darkAppBarTheme,
    checkboxTheme: LCheckboxTheme. darkCheckboxTheme,
    bottomSheetTheme: LBottomSheetTheme. darkBottomSheetTheme,
    outlinedButtonTheme: LOutlinedButtonTheme. darkOutlinedButtonTheme,
    inputDecorationTheme: LTextFormFieldTheme. darkInputDecorationTheme,
  );
}