import 'package:flutter/material.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/routes/app_routes.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Test One Screen'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.pushName(AppRoutes.testTwo);
          },
          child: const Text(
            'Go to Test Two Screen',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
