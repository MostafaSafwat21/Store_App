import 'package:flutter/material.dart';
import 'package:store/core/style/colors/colors_dark.dart';
import 'package:store/core/style/colors/colors_light.dart';
import 'package:store/core/style/theme/color_extension.dart';
import 'package:store/core/style/theme/image_extension.dart';

ThemeData themeDark(){
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: <ThemeExtension<dynamic>> [MyColors.dark, MyImages.dark],
    useMaterial3: true,
  );
}

ThemeData themeLight(){
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: <ThemeExtension<dynamic>> [MyColors.light, MyImages.light],
    useMaterial3: true,
  );
}