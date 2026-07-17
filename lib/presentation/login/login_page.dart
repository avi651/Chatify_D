import 'package:chatify/presentation/login/widgets/login_button.dart';
import 'package:chatify/presentation/login/widgets/login_footer.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_spacing.dart';

import 'widgets/login_logo.dart';
import 'widgets/login_header.dart';
import 'widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const SizedBox(height: AppSpacing.xl),

              const LoginLogo(),

              const SizedBox(height: AppSpacing.xl),

              const LoginHeader(),

              const SizedBox(height: AppSpacing.xl),

              const LoginForm(),

              const SizedBox(height: AppSpacing.md),

              const LoginButton(),

              const SizedBox(height: AppSpacing.lg),

              const LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
