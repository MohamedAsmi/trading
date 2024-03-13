import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/appbar_widget.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/button_widget.dart';
import 'package:hero_app/util/constants.dart';

class FollowerScreen extends StatelessWidget {
  const FollowerScreen({
    super.key,
    required this.name,
    required this.year,
    required this.count,
  });
  final String name;
  final int year; // Add a field for the name
  final int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: "FOLLOWER"),
      body: followerWidget(context),
    );
  }

  Widget followerWidget(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: kSecondaryDark,
                  borderRadius: BorderRadius.circular(150),
                  border: Border.all(color: kPrimaryOrange, width: 3),
                ),
                height: 175,
                width: 175,
                child: const Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.white,
                ),
              ),
              const Gap(15),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: kWhiteText,
                ),
              ),
              Text(
                "TRADING SINCE $year",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: kWhiteText,
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: BaseButton(
                  onpressed: () {},
                  label: "$count DAY STREAK",
                  bgColor: kPrimaryOrange,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
