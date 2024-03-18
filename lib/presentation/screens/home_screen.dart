import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:hero_app/models/trade_class.dart';
import 'package:hero_app/presentation/screens/calendar_screen.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/button_widget.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/tradeCard_widget.dart';
import 'package:hero_app/util/constants.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Trade> trades = [
    Trade(
      date: '06/05/2023',
      percentage: '75%',
      mood: "GOOD",
      amount: 152.25,
      trades: 13,
      time: 45,
    ),
    Trade(
      date: '05/05/2023',
      percentage: '55%',
      mood: "BAD",
      amount: 784.5,
      trades: 45,
      time: 32,
    ),
    Trade(
      date: '04/05/2023',
      percentage: '48%',
      mood: "NEUTRAL",
      amount: 1524.25,
      trades: 7,
      time: 21,
    ),
    Trade(
      date: '03/05/2023',
      percentage: '88%',
      mood: "BAD",
      amount: 1524.25,
      trades: 7,
      time: 21,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("\$\11,435.32"),
        centerTitle: true,
        backgroundColor: kPrimaryDark,
        leading: const Icon(
          Icons.message,
          size: 27,
          color: kPrimaryOrange,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CalendarScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
                size: 30,
                color: kIconOrange,
              ),
              color: kIconWhite,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.home),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 100.0, right: 100.0),
            child: BaseButton(
              onpressed: () {},
              label: "MAY 2023",
              bgColor: kBlueText,
            ),
          ),
          Expanded(
            // This will expand the ListView to fill the remaining space
            child: ListView.builder(
              itemCount: trades.length,
              itemBuilder: (context, index) {
                return TradeCard(
                  onpressed: () {},
                  date: trades[index].date,
                  percentage: trades[index].percentage,
                  mood: trades[index].mood,
                  earnings: trades[index].amount,
                  tradesCount: trades[index].trades,
                  timeSpent: trades[index].time,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
