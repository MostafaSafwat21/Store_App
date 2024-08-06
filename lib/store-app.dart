import 'package:flutter/material.dart';
import 'package:store/core/app/connectivity_controller.dart';
import 'package:store/core/app/env.variables.dart';
import 'package:store/core/common/screens/no_network_screen.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the connectivity controller
    ConnectivityController.instance.init();

    return ValueListenableBuilder<bool>(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, isConnected, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
          title: isConnected ? 'Store' : 'No Network',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: isConnected ? const HomePage() : const NoNetworkScreen(),
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
        child: Text('Hello, World!'),
      ),
    );
  }
}
