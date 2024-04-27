import 'package:hero_app/presentation/screens/main_screen.dart';

import '../../presentation/screens/home_screen.dart';
import '../../presentation/screens/calendar_screen.dart';
import '../../presentation/screens/setttings_screen.dart';
import '../../presentation/screens/onboarding_screen.dart';
import '../../presentation/screens/trade_details_screen.dart';
import '../presentation/screens/auth/login_screen.dart';
import '../presentation/screens/auth/register_screen.dart';

class AppRoutes {
  static const homeScreen = 'home_screen';
  static const calendarScreen = 'calendar_screen';
  static const settingsScreen = 'settings_screen';
  static const onboardingScreen = 'onboarding_screen';
  static const tradeDetailsScreen = 'trade_details_screen';
  static const loginScreen = 'login_page';
  static const registerScreen = 'register_screen';
  static const mainScreen = 'main_screen';

  static final routes = {
    mainScreen: (context) => MainScreen(),
    homeScreen: (context) => HomeScreen(),
    calendarScreen: (context) => const CalendarScreen(),
    settingsScreen: (context) => const SettingsScreen(),
    onboardingScreen: (context) => const OnboardingScreen(),
    tradeDetailsScreen: (context) => const TradeDetailsScreen(),
    loginScreen: (context) => const LoginScreen(),
    registerScreen: (context) => const RegisterScreen(),
  };
}
