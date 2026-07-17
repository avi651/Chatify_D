import 'package:chatify/core/resources/app_sizes.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_theme.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text("Welcome Back", style: AppTextTheme.h2(context)),
        const SizedBox(height: AppSizes.sp08),
        Text("Login to continue chatting", style: AppTextTheme.small(context)),
      ],
    );
  }
}
