import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/helper/app_routes.dart';
import 'package:grocery_market/services/theme/app_themes.dart';
import 'business_logic/theme_bloc/theme_bloc.dart';
import 'helper/app_strings.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc()..add(InitialThemeEvent()),
      child: ScreenUtilInit(
        designSize: const Size(392.72727272727275, 781.0909090909091),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, themeState) {
            var theme = themeState is LightThemeState
                ? AppStrings.THEME_LIGHT
                : AppStrings.THEME_DARK;
            return MaterialApp(
              routes: AppRoutes.routes,
              initialRoute: Routes.logInScreen,
              debugShowCheckedModeBanner: false,
              title: 'Grocery Market',
              theme: theme == AppStrings.THEME_LIGHT
                  ? AppThemes().lightTheme()
                  : AppThemes().darkTheme(),
            );
          },
        ),
      ),
    );
  }
}
