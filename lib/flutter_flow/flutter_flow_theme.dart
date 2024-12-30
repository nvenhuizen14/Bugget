// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color primaryBtnText;
  late Color lineColor;
  late Color black;
  late Color dukeBlue;
  late Color navyBlue;
  late Color oxfordBlue;
  late Color navyBlue2;
  late Color backgroundComponents;
  late Color grayIcon;
  late Color gray200;
  late Color gray600;
  late Color black600;
  late Color tertiary400;
  late Color textColor;
  late Color overlay;
  late Color btnText;
  late Color customColor3;
  late Color customColor4;
  late Color white;
  late Color background;
  late Color customColor1;
  late Color customColor2;
  late Color customColor5;
  late Color customColor6;
  late Color customColor7;
  late Color customColor8;
  late Color customColor9;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFC83206);
  late Color secondary = const Color(0xFF315A72);
  late Color tertiary = const Color(0xFF637584);
  late Color alternate = const Color(0xFFA3D3E2);
  late Color primaryText = const Color(0xFF637584);
  late Color secondaryText = const Color(0xFF91B5BF);
  late Color primaryBackground = const Color(0xFF232529);
  late Color secondaryBackground = const Color(0xFF315A72);
  late Color accent1 = const Color(0xFF5BB8DB);
  late Color accent2 = const Color(0xFF512933);
  late Color accent3 = const Color(0xFF0D579A);
  late Color accent4 = const Color(0xFF4B6770);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFE21C3D);
  late Color info = const Color(0xFF1C4494);

  late Color primaryBtnText = const Color(0xFFFFFFFF);
  late Color lineColor = const Color(0xFF22282F);
  late Color black = const Color(0xFF000000);
  late Color dukeBlue = const Color(0xFF0000A5);
  late Color navyBlue = const Color(0xFF00005C);
  late Color oxfordBlue = const Color(0xFF00002A);
  late Color navyBlue2 = const Color(0xFF00008B);
  late Color backgroundComponents = const Color(0xFF1D2428);
  late Color grayIcon = const Color(0xFF95A1AC);
  late Color gray200 = const Color(0xFF22282F);
  late Color gray600 = const Color(0xFF262D34);
  late Color black600 = const Color(0xFF090F13);
  late Color tertiary400 = const Color(0xFF39D2C0);
  late Color textColor = const Color(0xFF1E2429);
  late Color overlay = const Color(0xB314181B);
  late Color btnText = const Color(0xFFFFFFFF);
  late Color customColor3 = const Color(0xFFDF3F3F);
  late Color customColor4 = const Color(0xFF090F13);
  late Color white = const Color(0xFFFFFFFF);
  late Color background = const Color(0xFF1D2429);
  late Color customColor1 = const Color(0xFF59743D);
  late Color customColor2 = const Color(0xFF5E3788);
  late Color customColor5 = const Color(0xFFB2EF4E);
  late Color customColor6 = const Color(0xFF5A18AE);
  late Color customColor7 = const Color(0xFF5A08E8);
  late Color customColor8 = const Color(0xFF7589A0);
  late Color customColor9 = const Color(0xFFE3F851);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Offside';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Offside';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Offside';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w900,
        fontSize: 24.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineLargeFamily => 'Offside';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Oswald';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Oswald',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      );
  String get headlineSmallFamily => 'Offside';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      );
  String get titleLargeFamily => 'Offside';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Offside';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Offside';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Offside',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Offside';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'Offside';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'Offside';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'Offside';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Offside';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Offside';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Offside',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Offside';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Offside';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Offside';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w900,
        fontSize: 24.0,
      );
  String get headlineLargeFamily => 'Offside';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Offside';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Offside',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      );
  String get headlineSmallFamily => 'Offside';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get titleLargeFamily => 'Offside';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Offside';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Offside';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Offside',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Offside';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'Offside';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'Offside';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'Offside';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Offside';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Offside';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Offside',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Offside';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Offside';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Offside';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w900,
        fontSize: 24.0,
      );
  String get headlineLargeFamily => 'Offside';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Offside';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Offside',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      );
  String get headlineSmallFamily => 'Offside';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get titleLargeFamily => 'Offside';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Offside';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Offside';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Offside',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Offside';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'Offside';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'Offside';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'Offside';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Offside';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Offside',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Offside';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Offside',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFC83206);
  late Color secondary = const Color(0xFF315A72);
  late Color tertiary = const Color(0xFF637584);
  late Color alternate = const Color(0xFFA3D3E2);
  late Color primaryText = const Color(0xFF637584);
  late Color secondaryText = const Color(0xFF91B5BF);
  late Color primaryBackground = const Color(0xFF232529);
  late Color secondaryBackground = const Color(0xFF315A72);
  late Color accent1 = const Color(0x2439D2C0);
  late Color accent2 = const Color(0xFF512933);
  late Color accent3 = const Color(0xFF0D579A);
  late Color accent4 = const Color(0xFF4B6770);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFE21C3D);
  late Color info = const Color(0xFF1C4494);

  late Color primaryBtnText = const Color(0xFFFFFFFF);
  late Color lineColor = const Color(0xFF22282F);
  late Color black = const Color(0xFF000000);
  late Color dukeBlue = const Color(0xFF0000A5);
  late Color navyBlue = const Color(0xFF00005C);
  late Color oxfordBlue = const Color(0xFF00002A);
  late Color navyBlue2 = const Color(0xFF00008B);
  late Color backgroundComponents = const Color(0xFF1D2428);
  late Color grayIcon = const Color(0xFF95A1AC);
  late Color gray200 = const Color(0xFFDBE2E7);
  late Color gray600 = const Color(0xFF262D34);
  late Color black600 = const Color(0xFF090F13);
  late Color tertiary400 = const Color(0xFF39D2C0);
  late Color textColor = const Color(0xFF1E2429);
  late Color overlay = const Color(0xB314181B);
  late Color btnText = const Color(0xFFFFFFFF);
  late Color customColor3 = const Color(0xFFDF3F3F);
  late Color customColor4 = const Color(0xFF090F13);
  late Color white = const Color(0xFFFFFFFF);
  late Color background = const Color(0xFF1D2429);
  late Color customColor1 = const Color(0xFF59743D);
  late Color customColor2 = const Color(0xFF5E3788);
  late Color customColor5 = const Color(0xFFB2EF4E);
  late Color customColor6 = const Color(0xFF5A18AE);
  late Color customColor7 = const Color(0xFF5A08E8);
  late Color customColor8 = const Color(0xFF7589A0);
  late Color customColor9 = const Color(0xFFE3F851);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            );
}
