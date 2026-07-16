import 'package:chatify/core/theme/app_text_theme.dart';
import 'package:chatify/core/widgets/progressive_dots.dart';

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,

    required this.title,

    required this.onPressed,

    this.isLoading = false,
  });

  final String title;

  final VoidCallback onPressed;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,

      height: 52,

      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,

        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,

          foregroundColor: colorScheme.onPrimary,

          disabledBackgroundColor: colorScheme.primary.withValues(alpha: 0.5),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),

          elevation: 0,
        ),

        child: isLoading
            ? const SizedBox(height: 22, width: 22, child: ProgressiveDots())
            : Text(title, style: AppTextTheme.button(context)),
      ),
    );
  }
}
