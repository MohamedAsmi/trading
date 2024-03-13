import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hero_app/presentation/screens/mood_screen.dart';
import 'package:hero_app/presentation/screens/profitlost_screen.dart';
import 'package:hero_app/presentation/screens/studytime_screen.dart';
import 'package:hero_app/presentation/screens/trades_screen.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/appbar_widget.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/button_widget.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(
        title: "ACTIVITY",
        actionIcon: Icons.filter_alt,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BaseButton(
            label: "MOOD",
            icon: Icons.emoji_emotions_outlined,
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MoodScreen(),
                ),
              );
            },
          ),
          BaseButton(
            label: "71% CONSISTENT",
            icon: Icons.settings,
            onpressed: () {},
          ),
          BaseButton(
            isRed: true,
            label: "13 TRADES",
            icon: Icons.restart_alt_sharp,
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TradesScreen(),
                ),
              );
            },
          ),
          BaseButton(
            label: "\$458.12",
            icon: Icons.leaderboard,
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfitLostScreen(),
                ),
              );
            },
          ),
          BaseButton(
            isRed: true,
            label: "25 MINUTES",
            icon: Icons.emoji_objects,
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StudyTimeScreen(),
                ),
              );
            },
          ),
          BaseButton(
            isRed: true,
            label: "-2 RANK",
            icon: Icons.military_tech,
            onpressed: () {},
          ),
        ],
      ),
    );
  }
}
