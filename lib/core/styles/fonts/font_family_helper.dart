class FontFamilyHelper {
  const new _();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String getLocalazedFontFamily() {
    final currrentLocale = 'ar';
    if (currrentLocale == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}
