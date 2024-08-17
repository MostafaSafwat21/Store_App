import 'package:flutter/material.dart';
import 'package:store/core/style/images/app_images.dart';

class PageUnderBuildScreen extends StatelessWidget {
  const PageUnderBuildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 40.0,
          horizontal: 10.0,
        ),
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.underBuild),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
