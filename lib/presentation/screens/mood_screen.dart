// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../util/constants.dart';
import '../../util/size_utils.dart';
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
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              moodActionsWidget(context),
              logWidget(context),
            ],
          ),
        ));
  }

  Widget moodActionsWidget(BuildContext context) {
    return Column(
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
          onpressed: () {},
        ),
      ],
    );
  }

  Widget logWidget(BuildContext context) {
    return Container(
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
    );
  }
}
