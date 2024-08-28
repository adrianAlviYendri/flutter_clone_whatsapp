enum AppLanguage {
  english,
  indonesia,
}

extension AppLanguageExtension on AppLanguage {
  String get name {
    switch (this) {
      case AppLanguage.english:
        return 'English';
      case AppLanguage.indonesia:
        return 'indonesia';
      default:
        return '';
    }
  }
}
