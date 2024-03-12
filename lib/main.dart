import 'package:flutter/material.dart';

import '../../util/theme_utils.dart';
import '../../presentation/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hero App',
      theme: appTheme,
      home: const MainScreen(),
    );
  }
}
