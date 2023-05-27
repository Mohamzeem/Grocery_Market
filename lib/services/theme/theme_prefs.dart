import '../../dependency.dart';
import '../../helper/app_strings.dart';

class ThemePrefs {
  Future saveTheme(String theme) async {
    return await sharedPreferences!.setString(AppStrings.THEME_KEY, theme);
  }

  String? getSavedTheme() {
    return sharedPreferences!.getString(AppStrings.THEME_KEY);
  }
}
