import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import '../../../util/constants.dart';
import '../../../util/size_utils.dart';
import '../../../util/decoration_utils.dart';

class TradeCard extends StatelessWidget {
  final String date;
  final String mood;
  final bool isMissed;
  final int timeSpent;
  final double earnings;
  final int tradesCount;
  final String percentage;
  const TradeCard({
    super.key,
    required this.date,
    required this.mood,
    required this.earnings,
    required this.isMissed,
    required this.timeSpent,
    required this.percentage,
    required this.tradesCount,
    this.onpressed,
  });

  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return isMissed == true
        ? _missedCardWidget(context)
        : Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: kThirdDark,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildIconText(
                        icon: Icons.calendar_today,
                        text: date,
                        color: Colors.white, // Date color does not change
                      ),
                      _buildIconText(
                        icon: Icons.sentiment_satisfied,
                        text: mood,
                        color: _moodColor(mood), // Color based on mood
                      ),
                      _buildIconText(
                        icon: Icons.repeat,
                        text: "$tradesCount TRADES",
                        color: tradesCount > 20
                            ? Colors.blue
                            : Colors.red, // Color based on trades count
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildIconText(
                        icon: Icons.settings,
                        text: percentage,
                        color: double.parse(percentage.replaceAll('%', '')) > 50
                            ? Colors.blue
                            : Colors.red, // Color based on percentage
                      ),
                      _buildIconText(
                        icon: Icons.bar_chart_outlined,
                        text: earnings.toString(),
                        color: Colors.white, // Earnings color does not change
                      ),
                      _buildIconText(
                        icon: Icons.lightbulb_sharp,
                        text: "$timeSpent MINUTES",
                        color: timeSpent > 60
                            ? Colors.blue
                            : Colors.red, // Color based on time spent
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Widget _missedCardWidget(BuildContext context) {
    return Padding(
      padding: SizesUtils.defualtPaddingOrMargin(context),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kThirdDark,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius:
                    DecoUtils.onlyBorderRadius(topLeft: 20, topRight: 20),
                color: kRedText,
              ),
              child: _buildIconText(
                color: kWhiteText,
                icon: Icons.calendar_month,
                text: date,
                isCenter: true,
              ),
            ),
            Padding(
              padding: SizesUtils.defualtPaddingOrMargin(context),
              child: Text(
                "Missed",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: kRedText),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildIconText({
    required IconData icon,
    required String text,
    required Color color,
    bool isCenter = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment:
            isCenter ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: <Widget>[
          Icon(
            icon,
            color: color,
            size: 25,
          ),
          const Gap(3),
          Text(
            text,
            style: TextStyle(
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Color _moodColor(String mood) {
    switch (mood.toUpperCase()) {
      case "GOOD":
        return Colors.blue;
      case "NEUTRAL":
        return Colors.white;
      case "BAD":
        return Colors.red;
      default:
        return Colors.white; // Default color if mood is not recognized
    }
  }
}
