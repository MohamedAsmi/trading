import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

import '../../util/constants.dart';
import '../../presentation/widgets/base widgets/appbar_widget.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(
        title: "MAY",
        actionIcon: Icons.filter_alt,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.search),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Gap(20),
          CalendarDatePicker2(
            config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.multi,
                controlsTextStyle: const TextStyle(color: kWhiteText),
                dayTextStyle: const TextStyle(color: kWhiteText),
                nextMonthIcon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 13,
                  color: kWhiteText,
                ),
                lastMonthIcon: const Icon(
                  Icons.arrow_back_ios,
                  size: 13,
                  color: kWhiteText,
                )),
            value: [DateTime.now()],
          ),
        ],
      ),
    );
  }
}
