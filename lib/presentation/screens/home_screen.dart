import 'package:flutter/material.dart';
import '../../util/constants.dart';
import '../../models/trade_class.dart';
import '../../presentation/screens/calendar_screen.dart';
import '../../presentation/widgets/base widgets/button_widget.dart';
import '../widgets/base widgets/tradecard_widget.dart';

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
      isMissed: false,
    ),
    Trade(
      date: '05/05/2023',
      percentage: '55%',
      mood: "BAD",
      amount: 784.5,
      trades: 45,
      time: 32,
      isMissed: false,
    ),
    Trade(
      date: '04/05/2023',
      percentage: '48%',
      mood: "NEUTRAL",
      amount: 1524.25,
      trades: 7,
      time: 21,
      isMissed: true,
    ),
    Trade(
      date: '03/05/2023',
      percentage: '88%',
      mood: "BAD",
      amount: 1524.25,
      trades: 7,
      time: 21,
      isMissed: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("\$11,435.32"),
        leading: const Stack(alignment: Alignment.center, children: [
          Icon(
            Icons.chat_bubble,
            size: 40,
            color: kPrimaryOrange,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              "13",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kWhiteText,
                fontSize: 20,
              ),
            ),
          )
        ]),
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
                  mood: trades[index].mood,
                  timeSpent: trades[index].time,
                  earnings: trades[index].amount,
                  isMissed: trades[index].isMissed,
                  tradesCount: trades[index].trades,
                  percentage: trades[index].percentage,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
