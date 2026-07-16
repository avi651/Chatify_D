import 'package:flutter/material.dart';
import 'package:chatify/core/resources/app_sizes.dart';
import 'package:chatify/core/theme/app_text_theme.dart';
import 'package:chatify/core/widgets/app_button.dart';
import 'package:chatify/core/widgets/app_password_field.dart';
import 'package:chatify/core/widgets/app_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSizes.sp24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const SizedBox(height: AppSizes.sp40),

              // Logo
              Center(
                child: Container(
                  height: 100,

                  width: 100,

                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,

                    borderRadius: BorderRadius.circular(AppSizes.sp24),
                  ),

                  child: Icon(
                    Icons.chat,

                    size: 60,

                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),

              const SizedBox(height: AppSizes.sp32),

              Text("Welcome Back", style: AppTextTheme.h2(context)),

              const SizedBox(height: AppSizes.sp08),

              Text(
                "Login to continue chatting",
                style: AppTextTheme.small(context),
              ),

              const SizedBox(height: AppSizes.sp32),

              AppTextField(
                label: "Email",

                hint: "Enter your email",

                icon: Icons.email_outlined,

                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: AppSizes.sp16),

              AppPasswordField(label: "Password", hint: "Enter your password"),

              const SizedBox(height: AppSizes.sp24),

              Align(
                alignment: Alignment.centerRight,

                child: TextButton(
                  onPressed: () {},

                  child: Text(
                    "Forgot Password?",

                    style: AppTextTheme.bodyBold(
                      context,
                    ).copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),

              const SizedBox(height: AppSizes.sp16),

              AppButton(title: "Login", onPressed: () {}),

              const SizedBox(height: AppSizes.sp24),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    "Don't have an account?",
                    style: AppTextTheme.small(context),
                  ),

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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
