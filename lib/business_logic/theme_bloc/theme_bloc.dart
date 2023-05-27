import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../helper/app_strings.dart';
import '../../services/theme/theme_prefs.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitialState()) {
    on<ThemeEvent>((event, emit) {
      if (event is InitialThemeEvent) {
        if (ThemePrefs().getSavedTheme() == AppStrings.THEME_DARK) {
          emit(const DarkhemeState(darkTheme: AppStrings.THEME_DARK));
        } else {
          emit(const LightThemeState(lightTheme: AppStrings.THEME_LIGHT));
        }
      } else if (event is LightThemeEvent) {
        ThemePrefs().saveTheme(AppStrings.THEME_LIGHT);
        emit(const LightThemeState(lightTheme: AppStrings.THEME_LIGHT));
      } else if (event is DarkThemeEvent) {
        ThemePrefs().saveTheme(AppStrings.THEME_DARK);
        emit(const DarkhemeState(darkTheme: AppStrings.THEME_DARK));
      }
    });
  }
}
