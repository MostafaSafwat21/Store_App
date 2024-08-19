import 'package:flutter/material.dart';
import 'package:store/core/common/animate/animate_do.dart';

class UserAvaterImage extends StatelessWidget {
  const UserAvaterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 500,
      child: CircleAvatar(
        radius: 38,
        backgroundImage: NetworkImage(''),
      ),
    );
  }
}
