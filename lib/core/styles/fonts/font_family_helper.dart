import 'package:dansho_store/core/service/shared_prefs/prefs_keys.dart';
import 'package:dansho_store/core/service/shared_prefs/shared_pref.dart';

class FontFamilyHelper {
  const new _();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String getLocalazedFontFamily() {
    final currrentLocale = SharedPref().getString(PrefKeys.language);
    if (currrentLocale == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}
