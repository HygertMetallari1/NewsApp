import 'package:flutter/material.dart';

class NAColors {
  static const Color background = Color(0xFFF8F8F8);
  static const Color backgroundModal = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF070707);
  static const Color error = Color(0xFFFF3B30);
  static const Color white = Color(0xFFFFFFFF);
  static const Color _white16 = Color(0x29FFFFFF);
  static const Color gray = Colors.grey;
  static Color blackBlendWithWhite = Color.alphaBlend(_white16, black);
  static const Color white38 = Color(0x61FFFFFF);
  static const Color blue = Color.fromRGBO(72, 133, 237, 1);
  static const Color calendarAccent = Color(0xFF7B61FF);
  static Color black006 = black.withOpacity(.06);
}

extension FontWeightExt on FontWeight {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
}

bool isSmallScreen = WidgetsBinding.instance!.window.physicalSize.width <= 640;

double fontMultiplier = isSmallScreen ? 0.8 : 1;

final ThemeData naTheme = ThemeData(
  primaryColor: NAColors.white,
  dialogBackgroundColor: NAColors.white,
  backgroundColor: NAColors.background,
  scaffoldBackgroundColor: NAColors.background,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,

  //APP BAR
  appBarTheme: const AppBarTheme(
    color: NAColors.background,
    elevation: 0,
    centerTitle: true
  ),

  //BOTTOM NAV BAR
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 1,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    backgroundColor: NAColors.background,
    selectedItemColor: NAColors.blue,
    unselectedItemColor: NAColors.black,
    selectedIconTheme: IconThemeData(
      color: NAColors.blue
    ),
    unselectedIconTheme: IconThemeData(
      color: NAColors.black
    ),
  ),

  ///COLOR SCHEME
  colorScheme: ThemeData.light().colorScheme.copyWith(
    primary: NAColors.background,
    primaryVariant: NAColors.white.withOpacity(0.6),
    secondary: NAColors.white,
    secondaryVariant: NAColors.white.withOpacity(0.6),
  ),

  ///ICON SCHEME
  iconTheme: const IconThemeData(
    color: NAColors.black,
  ),

  sliderTheme: const SliderThemeData(
    trackHeight: 8,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 0),
    inactiveTrackColor: Colors.white12,
  ),

  //PAGE TRANSITIONS THEME
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  ),

  fontFamily: "OpenSans",
  textTheme: TextTheme(
    headline4: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 36 * fontMultiplier,
      letterSpacing: 0.25,
      color: NAColors.black,
    ),
    headline5: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24 * fontMultiplier,
      letterSpacing: 0.5,
    ),
    headline6: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20 * fontMultiplier,
      letterSpacing: 0.75,
    ),
    subtitle1: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16 * fontMultiplier,
      letterSpacing: 0.15,
    ),
    subtitle2: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14 * fontMultiplier,
      letterSpacing: 0.1,
    ),
    bodyText1: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16 * fontMultiplier,
      letterSpacing: 0.5,
    ),
    bodyText2: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14 * fontMultiplier,
      letterSpacing: 0.25,
    ),
    caption: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 10 * fontMultiplier,
      letterSpacing: 0.75,
    ),
    overline: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 10 * fontMultiplier,
      letterSpacing: 0.75,
    ),
  ),
);