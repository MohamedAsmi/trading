// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hero_app/presentation/screens/mood_screen.dart';
import 'package:hero_app/presentation/screens/profitlost_screen.dart';
import 'package:hero_app/presentation/screens/studytime_screen.dart';
import 'package:hero_app/presentation/screens/trades_screen.dart';

import '../../util/size_utils.dart';
import '../../presentation/widgets/base widgets/button_widget.dart';
import '../../presentation/widgets/base widgets/appbar_widget.dart';

class DayActivityScreen extends StatefulWidget {
  const DayActivityScreen({super.key});

  @override
  State<DayActivityScreen> createState() => _DayActivityScreenState();
}

class _DayActivityScreenState extends State<DayActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: "12TH MAY"),
      body: bodyWidget(context),
    );
  }

  Widget bodyWidget(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
          height: SizesUtils.screenHeight(context, 0.85),
          child: Column(
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
        ),
      ),
    );
  }
}
