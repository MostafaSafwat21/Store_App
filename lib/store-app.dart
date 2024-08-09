import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/app/connectivity_controller.dart';
import 'package:store/core/app/env.variables.dart';
import 'package:store/core/common/screens/no_network_screen.dart';
import 'package:store/core/common/style/fonts/font_family_helper.dart';
import 'package:store/core/common/style/fonts/font_weight_helper.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the connectivity controller
    ConnectivityController.instance.init();

    return ValueListenableBuilder<bool>(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, isConnected, __) {
        return ScreenUtilInit(
          designSize: const Size(375,812),
          minTextAdapt: true,
          child: MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: isConnected ? const HomePage() : const NoNetworkScreen(),
          ),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text(
              'Hello ...',
              style: TextStyle(
                fontSize: 24,
                fontFamily: FontFamilyHelper.PoppinsEnglish,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
            Text(
              '.. وليد محمود',
              style: TextStyle(
                fontSize: 24,
                fontFamily: FontFamilyHelper.CairoArbic,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
