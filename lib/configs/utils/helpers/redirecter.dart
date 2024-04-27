// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:hero_app/configs/utils/helpers/app_preferences.dart';
import '../../routes.dart';

class Redirector {
  void iniRedirect(BuildContext context) async {
    Future.delayed(Duration.zero, () {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        // Initialize SharedPreferences (ensure it's done after the widget tree builds)

        final token = AppPreferences.getString("token");
        if (token != null && token.isNotEmpty) {
          Navigator.pushReplacementNamed(context, AppRoutes.mainScreen);
        } else {
          Navigator.pushReplacementNamed(context, AppRoutes.onboardingScreen);
        }
      });
    });
  }

  void pushNameRedirect(context, routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
