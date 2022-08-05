import 'dart:collection';
import 'package:carp_point_app/pages/dependent_app/language/en_us.dart';
import 'package:carp_point_app/pages/dependent_app/language/vi_vn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationService extends Translations {
  static final locale = getLocaleFromLanguage();
  static const fallbackLocale = Locale("en", "US");
  static final langCodes = ['en', 'vi'];
  static final locales   = [const Locale('en', 'US') ,const Locale('vi', 'VN')];
  static final langs = LinkedHashMap.from({
    'en': 'English',
    'vi' : 'Tiếng Việt',
  });
static void changeLocale(String langCode){
  final locale = getLocaleFromLanguage(langCode:langCode);
  Get.updateLocale(locale!);
}

@override
Map<String, Map<String, String>> get keys => {
  'en_US' : en,
  'vi_VN' : vi,
};
 static Locale? getLocaleFromLanguage({String? langCode}){
  var lang = langCode ?? Get.deviceLocale?.languageCode;
  for (var i = 0; i < langCodes.length; i++) {
    if (lang == langCodes[i]) return locales[i];
  }
  return Get.locale;
 }
}