import '../../presentation/screens/home_screen.dart';
import '../presentation/screens/calendar_screen.dart';
import '../../presentation/screens/onboarding_screen.dart';
import '../../presentation/screens/trade_details_screen.dart';

class AppRoutes {
  static const homeScreen = 'home_screen';
  static const calendarScreen = 'calendar_screen';
  static const onboardingScreen = 'onboarding_screen';
  static const tradeDetailsScreen = 'trade_details_screen';

  static final routes = {
    homeScreen: (context) => const HomeScreen(),
    calendarScreen: (context) => const CalendarScreen(),
    onboardingScreen: (context) => const OnboardingScreen(),
    tradeDetailsScreen: (context) => const TradeDetailsScreen(),
  };
}
