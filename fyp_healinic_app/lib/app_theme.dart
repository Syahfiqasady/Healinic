import 'package:flutter/material.dart';

class HealinicTheme {
  ////////////////COLOR//////////

  static Color mainTheme = const Color(0xfff7ebe1);
  static Color registrationPage = const Color(0xfff6a8a6);
  static Color registrationButton = const Color(0xfff6a8a6);
  static Color navigationBarBg = const Color(0xfffcf6f6);
  static Color buttonBorder = const Color(0xffffffff);
  static Color badScoreBg = const Color(0xffe88888);
  static Color goodScoreBg = const Color(0xff13aa9c);
  static Color buttonSelected = const Color(0xff7fc3ec);
  static Color buttonBgb = const Color(0xffe2b48f);
  static Color profileIcon = const Color(0xff312d2d);
  static Color shadowApp = const Color(0x3C000000);
  static Color relationshipBg = const Color(0xff9e6fc2);
  static Color smileyIconBg = const Color(0xff3b88bb);
  static Color promiseBg = const Color(0xff3e3c3c);
  static Color calenderIcon = const Color(0xff424242);
  static Color habitsBg = const Color(0xffeb5959);
  static Color insightBg = const Color(0xffFFF2F2);
  static Color normal = const Color(0xff1ACF83);
  static Color mild = const Color(0xffE8EC41);
  static Color moderate = const Color(0xffECC641);
  static Color severe = const Color(0xffEC6A41);
  static Color extremelysevere = const Color(0xffEC4141);
  static Color reflectcont = const Color(0xffFFE5B4);
  static Color history = const Color(0xffF8EEDC);

  //static Color insightBg= const Color(0xffFFF2F2);

  static const Color nearlyWhite = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFF3A5160);
  static const Color topBar = Color(0xffe2b48f);

  //word color
  static Color buttonsWord = const Color(0xffffffff);
  static Color mainWord = const Color(0xfffffdfd);
  static Color titleWord = const Color(0xff000000);
  static Color bookingIDNo = const Color(0xffef2d2d);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color spacer = Color(0xFFF2F2F2);
  static const String fontName = 'Roboto';

  static const TextTheme textTheme = TextTheme(
    headline4: display1,
    headline5: headline,
    headline6: title,
    subtitle2: subtitle,
    bodyText2: body2,
    bodyText1: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: darkerText,
  );

  static const TextStyle headline = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: darkerText,
  );

  static const TextStyle title = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );

  static const TextStyle subtitle = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle body1 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );
}
