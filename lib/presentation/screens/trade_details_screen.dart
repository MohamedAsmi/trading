import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../util/constants.dart';
import '../../util/size_utils.dart';
import '../../models/chart_data_class.dart';
import '../../presentation/widgets/base widgets/appbar_widget.dart';

class TradeDetailsScreen extends StatefulWidget {
  const TradeDetailsScreen({super.key});

  @override
  State<TradeDetailsScreen> createState() => _ProfitLostScreenState();
}

class _ProfitLostScreenState extends State<TradeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: "EURUSD"),
      body: bodyWidget(context),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.call_split),
        onPressed: () {},
      ),
    );
  }

  Widget bodyWidget(BuildContext context) {
    return Container(
      padding: SizesUtils.defualtPaddingOrMargin(context),
      height: SizesUtils.screenHeight(context, 0.85),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          decisionMapWidget(context),
          chartWidget(),
          decisionStatsWidget(context),
          infoWidget()
        ],
      ),
    );
  }

  Widget decisionMapWidget(BuildContext context) {
    return Container(
      padding: SizesUtils.defualtPaddingOrMargin(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: kPrimaryOrange, width: 4),
      ),
      child: Column(
        children: [
          const Text(
            "Decision Map",
            style: TextStyle(color: kPrimaryOrange, fontSize: 18),
          ),
          Text(
            "Andrew | GBPUSD",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: kWhiteText),
          )
        ],
      ),
    );
  }

  Widget chartWidget() {
    final List<ChartData> chartData = [
      ChartData(DateTime.parse("2010-01-01"), 35),
      ChartData(DateTime.parse("2011-01-01"), 28),
      ChartData(DateTime.parse("2012-01-01"), 34),
      ChartData(DateTime.parse("2013-01-01"), 32),
      ChartData(DateTime.parse("2014-01-01"), 20),
      ChartData(DateTime.parse("2015-01-01"), 35),
      ChartData(DateTime.parse("2016-01-01"), 28),
      ChartData(DateTime.parse("2017-01-01"), 34),
      ChartData(DateTime.parse("2018-01-01"), 32),
      ChartData(DateTime.parse("2019-01-01"), 20)
    ];
    return SfCartesianChart(
        primaryXAxis: const DateTimeAxis(),
        series: <CartesianSeries>[
          LineSeries<ChartData, DateTime>(
              color: kPrimaryOrange,
              dataSource: chartData,
              xValueMapper: (ChartData sales, _) => sales.year,
              yValueMapper: (ChartData sales, _) => sales.sales)
        ]);
  }

  Widget decisionStatsWidget(BuildContext context) {
    return Container(
      padding: SizesUtils.defualtPaddingOrMargin(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: kPrimaryOrange, width: 4),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Good Decisions:',
                  style: TextStyle(color: kWhiteText),
                  children: [
                    TextSpan(
                      text: '13',
                      style: TextStyle(color: kBlueText),
                    )
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  text: 'Bad Decisions:   ',
                  style: TextStyle(color: kWhiteText),
                  children: [
                    TextSpan(
                      text: '11',
                      style: TextStyle(color: kRedText),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Total Decisions: 24",
                style: TextStyle(color: kWhiteText),
              ),
              Text.rich(
                TextSpan(
                  text: 'GT Decision Ratio:',
                  style: TextStyle(color: kWhiteText),
                  children: [
                    TextSpan(
                      text: '1:1:84',
                      style: TextStyle(color: kIconOrange),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget infoWidget() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: kPrimaryOrange,
          width: 4,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kBlueText,
                ),
              ),
              const SizedBox(width: 5),
              const Text(
                "Good Decision",
                style: TextStyle(color: kWhiteText),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kRedText,
                ),
              ),
              const SizedBox(width: 5),
              const Text(
                "Bad Decision",
                style: TextStyle(color: kWhiteText),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kWhiteText,
                ),
              ),
              const SizedBox(width: 5),
              const Text(
                "Data Point",
                style: TextStyle(color: kWhiteText),
              )
            ],
          ),
        ],
      ),
    );
  }
}
