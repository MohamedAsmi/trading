import 'package:flutter/material.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/appbar_widget.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/button_widget.dart';
import 'package:hero_app/util/constants.dart';

class SelectAssetScreen extends StatelessWidget {
  const SelectAssetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(
        title: "ASSETS",
      ),
      body: selecAssetWidget(
        context,
      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {},
        label: const Text(
          '  NEXT  ',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: kWhiteText,
          ),
        ),
      ),
    );
  }

  Widget selecAssetWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "SELECT ASSET CLASS",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: kWhiteText,
              ),
            ),
            BaseButton(
              onpressed: () {},
              label: "FOREX",
            ),
            BaseButton(
              onpressed: () {},
              label: "STOCKS",
            ),
            BaseButton(
              onpressed: () {},
              label: "FUTURES",
            ),
            BaseButton(
              onpressed: () {},
              label: "CRYPTO",
            ),
            BaseButton(
              onpressed: () {},
              label: "INDICIES",
            ),
            BaseButton(
              onpressed: () {},
              label: "METALS",
            ),
          ],
        ),
      ),
    );
  }
}
