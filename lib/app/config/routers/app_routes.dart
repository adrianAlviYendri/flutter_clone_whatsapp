enum AppRoutes {
  splash,
  onBoarding,
  autentication,
  profil,
  verifying,
  mainScreen,
  chatScreen,
  groupScreen,
  updateScreen,
  callscreen,
  settingScreen,
  profilScreen,
  accountScreen,
  cameraPreviewScreen,
}

extension AppRoutersExtention on AppRoutes {
  String get path {
    switch (this) {
      case AppRoutes.splash:
        return '/splash';
      case AppRoutes.onBoarding:
        return '/on-boarding';
      case AppRoutes.autentication:
        return '/autentication';
      case AppRoutes.verifying:
        return '/verification';
      case AppRoutes.profil:
        return '/profil';
      case AppRoutes.mainScreen:
        return '/main';
      case AppRoutes.chatScreen:
        return '/chats';
      case AppRoutes.groupScreen:
        return '/group';
      case AppRoutes.updateScreen:
        return '/updates';
      case AppRoutes.callscreen:
        return '/calls';
      case AppRoutes.settingScreen:
        return '/setting';
      case AppRoutes.profilScreen:
        return '/profile';
      case AppRoutes.accountScreen:
        return '/account';
      case AppRoutes.cameraPreviewScreen:
        return '/camera';
      default:
        return '';
    }
  }
}
