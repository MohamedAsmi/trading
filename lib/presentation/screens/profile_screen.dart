import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hero_app/configs/routes.dart';
import 'package:hero_app/presentation/screens/friends_screen.dart';
import 'package:hero_app/presentation/screens/journal_main_screen.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/appbar_widget.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/button_widget.dart';
import 'package:hero_app/util/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(
        title: "PROFILE",
      ),
      body: profileWidget(context),
    );
  }

  Widget profileWidget(BuildContext context) {
    return Column(
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
          "SCOTT SCHANT",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          "TRADING SINCE 2021",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Gap(50),
        Row(
          children: [
            Expanded(
              child: BaseButton(
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FriendsScreen(),
                    ),
                  );
                },
                label: "FRIENDS",
              ),
            ),
            Expanded(
              child: BaseButton(
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JournalMainScreen(),
                    ),
                  );
                },
                label: "JOURNALS",
              ),
            ),
          ],
        ),
        // const Gap(10),
        Row(
          children: [
            Expanded(
              child: BaseButton(
                onpressed: () {},
                label: "LEADERBOARD",
              ),
            ),
            Expanded(
              child: BaseButton(
                bgColor: kPrimaryOrange,
                onpressed: () {},
                label: "8 DAY STREAK",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: BaseButton(
                onpressed: () {
                  Navigator.pushNamed(context, AppRoutes.settingsScreen);
                },
                label: "SETTINGS",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
