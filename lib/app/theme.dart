import 'package:flutter/material.dart';

class NAColors {
  static const Color black = Color.fromRGBO(24, 24, 24, 1);
  static const Color error = Color(0xFFFF3B30);
  static const Color white = Color.fromRGBO(228, 230, 235, 1);
  static const Color gray = Colors.grey;
  static const Color white70 = Colors.white70;
  static const Color blue = Color.fromRGBO(72, 133, 237, 1);
  static const Color calendarAccent = Color(0xFF7B61FF);
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
  backgroundColor: NAColors.white,
  scaffoldBackgroundColor: NAColors.white,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,

  //APP BAR
  appBarTheme:
      const AppBarTheme(color: NAColors.white, elevation: 0, centerTitle: true),

  //BOTTOM NAV BAR
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 1,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    backgroundColor: NAColors.white,
    selectedItemColor: NAColors.blue,
    unselectedItemColor: NAColors.black,
    selectedIconTheme: IconThemeData(color: NAColors.blue),
    unselectedIconTheme: IconThemeData(color: NAColors.black),
  ),

  ///COLOR SCHEME
  colorScheme: ThemeData.light().colorScheme.copyWith(
        primary: NAColors.white,
        secondary: NAColors.white,
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

ThemeData darkThemeData(BuildContext context) {
  return ThemeData(
    backgroundColor: NAColors.black,
    primaryColor: NAColors.black,
    scaffoldBackgroundColor: NAColors.black,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    //APP BAR Dark Mode
    appBarTheme: const AppBarTheme(
        color: NAColors.black, elevation: 0, centerTitle: true),
    //BOTTOM NAV BAR Dark Mode
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 1,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      backgroundColor: NAColors.black,
      selectedItemColor: NAColors.blue,
      unselectedItemColor: NAColors.white,
      selectedIconTheme: IconThemeData(color: NAColors.blue),
      unselectedIconTheme: IconThemeData(color: NAColors.white),
    ),
    //COLOR SCHEME Dark
    colorScheme: ThemeData.dark().colorScheme.copyWith(
      primary: NAColors.black,
      secondary: NAColors.black,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      },
    ),
    //Color scheme dark mode

    fontFamily: "OpenSans",

    textTheme: TextTheme(
        headline4: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36 * fontMultiplier,
            letterSpacing: 0.25,
            color: NAColors.white70),
        headline5: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24 * fontMultiplier,
            letterSpacing: 0.5,
            color: NAColors.white70),
        headline6: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20 * fontMultiplier,
            letterSpacing: 0.75,
            color: NAColors.white70),
        subtitle1: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16 * fontMultiplier,
            letterSpacing: 0.15,
            color: NAColors.white70),
        subtitle2: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14 * fontMultiplier,
            letterSpacing: 0.1,
            color: NAColors.white70),
        bodyText1: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16 * fontMultiplier,
            letterSpacing: 0.5,
            color: NAColors.white70),
        bodyText2: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14 * fontMultiplier,
            letterSpacing: 0.25,
            color: NAColors.white70),
        caption: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10 * fontMultiplier,
            letterSpacing: 0.75,
            color: NAColors.white70),
        overline: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 10 * fontMultiplier,
            letterSpacing: 0.75,
            color: NAColors.white70)),
  );
}
