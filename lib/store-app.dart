import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/app/connectivity_controller.dart';
import 'package:store/core/app/env.variables.dart';
import 'package:store/core/common/screens/no_network_screen.dart';
import 'package:store/core/routes/app_routes.dart';

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
            onGenerateRoute: AppRoutes.onGenerateRoute,
            initialRoute: AppRoutes.testOne,
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

      ),
    );
  }
}
