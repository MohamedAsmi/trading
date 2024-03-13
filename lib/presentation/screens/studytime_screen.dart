import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import '../../util/constants.dart';
import '../../util/size_utils.dart';
import '../widgets/base widgets/button_widget.dart';
import '../../presentation/widgets/base widgets/appbar_widget.dart';

class StudyTimeScreen extends StatefulWidget {
  const StudyTimeScreen({super.key});

  @override
  State<StudyTimeScreen> createState() => _StudyTimeScreenState();
}

class _StudyTimeScreenState extends State<StudyTimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: "STUDY TIME"),
      body: bodyWidget(context),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.local_library),
        onPressed: () {},
      ),
    );
  }

  Widget bodyWidget(BuildContext context) {
    return Padding(
      padding: SizesUtils.getOnlyTopMargin(context, .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.tips_and_updates,
                color: kRedText,
                size: 100,
              ),
              Text(
                "25 MINUTES",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: kRedText),
              ),
            ],
          ),
          const Gap(10),
          BaseButton(
            isRed: true,
            onpressed: () {},
            label: "REVIEWED TRADES",
          ),
          BaseButton(
            isRed: true,
            onpressed: () {},
            label: "TRADE MAPS",
          ),
          BaseButton(
            color: kBlueText,
            onpressed: () {},
            label: "ANALYTICS",
          ),
        ],
      ),
    );
  }
}
