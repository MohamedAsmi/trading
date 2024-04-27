import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../configs/routes.dart';
import '../../configs/app_config.dart';
import '../../util/theme_provider.dart';
import '../../bloc/cubit/auth_cubit.dart';
import '../../data/repository/auth_repo.dart';
import '../../data/provider/auth_data_provider.dart';
import '../../configs/utils/helpers/app_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreferences.initialize();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var repos = [
      RepositoryProvider<AuthRepository>(
        create: (context) => AuthRepository(AuthDataProvider()),
      ),
    ];
    var providers = [
      BlocProvider<AuthCubit>(
        create: (BuildContext context) => AuthCubit(
          context.read<AuthRepository>(),
        ),
      ),
    ];
    return MultiRepositoryProvider(
      providers: repos,
      child: MultiBlocProvider(
        providers: providers,
        child: MaterialApp(
          theme: Provider.of<ThemeProvider>(context).themeDataStyle,
          // theme: appTheme,
          // darkTheme: lightTheme,
          title: AppConfig.appName,
          routes: AppRoutes.routes,
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.onboardingScreen,
        ),
      ),
    );
  }
}
