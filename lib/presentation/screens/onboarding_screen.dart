import 'package:flutter/material.dart';
import 'package:hero_app/presentation/screens/main_screen.dart';
import 'package:hero_app/presentation/widgets/base%20widgets/button_widget.dart';
import 'package:hero_app/util/constants.dart';
import 'package:hero_app/util/size_utils.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: onboardingWidget(
        context,
      ),
    );
  }
}

Widget onboardingWidget(BuildContext context) {
  return SizedBox(
    height: SizesUtils.screenHeight(
      context,
      0.95,
    ),
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
          height: 180,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: BaseButton(
                onpressed: () {},
                label: "SIGN IN",
              ),
            ),
            Expanded(
              child: BaseButton(
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                },
                label: "SIGN UP",
                bgColor: kPrimaryOrange,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
