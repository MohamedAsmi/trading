import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hero_app/util/constants.dart';
import 'package:hero_app/util/theme_provider.dart';
import 'package:hero_app/util/theme_utils.dart';
import 'package:provider/provider.dart';

import '../widgets/base widgets/appbar_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: const BaseAppBar(title: "SETTINGS"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Preferences",
                style: TextStyle(
                  fontSize: 14,
                  color: kBlueText,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    themeProvider.themeDataStyle == appTheme
                        ? 'Dark Mode'
                        : 'Light Mode',
                    style: const TextStyle(fontSize: 18.0),
                  ),
                  const SizedBox(height: 10.0),
                  Transform.scale(
                    scale: 1,
                    child: Switch(
                      value: themeProvider.themeDataStyle == lightTheme
                          ? true
                          : false,
                      onChanged: (isOn) {
                        themeProvider.changeTheme();
                      },
                      activeColor: kPrimaryOrange,
                      thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {
                            return const Icon(Icons.mood_bad);
                          }
                          return Icon(
                            themeProvider.themeDataStyle == lightTheme
                                ? Icons.wb_sunny
                                : Icons.nightlight_round,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
