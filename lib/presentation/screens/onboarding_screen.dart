import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hero_app/presentation/screens/main_screen.dart';
import 'package:hero_app/presentation/screens/profile_screen.dart';
import 'package:hero_app/util/constants.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Center(
              child: SizedBox(
                height: 150,
                width: 150,
                child: Image(
                  image: AssetImage(
                    'assets/images/logo.png',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 220,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryOrange,
                  ),
                  child: const Text(
                    "SIGN IN",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: kWhiteText,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Use Navigator.push to go to SecondScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kSecondaryDark,
                  ),
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: kWhiteText,
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
