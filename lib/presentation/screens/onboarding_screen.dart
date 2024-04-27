import 'package:flutter/material.dart';

import '../../util/constants.dart';
import '../../configs/routes.dart';
import '../../util/size_utils.dart';
import '../../presentation/widgets/base widgets/button_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
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
                onpressed: () {
                  Navigator.pushNamed(context, AppRoutes.loginScreen);
                },
                label: "SIGN IN",
              ),
            ),
            Expanded(
              child: BaseButton(
                onpressed: () {
                  Navigator.pushNamed(context, AppRoutes.registerScreen);
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
