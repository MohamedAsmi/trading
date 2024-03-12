import 'package:flutter/material.dart';
import '../../util/constants.dart';

final ThemeData appTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: kPrimaryDark,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: kWhiteText,
      fontSize: 18,
      fontWeight: FontWeight.w800,
    ),
    actionsIconTheme: IconThemeData(color: kSecondaryDark),
  ),
  scaffoldBackgroundColor: kSecondaryDark,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: kPrimaryDark,
    unselectedItemColor: Colors.white,
    selectedItemColor: kPrimaryOrange,
    selectedIconTheme: IconThemeData(
      size: 30,
    ),
    unselectedIconTheme: IconThemeData(
      size: 30,
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color(0x8a000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displayMedium: TextStyle(
      color: Color(0x8a000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    displaySmall: TextStyle(
      color: Color(0x8a000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      color: Color(0xFF212427),
      fontSize: 16,
    ),
    titleMedium: TextStyle(
      color: Color(0xdd000000),
      fontSize: 12,
    ),
    titleSmall: TextStyle(
      color: Colors.black45,
      fontSize: 11,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
);
