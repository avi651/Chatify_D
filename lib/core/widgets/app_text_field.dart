import 'package:flutter/material.dart';

import '../resources/app_radius.dart';
import '../resources/app_sizes.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_theme.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,

    required this.label,

    required this.hint,

    required this.icon,

    this.controller,

    this.keyboardType,

    this.validator,

    this.obscureText = false,

    this.onChanged,

    this.errorText,
  });

  final String label;

  final String hint;

  final IconData icon;

  final TextEditingController? controller;

  final TextInputType? keyboardType;

  final String? Function(String?)? validator;

  final bool obscureText;

  final ValueChanged<String>? onChanged;

  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,

      keyboardType: keyboardType,

      validator: validator,

      obscureText: obscureText,

      onChanged: onChanged,

      style: AppTextTheme.body(context),

      decoration: InputDecoration(
        labelText: label,

        hintText: hint,

        errorText: errorText,

        labelStyle: AppTextTheme.small(context),

        hintStyle: AppTextTheme.small(context),

        prefixIcon: Icon(icon, color: AppColors.textSecondary),

        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSizes.sp16,

          vertical: AppSizes.sp16,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.medium),

          borderSide: const BorderSide(color: AppColors.border),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.medium),

          borderSide: const BorderSide(color: AppColors.border),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.medium),

          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,

            width: 2,
          ),
        ),
      ),
    );
  }
}
