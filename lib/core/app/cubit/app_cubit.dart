import 'dart:ui';

import 'package:dansho_store/core/service/shared_prefs/prefs_keys.dart';
import 'package:dansho_store/core/service/shared_prefs/shared_pref.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  new() : super(const AppState.initial());

  bool isDark = true;
  String currentLang = 'en';

  Future<void> changeThemeMode({bool? sharedPref}) async {
    if (sharedPref != null) {
      isDark = sharedPref;
      emit(AppState.themeChangeMode(isDark: isDark));
    } else {
      isDark = !isDark;
      await SharedPref()
          .setBoolean(PrefKeys.themeMode, isDark)
          .then((value) => emit(AppState.themeChangeMode(isDark: isDark)));
    }
  }

  // Language change
  void getSavedLang() {
    final lang = SharedPref().containPreference(PrefKeys.language)
        ? SharedPref().getString(PrefKeys.language)
        : 'en';
    currentLang = lang!;
    emit(AppState.languageChange(lang: Locale(currentLang)));
  }

  Future<void> changeLanguage({required String lang}) async {
    currentLang = lang;
    await SharedPref().setString(PrefKeys.language, lang);
    emit(AppState.languageChange(lang: Locale(currentLang)));
  }

  Future<void> toArabic() => changeLanguage(lang: 'ar');
  Future<void> toEnglish() => changeLanguage(lang: 'en');
}
