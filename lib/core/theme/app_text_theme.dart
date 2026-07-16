import 'package:flutter/material.dart';

import '../resources/app_sizes.dart';

class AppTextTheme {
  AppTextTheme._();

  static const String fontFamily = "Poppins";

  static TextStyle _base(BuildContext context) {
    return TextStyle(
      fontFamily: fontFamily,

      height: 1.2,

      color: Theme.of(context).colorScheme.onSurface,
    );
  }

  // ==========================
  // Headings
  // ==========================

  static TextStyle h1(BuildContext context) {
    return _base(context).copyWith(
      fontSize: AppSizes.sp32,

      fontWeight: FontWeight.w700,

      letterSpacing: -0.5,
    );
  }

  static TextStyle h2(BuildContext context) {
    return _base(context).copyWith(
      fontSize: AppSizes.sp24,

      fontWeight: FontWeight.w700,

      letterSpacing: -0.3,
    );
  }

  static TextStyle h3(BuildContext context) {
    return _base(
      context,
    ).copyWith(fontSize: AppSizes.sp20, fontWeight: FontWeight.w600);
  }

  static TextStyle h4(BuildContext context) {
    return _base(
      context,
    ).copyWith(fontSize: AppSizes.sp18, fontWeight: FontWeight.w600);
  }

  // ==========================
  // Body
  // ==========================

  static TextStyle body(BuildContext context) {
    return _base(
      context,
    ).copyWith(fontSize: AppSizes.sp16, fontWeight: FontWeight.w400);
  }

  static TextStyle bodyMedium(BuildContext context) {
    return _base(
      context,
    ).copyWith(fontSize: AppSizes.sp16, fontWeight: FontWeight.w500);
  }

  static TextStyle bodyBold(BuildContext context) {
    return _base(
      context,
    ).copyWith(fontSize: AppSizes.sp16, fontWeight: FontWeight.w700);
  }

  // ==========================
  // Small
  // ==========================

  static TextStyle small(BuildContext context) {
    return _base(context).copyWith(
      fontSize: AppSizes.sp14,

      color: Theme.of(context).colorScheme.onSurfaceVariant,
    );
  }

  static TextStyle smallBold(BuildContext context) {
    return _base(
      context,
    ).copyWith(fontSize: AppSizes.sp14, fontWeight: FontWeight.w600);
  }

  // ==========================
  // Button
  // ==========================

  static TextStyle button(BuildContext context) {
    return _base(context).copyWith(
      fontSize: AppSizes.sp16,

      fontWeight: FontWeight.w600,

      color: Theme.of(context).colorScheme.onPrimary,
    );
  }

  // ==========================
  // Caption
  // ==========================

  static TextStyle caption(BuildContext context) {
    return _base(context).copyWith(
      fontSize: AppSizes.sp12,

      color: Theme.of(context).colorScheme.onSurfaceVariant,
    );
  }
}
