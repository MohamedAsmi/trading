import 'package:flutter/material.dart';
import 'package:hero_app/presentation/screens/activity_screen.dart';
import 'package:hero_app/presentation/screens/trading_plan_screen.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/appbar_widget.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/button_widget.dart';

class JournalScreen extends StatelessWidget {
  const JournalScreen({super.key, required this.journalName});
  final String journalName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: journalName,
      ),
      body: journalWidget(context),
    );
  }

  Widget journalWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BaseButton(
          onpressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TradingPlanScreen(),
              ),
            );
          },
          label: "TRADING PLAN",
        ),
        BaseButton(
          onpressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ActivityScreen(),
              ),
            );
          },
          label: "ACTIVITY",
        ),
      ],
    );
  }
}
