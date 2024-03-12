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
    bodyLarge: TextStyle(
      color: kBlueText,
      fontWeight: FontWeight.w500,
      fontSize: 24,
    ),
    bodyMedium: TextStyle(
      color: kBlueText,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
  ),
  iconTheme: const IconThemeData(color: kBlueText),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size(double.infinity, 70),
      backgroundColor: kThirdDark,
      textStyle: const TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 17,
      ),
    ),
  ),
);
