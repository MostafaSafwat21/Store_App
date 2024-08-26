import 'package:store/core/service/shared_pref/pref_keys.dart';
import 'package:store/core/service/shared_pref/shared_pref.dart';

class FontFamilyHelper{
  const FontFamilyHelper._();

  static const String CairoArbic = 'Cairo';
  static const String PoppinsEnglish = 'Poppins';

  static String getLocalozedFontFamily() {
    //ToDo: SharedPerferences
    final currentLanguage =  SharedPref().getString(PrefKeys.language);
    if (currentLanguage == 'ar'){
      return CairoArbic;
    }else{
      return PoppinsEnglish;
    }
  }

}