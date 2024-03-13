import 'package:flutter/material.dart';

import '../../util/constants.dart';
import '../../util/size_utils.dart';
import '../widgets/home screen/statsbutton_widget.dart';
import '../../presentation/widgets/base widgets/appbar_widget.dart';

class TradesScreen extends StatefulWidget {
  const TradesScreen({super.key});

  @override
  State<TradesScreen> createState() => _TradesScreenState();
}

class _TradesScreenState extends State<TradesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: "TRADES"),
      body: tradesWidget(context),
    );
  }

  Widget tradesWidget(BuildContext context) {
    return SizedBox(
      height: SizesUtils.screenHeight(context, 0.85),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.restart_alt,
                color: kRedText,
                size: 100,
              ),
              Text(
                "13 TRADES",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: kRedText),
              ),
            ],
          ),
          const StatsButtonWidget(
            isIcon: true,
            label: "EURUSD",
          ),
          const StatsButtonWidget(
            isRed: true,
            isIcon: true,
            label: "GBPUSD",
          ),
          const StatsButtonWidget(
            isIcon: true,
            label: "USDCHF",
          ),
          const StatsButtonWidget(
            isRed: true,
            isIcon: true,
            label: "CADJPY",
          ),
          const StatsButtonWidget(
            isRed: true,
            isIcon: true,
            label: "GBPNZD",
          ),
        ],
      ),
    );
  }
}
