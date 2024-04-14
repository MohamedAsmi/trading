import 'package:flutter/material.dart';
import 'package:hero_app/util/theme_provider.dart';
import 'package:provider/provider.dart';

import '../../configs/routes.dart';
import '../../util/theme_utils.dart';
import '../../configs/app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeDataStyle,
      // theme: appTheme,
      // darkTheme: lightTheme,
      title: AppConfig.appName,
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.onboardingScreen,
    );
  }
}
