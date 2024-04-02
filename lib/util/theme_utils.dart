import 'package:flutter/material.dart';
import '../../util/constants.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.dark,
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
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: kPrimaryOrange,
    foregroundColor: kWhiteText,
    shape: CircleBorder(),
  ),
  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(backgroundColor: kThirdDark, iconSize: 35),
  ),
);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: kWhiteText,
  appBarTheme: const AppBarTheme(
    backgroundColor: kWhiteText,
    centerTitle: true,
    elevation: 1,
    titleTextStyle: TextStyle(
      color: kPrimaryDark,
      fontSize: 18,
      fontWeight: FontWeight.w800,
    ),
    actionsIconTheme: IconThemeData(color: kSecondaryDark),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 20,
    unselectedItemColor: kPrimaryDark,
    selectedItemColor: kPrimaryOrange,
    selectedIconTheme: IconThemeData(
      size: 30,
    ),
    unselectedIconTheme: IconThemeData(
      size: 30,
    ),
  ),
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
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: kPrimaryOrange,
    foregroundColor: kWhiteText,
    shape: CircleBorder(),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: kPrimaryDark,
      fontWeight: FontWeight.w500,
      fontSize: 24,
    ),
    bodyMedium: TextStyle(
      color: kPrimaryDark,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
  ),
  iconTheme: const IconThemeData(color: kWhiteText),
);
