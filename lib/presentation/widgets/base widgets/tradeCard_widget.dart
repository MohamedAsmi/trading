import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

import '../../../util/constants.dart';

class TradeCard extends StatelessWidget {
  final String date;
  final String percentage;
  final String mood;
  final double earnings;
  final int tradesCount;
  final int timeSpent;
  const TradeCard({
    super.key,
    required this.date,
    required this.percentage,
    required this.mood,
    required this.earnings,
    required this.tradesCount,
    required this.timeSpent,
    this.onpressed,
  });

  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
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

  Widget _buildIconText(
      {required IconData icon, required String text, required Color color}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
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
