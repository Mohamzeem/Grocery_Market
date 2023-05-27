import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'business_logic/theme_bloc/theme_bloc.dart';

GetIt sl = GetIt.instance;
SharedPreferences? sharedPreferences;

Future<void> init() async {
  sl.registerFactory(() => ThemeBloc());
  sharedPreferences = await SharedPreferences.getInstance();
}
