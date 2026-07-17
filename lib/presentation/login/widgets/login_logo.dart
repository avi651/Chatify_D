import 'package:chatify/core/resources/app_sizes.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_radius.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: Container(
        height: AppSizes.sp100,
        width: AppSizes.sp100,
        decoration: BoxDecoration(
          color: colorScheme.primary,
          borderRadius: BorderRadius.circular(AppRadius.large),
        ),

        child: Icon(
          Icons.chat,
          size: AppSizes.sp60,
          color: colorScheme.onPrimary,
        ),
      ),
    );
  }
}
