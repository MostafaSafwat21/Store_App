class FontFamilyHelper{
  const FontFamilyHelper._();

  static const String CairoArbic = 'Cairo';
  static const String PoppinsEnglish = 'Poppins';

  static String getLocalozedFontFamily() {
    //ToDo: SharedPerferences
    final currentLanguage = 'ar';
    if (currentLanguage == 'ar'){
      return CairoArbic;
    }else{
      return PoppinsEnglish;
    }
  }

}