import 'package:flutter/material.dart';

import '../../util/size_utils.dart';
import '../widgets/home screen/statsbutton_widget.dart';
import '../../presentation/widgets/base widgets/appbar_widget.dart';

class ProfitLostScreen extends StatefulWidget {
  const ProfitLostScreen({super.key});

  @override
  State<ProfitLostScreen> createState() => _ProfitLostScreenState();
}

class _ProfitLostScreenState extends State<ProfitLostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: "PROFIT/LOSS"),
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
                Icons.bar_chart,
                size: 100,
              ),
              Text(
                "\$458.12",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          const StatsButtonWidget(
            label: "\$75.34",
          ),
          const StatsButtonWidget(
            label: "\$256.91",
          ),
          const StatsButtonWidget(
            label: "-\$56.78",
            isRed: true,
          ),
          const StatsButtonWidget(
            label: "-\$142.90",
            isRed: true,
          ),
          const StatsButtonWidget(
            label: "\$78.03",
          ),
        ],
      ),
    );
  }
}
