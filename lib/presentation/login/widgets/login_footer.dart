import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_theme.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Text("Don't have an account?", style: AppTextTheme.small(context)),

        TextButton(
          onPressed: () {},

          child: Text(
            "Sign Up",

            style: AppTextTheme.bodyBold(
              context,
            ).copyWith(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ],
    );
  }
}
