// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import '../../util/constants.dart';
import '../../util/size_utils.dart';
import '../../util/decoration_utils.dart';
import '../../presentation/widgets/base widgets/button_widget.dart';
import '../../presentation/widgets/base widgets/appbar_widget.dart';

class MoodScreen extends StatefulWidget {
  const MoodScreen({super.key});

  @override
  State<MoodScreen> createState() => _MoodScreenState();
}

class _MoodScreenState extends State<MoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: "MOOD"),
      body: moodActionsWidget(context),
    );
  }

  Widget moodActionsWidget(BuildContext context) {
    return SizedBox(
      height: SizesUtils.screenHeight(context, 0.85),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: SizesUtils.getOnlyTopMargin(context, 0.1),
            child: Column(
              children: [
                const Icon(
                  Icons.emoji_emotions,
                  size: 120,
                ),
                Text(
                  "GOOD",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                BaseButton(
                  label: "HOW ARE YOU FEELING ?",
                  onpressed: () {},
                ),
                BaseButton(
                  label: "LOG AN EVENT",
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MoodScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            color: kThirdDark,
            width: double.infinity,
            height: SizesUtils.screenHeight(context, .08),
            child: const Center(
              child: Text(
                textAlign: TextAlign.center,
                "LAST LOGGED\n8HRS AGO",
                style: TextStyle(color: kWhiteText),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget loganEventWidget(BuildContext context) {
    return Padding(
      padding: SizesUtils.getOnlyTopMargin(context, 0.1),
      child: Column(
        children: [
          const Icon(
            Icons.emoji_emotions,
            size: 120,
          ),
          Text(
            "HOW ARE YOU ?",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const Gap(10),
          Container(
            width: SizesUtils.screenWidth(context, .9),
            padding: SizesUtils.getVerticalMargin(context, 0.05),
            decoration: BoxDecoration(
              color: kThirdDark,
              borderRadius: DecoUtils.commonBorderRadius,
            ),
            child: const Center(
              child: Text(
                textAlign: TextAlign.center,
                "IS THE EVENT OVER\nTHE LAST 24 HOURS AFFECTING YOU STILL?",
                style: TextStyle(color: kWhiteText),
              ),
            ),
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BaseButton(
                icon: Icons.done,
                onpressed: () {},
              ),
              BaseButton(
                isRed: true,
                icon: Icons.close,
                onpressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
