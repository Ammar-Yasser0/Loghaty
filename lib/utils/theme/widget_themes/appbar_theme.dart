import 'package:flutter/material.dart';
import 'package:loghaty/utils/constants/sizes.dart';
import '../../constants/colors.dart';

class FAppBarTheme {
  FAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    centerTitle: false,
    scrolledUnderElevation: 20,
    backgroundColor: FColors.primary,
    elevation: 20,
    iconTheme: IconThemeData(color: FColors.black, size: FSizes.iconMd),
    actionsIconTheme: IconThemeData(color: FColors.black, size: FSizes.iconMd),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: FColors.textWhite,
    ),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: FColors.black, size: FSizes.iconMd),
    actionsIconTheme: IconThemeData(color: FColors.white, size: FSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: FColors.white),
  );
}
