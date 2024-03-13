import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/appbar_widget.dart';
import 'package:hero_app/util/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(
        title: "PROFILE",
      ),
      body: Center(
        child: Column(
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
            const SizedBox(
              height: 25,
            ),
            const Text(
              "SCOTT SCHANT",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: kWhiteText,
              ),
            ),
            const Text(
              "TRADING SINCE 2021",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: kWhiteText,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Use Navigator.push to go to SecondScreen
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kSecondaryDark,
                      ),
                      child: const Text(
                        'FRIENDS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: kWhiteText,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Use Navigator.push to go to SecondScreen
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kSecondaryDark,
                      ),
                      child: const Text(
                        'JOURNALS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: kWhiteText,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Use Navigator.push to go to SecondScreen
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kSecondaryDark,
                      ),
                      child: const Text(
                        'LEADERBOARD',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: kWhiteText,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Use Navigator.push to go to SecondScreen
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kSecondaryDark,
                        foregroundColor: kPrimaryOrange,
                      ),
                      child: const Text(
                        '8 DAY STREAK',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: kWhiteText,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
