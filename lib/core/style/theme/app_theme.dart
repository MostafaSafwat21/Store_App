import 'package:flutter/material.dart';
import 'package:store/core/style/colors/colors_dark.dart';
import 'package:store/core/style/colors/colors_light.dart';
import 'package:store/core/style/fonts/font_family_helper.dart';
import 'package:store/core/style/theme/color_extension.dart';
import 'package:store/core/style/theme/asset_extension.dart';

ThemeData themeDark(){
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>> [MyColors.dark, MyAssets.dark],
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: ColorsDark.white,
        fontFamily: FontFamilyHelper.getLocalozedFontFamily()
      ),
    ),
  );
}

ThemeData themeLight(){
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: const <ThemeExtension<dynamic>> [MyColors.light, MyAssets.light],
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: ColorsLight.black,
          fontFamily: FontFamilyHelper.getLocalozedFontFamily()
      ),
    ),
  );
}