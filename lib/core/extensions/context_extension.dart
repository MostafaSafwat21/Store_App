import 'package:flutter/material.dart';
import 'package:store/core/style/theme/color_extension.dart';
import 'package:store/core/style/theme/image_extension.dart';

extension ContextExt on BuildContext{

  // Color
  MyColors get color => Theme.of(this).extension<MyColors>()!;

  // Image
  MyImages get image => Theme.of(this).extension<MyImages>()!;

  Future<dynamic> pushName(String routeName, {Object? arguments}){
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() => Navigator.of(this).pop();

}