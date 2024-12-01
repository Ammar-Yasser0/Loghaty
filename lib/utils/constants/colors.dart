import 'package:flutter/material.dart';

// #13EA47
// #77CCA3
// #00FF03
// #FFF4A4
// #FC7F00
// #ED7D31
// #2FA3EE
// #FFC100
// #FF7F7E
// #010A43
// #FCD74B

/*
Primary (#2FA3EE): App header, navigation bar, and major buttons.
Secondary (#FFC100): Highlighting "sign up" buttons or featured sections.
Accent (#77CCA3): Interactive elements like tabs, links, or icons.
Background (#FFF4A4): Light areas of the app, like behind text.

Primary (#13EA47): App logo, main navigation bar, or titles.
Secondary (#FC7F00): Buttons like "Start Lesson" or "Next," and notification badges.
Accent (#2FA3EE): Links, icons, or progress bars to subtly draw attention.
Background (#FFF4A4): Page backgrounds, card components, or input fields.
*/
class FColors {
  // App theme colors
  static const Color primary = Color(0xFF010A43);
  static const Color secondary = Color(0xFFFFC100);
  static const Color accent = Color(0xFF13EA47);

  // static const Color primary = Color(0xFF13EA47);
  // static const Color secondary = Color(0xFFFC7F00);
  // static const Color accent = Color(0xFF2FA3EE);

  // Text colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF4A4A4A);
  static const Color textWhite = Colors.white;

  // Background colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF5F5F5);
  static const Color secondaryBackground = Color(0xFFF5DEB3);

  // Background Container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = FColors.white.withOpacity(0.1);

  // Button colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error and validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
