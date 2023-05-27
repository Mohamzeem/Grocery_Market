part of 'theme_bloc.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

class ThemeInitialState extends ThemeState {}

class LightThemeState extends ThemeState {
  final String lightTheme;
  const LightThemeState({
    required this.lightTheme,
  });
  @override
  List<Object> get props => [lightTheme];
}

class DarkhemeState extends ThemeState {
  final String darkTheme;
  const DarkhemeState({
    required this.darkTheme,
  });
  @override
  List<Object> get props => [darkTheme];
}
