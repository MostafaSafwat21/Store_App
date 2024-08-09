import 'package:flutter/material.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/routes/app_routes.dart';

class TestTwoScreen extends StatelessWidget {
  const TestTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Test Two Screen'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.pushName(AppRoutes.testOne);
          },
          child: const Text(
            'Go to Test One Screen',
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
