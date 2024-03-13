import 'package:flutter/material.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/appbar_widget.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/button_widget.dart';

class TradingPlanScreen extends StatelessWidget {
  const TradingPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(
        title: "TRADING PLAN",
      ),
      body: tradingPlanWidget(
        context,
      ),
    );
  }

  Widget tradingPlanWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BaseButton(
          onpressed: () {},
          label: "RISK",
        ),
        BaseButton(
          onpressed: () {},
          label: "STRATEGY",
        ),
        BaseButton(
          onpressed: () {},
          label: "ASSETS",
        ),
        BaseButton(
          onpressed: () {},
          label: "GOALS",
        ),
        BaseButton(
          onpressed: () {},
          label: "TARGETS",
        ),
      ],
    );
  }
}
