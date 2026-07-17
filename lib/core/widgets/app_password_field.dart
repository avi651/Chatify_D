import 'package:flutter/material.dart';

import '../resources/app_radius.dart';
import '../resources/app_sizes.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_theme.dart';

class AppPasswordField extends StatefulWidget {
  const AppPasswordField({
    super.key,

    required this.label,

    required this.hint,

    this.controller,

    this.validator,

    this.onChanged,

    this.errorText,
  });

  final String label;

  final String hint;

  final TextEditingController? controller;

  final String? Function(String?)? validator;

  final ValueChanged<String>? onChanged;

  final String? errorText;

  @override
  State<AppPasswordField> createState() => _AppPasswordFieldState();
}

class _AppPasswordFieldState extends State<AppPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key("password_field"),

      controller: widget.controller,

      validator: widget.validator,

      onChanged: widget.onChanged,

      obscureText: _obscureText,

      style: AppTextTheme.body(context),

      decoration: InputDecoration(
        labelText: widget.label,

        hintText: widget.hint,

        errorText: widget.errorText,

        labelStyle: AppTextTheme.small(context),

        hintStyle: AppTextTheme.small(context),

        prefixIcon: const Icon(Icons.lock_outline),

        suffixIcon: IconButton(
          key: const Key("password_visibility_button"),

          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },

          icon: Icon(
            _obscureText
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,

            color: AppColors.textSecondary,
          ),
        ),

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
