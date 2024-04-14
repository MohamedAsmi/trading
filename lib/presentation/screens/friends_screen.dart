import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hero_app/models/follower_class.dart';
import 'package:hero_app/presentation/screens/follower_screen.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/appbar_widget.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/button_widget.dart';
import 'package:hero_app/util/constants.dart';

class FriendsScreen extends StatelessWidget {
  FriendsScreen({super.key});

  final List<Follower> followers = [
    Follower(name: 'JOHN DOE', year: 2022, count: 98),
    Follower(name: 'HARRY TALY', year: 2021, count: 25),
    Follower(name: 'SANDY UDON', year: 2021, count: 44),
    Follower(name: 'FRANK WEB', year: 2021, count: 33),
    Follower(name: 'JANE SMITH', year: 2021, count: 101),
    Follower(name: 'ETHAN LEE', year: 2020, count: 77),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: "FRIENDS"),
      body: friendsWidget(
        context,
      ),
    );
  }

  Widget friendsWidget(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: kSecondaryDark,
                borderRadius: BorderRadius.circular(150),
                border: Border.all(color: kPrimaryOrange, width: 3),
              ),
              height: 75,
              width: 75,
              child: const Icon(
                Icons.person,
                size: 40,
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
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: BaseButton(
                    onpressed: () {},
                    label: "FOLLOWERS",
                    bgColor: kPrimaryOrange,
                  ),
                ),
                Expanded(
                  child: BaseButton(
                    onpressed: () {},
                    label: "FOLLOWING",
                  ),
                ),
              ],
            ),
            Expanded(
              // This will expand the ListView to fill the remaining space
              child: ListView.builder(
                itemCount: followers.length,
                itemBuilder: (context, index) {
                  return BaseButton(
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FollowerScreen(
                            name: followers[index].name,
                            count: followers[index].count,
                            year: followers[index].year,
                          ),
                        ),
                      );
                    },
                    label: followers[index].name,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
