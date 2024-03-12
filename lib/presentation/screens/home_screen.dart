// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../util/size_utils.dart';
import '../../presentation/widgets/base widgets/button_widget.dart';
import '../../presentation/widgets/base widgets/appbar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                onpressed: () {},
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
                onpressed: () {},
              ),
              BaseButton(
                label: "\$458.12",
                icon: Icons.leaderboard,
                onpressed: () {},
              ),
              BaseButton(
                isRed: true,
                label: "25 MINUTES",
                icon: Icons.emoji_objects,
                onpressed: () {},
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
