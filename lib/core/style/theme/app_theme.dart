import 'package:flutter/material.dart';
import 'package:store/core/style/colors/colors_dark.dart';
import 'package:store/core/style/colors/colors_light.dart';
import 'package:store/core/style/theme/color_extension.dart';
import 'package:store/core/style/theme/asset_extension.dart';

ThemeData themeDark(){
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>> [MyColors.dark, MyAssets.dark],
    useMaterial3: true,
  );
}

ThemeData themeLight(){
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: const <ThemeExtension<dynamic>> [MyColors.light, MyAssets.light],
    useMaterial3: true,
  );
}