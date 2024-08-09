import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store/core/app/env.variables.dart';
import 'package:store/store-app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
    await EnvVariable.instance.init(EnvType: EnvTypeEnum.dev);
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
    ).then((_) {
      runApp(const StoreApp());
    });
  }



