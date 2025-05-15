import 'package:flutter/material.dart';

class AppColor {
  // Basic Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Color(0xFF00FFFFFF);

  // Primary Colors
  static const Color primary_5 = Color(0xFFF3F1FE);
  static const Color primary_10 = Color(0xFFDDD7FC);
  static const Color primary_20 = Color(0xFFBBB1FA);
  static const Color primary_30 = Color(0xFF9487F1);
  static const Color primary_40 = Color(0xFF7466E3);
  static const Color primary_50 = Color(0xFF4838D1);
  static const Color primary_60 = Color(0xFF3528B3);
  static const Color primary_70 = Color(0xFF261C96);
  static const Color primary_80 = Color(0xFF191179);
  static const Color primary_90 = Color(0xFF100A64);
  static const Color primary_100 = Color(0xFF090638);

  // Accent Colors
  static const Color accent_5 = Color(0xFFFFFAF5);
  static const Color accent_10 = Color(0xFFFEEEDD);
  static const Color accent_20 = Color(0xFFFED9BB);
  static const Color accent_30 = Color(0xFFFCBE99);
  static const Color accent_40 = Color(0xFFFAA47F);
  static const Color accent_50 = Color(0xFFF77A55);
  static const Color accent_60 = Color(0xFFD4553E);
  static const Color accent_70 = Color(0xFFB1362A);
  static const Color accent_80 = Color(0xFF8F1C1B);
  static const Color accent_90 = Color(0xFF761016);
  static const Color accent_100 = Color(0xFF480A0D);

  // Neutral Colors
  static const Color neutral_5 = Color(0xFFF5F5FA);
  static const Color neutral_10 = Color(0xFFEBEBF5);
  static const Color neutral_20 = Color(0xFFD5D5E3);
  static const Color neutral_30 = Color(0xFFB8B8C7);
  static const Color neutral_40 = Color(0xFFB8B8C7);
  static const Color neutral_50 = Color(0xFF9292A2);
  static const Color neutral_60 = Color(0xFF6A6A8B);
  static const Color neutral_70 = Color(0xFF494974);
  static const Color neutral_80 = Color(0xFF2E2E5D);
  static const Color neutral_90 = Color(0xFF1C1C4D);
  static const Color neutral_100 = Color(0xFF0F0F29);
}

class AppFontFamily {
  static const poppinsLight = 'PoppinsLight';
  static const poppinsRegular = 'PoppinsRegular';
  static const poppinsMedium = 'PoppinsMedium';
  static const poppinsSemiBold = 'PoppinsSemiBold';
  static const poppinsBold = 'PoppinsBold';

  // Light Font Family
  static TextStyle light_48 = TextStyle(fontFamily: poppinsLight, fontSize: 48);

  static TextStyle light_32 = TextStyle(fontFamily: poppinsLight, fontSize: 32);

  static TextStyle light_24 = TextStyle(fontFamily: poppinsLight, fontSize: 24);

  static TextStyle light_20 = TextStyle(fontFamily: poppinsLight, fontSize: 20);

  static TextStyle light_16 = TextStyle(fontFamily: poppinsLight, fontSize: 16);

  static TextStyle light_14 = TextStyle(fontFamily: poppinsLight, fontSize: 14);

  static TextStyle light_12 = TextStyle(fontFamily: poppinsLight, fontSize: 12);

  static TextStyle light_10 = TextStyle(fontFamily: poppinsLight, fontSize: 10);

  // Regular Font Family
  static TextStyle regular_48 = TextStyle(
    fontFamily: poppinsRegular,
    fontSize: 48,
  );

  static TextStyle regular_32 = TextStyle(
    fontFamily: poppinsRegular,
    fontSize: 32,
  );

  static TextStyle regular_24 = TextStyle(
    fontFamily: poppinsRegular,
    fontSize: 24,
  );

  static TextStyle regular_20 = TextStyle(
    fontFamily: poppinsRegular,
    fontSize: 20,
  );

  static TextStyle regular_16 = TextStyle(
    fontFamily: poppinsRegular,
    fontSize: 16,
  );

  static TextStyle regular_14 = TextStyle(
    fontFamily: poppinsRegular,
    fontSize: 14,
  );

  static TextStyle regular_12 = TextStyle(
    fontFamily: poppinsRegular,
    fontSize: 12,
  );

  static TextStyle regular_10 = TextStyle(
    fontFamily: poppinsRegular,
    fontSize: 10,
  );

  // Medium Font Family
  static TextStyle medium_48 = TextStyle(
    fontFamily: poppinsMedium,
    fontSize: 48,
  );

  static TextStyle medium_32 = TextStyle(
    fontFamily: poppinsMedium,
    fontSize: 32,
  );

  static TextStyle medium_24 = TextStyle(
    fontFamily: poppinsMedium,
    fontSize: 24,
  );

  static TextStyle medium_20 = TextStyle(
    fontFamily: poppinsMedium,
    fontSize: 20,
  );

  static TextStyle medium_16 = TextStyle(
    fontFamily: poppinsMedium,
    fontSize: 16,
  );

  static TextStyle medium_14 = TextStyle(
    fontFamily: poppinsMedium,
    fontSize: 14,
  );

  static TextStyle medium_12 = TextStyle(
    fontFamily: poppinsMedium,
    fontSize: 12,
  );

  static TextStyle medium_10 = TextStyle(
    fontFamily: poppinsMedium,
    fontSize: 10,
  );

  // SemiBold Font Family
  static TextStyle semibold_48 = TextStyle(
    fontFamily: poppinsSemiBold,
    fontSize: 48,
  );

  static TextStyle semibold_32 = TextStyle(
    fontFamily: poppinsSemiBold,
    fontSize: 32,
  );

  static TextStyle semibold_24 = TextStyle(
    fontFamily: poppinsSemiBold,
    fontSize: 24,
  );

  static TextStyle semibold_20 = TextStyle(
    fontFamily: poppinsSemiBold,
    fontSize: 20,
  );

  static TextStyle semibold_16 = TextStyle(
    fontFamily: poppinsSemiBold,
    fontSize: 16,
  );

  static TextStyle semibold_14 = TextStyle(
    fontFamily: poppinsSemiBold,
    fontSize: 14,
  );

  static TextStyle semibold_12 = TextStyle(
    fontFamily: poppinsSemiBold,
    fontSize: 12,
  );

  static TextStyle semibold_10 = TextStyle(
    fontFamily: poppinsSemiBold,
    fontSize: 10,
  );

  // Bold Font Family
  static TextStyle bold_48 = TextStyle(fontFamily: poppinsBold, fontSize: 48);

  static TextStyle bold_32 = TextStyle(fontFamily: poppinsBold, fontSize: 32);

  static TextStyle bold_24 = TextStyle(fontFamily: poppinsBold, fontSize: 24);

  static TextStyle bold_20 = TextStyle(fontFamily: poppinsBold, fontSize: 20);

  static TextStyle bold_16 = TextStyle(fontFamily: poppinsBold, fontSize: 16);

  static TextStyle bold_14 = TextStyle(fontFamily: poppinsBold, fontSize: 14);

  static TextStyle bold_12 = TextStyle(fontFamily: poppinsBold, fontSize: 12);

  static TextStyle bold_10 = TextStyle(fontFamily: poppinsBold, fontSize: 10);

  static TextStyle textLink = TextStyle(
    fontFamily: poppinsSemiBold,
    fontSize: 14,
    color: AppColor.accent_50,
  );

  static TextStyle textLabel(BuildContext context) {
    return TextStyle(
      fontFamily: poppinsRegular,
      fontSize: 14,
      color:
          Theme.of(context).brightness == Brightness.dark
              ? AppColor.white
              : AppColor.neutral_80,
    );
  }
  
  static TextStyle textTitle(BuildContext context) {
    return TextStyle(
      fontFamily: poppinsSemiBold,
      fontSize: 16,
      color:
          Theme.of(context).brightness == Brightness.dark
              ? AppColor.white
              : AppColor.neutral_80,
    );
  }
  
  static String appLogo(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
              ? 'assets/images/logo_dark.png'
              : 'assets/images/logo.png';
  }
}

// Buttons
class FlatButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback? onPressed;
  final bool disabled;

  const FlatButton({
    Key? key,
    required this.text,
    this.icon,
    this.onPressed,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Opacity(
      opacity: disabled ? 0.2 : 1.0,
      child: ElevatedButton(
        onPressed: disabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor:
              isDark ? AppColor.primary_50 : AppColor.primary_50,
          backgroundColor: isDark ? AppColor.primary_50 : AppColor.primary_50,
          textStyle: AppFontFamily.medium_16,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child:
            icon != null
                ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(icon, color: Colors.white),
                    const SizedBox(width: 12),
                    Text(text, style: const TextStyle(color: Colors.white)),
                  ],
                )
                : Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}

class OutlineButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback? onPressed;
  final bool disabled;

  const OutlineButton({
    required this.text,
    this.icon,
    this.onPressed,
    this.disabled = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Opacity(
      opacity: disabled ? 0.2 : 1.0,
      child: OutlinedButton(
        onPressed: disabled ? null : onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: isDark ? AppColor.neutral_20 : AppColor.primary_50,
            width: 1,
          ),
          textStyle: AppFontFamily.medium_16,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child:
            icon != null
                ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      icon,
                      color: isDark ? Colors.white : AppColor.primary_50,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      text,
                      style: TextStyle(
                        color: isDark ? Colors.white : AppColor.primary_50,
                      ),
                    ),
                  ],
                )
                : Text(
                  text,
                  style: TextStyle(
                    color: isDark ? Colors.white : AppColor.primary_50,
                  ),
                ),
      ),
    );
  }
}

class GhostButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback? onPressed;
  final bool disabled;

  const GhostButton({
    required this.text,
    this.icon,
    this.onPressed,
    this.disabled = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Opacity(
      opacity: disabled ? 0.2 : 1.0,
      child: TextButton(
        onPressed: disabled ? null : onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          textStyle: AppFontFamily.medium_16,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child:
            icon != null
                ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      icon,
                      color: isDark ? Colors.white : AppColor.primary_50,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      text,
                      style: TextStyle(
                        color: isDark ? Colors.white : AppColor.primary_50,
                      ),
                    ),
                  ],
                )
                : Text(
                  text,
                  style: TextStyle(
                    color: isDark ? Colors.white : AppColor.primary_50,
                  ),
                ),
      ),
    );
  }
}

// Input Decoration Theme
class AppInputDecoration {
  static TextStyle inputTextStyle(BuildContext context) {
    return TextStyle(
      color:
          Theme.of(context).brightness == Brightness.dark
              ? AppColor.neutral_60
              : AppColor.neutral_80,
      fontSize: 14,
      fontFamily: AppFontFamily.poppinsMedium,
    );
  }

  static InputDecorationTheme inputDecorationTheme(bool isDark) {
    return InputDecorationTheme(
      filled: true,
      fillColor: isDark ? AppColor.neutral_90 : AppColor.neutral_5,
      hoverColor: AppColor.transparent,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColor.primary_50, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColor.transparent, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColor.primary_50, width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: AppColor.accent_50, // Same for both themes
          width: 1,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: AppColor.accent_50, // Same for both themes
          width: 1,
        ),
      ),
      labelStyle: TextStyle(
        color: isDark ? AppColor.neutral_60 : AppColor.neutral_40,
        fontSize: 14,
        fontFamily: AppFontFamily.poppinsMedium,
      ),
      floatingLabelStyle: TextStyle(
        // color: isDark ? AppColor.neutral_60 : AppColor.primary_50,
        fontSize: 14,
        fontFamily: AppFontFamily.poppinsMedium,
      ),
      helperStyle: TextStyle(
        color: isDark ? AppColor.neutral_60 : AppColor.neutral_40,
        fontSize: 10,
        fontFamily: AppFontFamily.poppinsMedium,
      ),
      counterStyle: TextStyle(
        color: isDark ? AppColor.neutral_60 : AppColor.neutral_40,
        fontSize: 10,
        fontFamily: AppFontFamily.poppinsMedium,
      ),
      errorStyle: TextStyle(
        color: AppColor.accent_50,
        fontSize: 10,
        fontFamily: AppFontFamily.poppinsMedium,
      ),
      suffixIconColor: isDark ? AppColor.neutral_70 : AppColor.neutral_70,
      prefixIconColor: isDark ? AppColor.neutral_70 : AppColor.neutral_70,
    );
  }
}
