import 'package:flutter/material.dart';
import 'package:store/core/style/colors/colors_dark.dart';
import 'package:store/core/style/colors/colors_light.dart';

class MyColors extends ThemeExtension<MyColors>{
  MyColors({required this.mainColor});

  final Color? mainColor;

  @override
  ThemeExtension<MyColors> copyWith({
    Color? mainColor,
})
  {
    return MyColors(
      mainColor: mainColor,
    );
  }

  @override
  ThemeExtension<MyColors> lerp(
      covariant ThemeExtension<MyColors>? other,
      double t,
      )
  {
    if (other is! MyColors){
      return this;
    }
    return MyColors(
      mainColor: other.mainColor,
    );
  }

  static MyColors dark = MyColors(
    mainColor: ColorsDark.mainColor,
  );

  static MyColors light = MyColors(
    mainColor: ColorsLight.mainColor,
  );

}