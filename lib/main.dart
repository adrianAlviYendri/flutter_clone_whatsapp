// ignore: duplicate_ignore
// ignore_for_file: duplicate_import, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';
import 'package:flutter_clone_whatsapp/app/modules/account/pages/account_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/autentication/pages/autentication.dart';
import 'package:flutter_clone_whatsapp/app/modules/calls/pages/calls_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/camera/pages/camera_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/chats/pages/chats_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/group/pages/group_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/main/pages/main_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/on_boarding/pages/on_boarding.dart';
import 'package:flutter_clone_whatsapp/app/modules/profil/pages/profile_info.dart';
import 'package:flutter_clone_whatsapp/app/modules/profile/pages/profil_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/setting/pages/setting_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/setting/pages/setting_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/setting/pages/setting_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/splash/pages/splash_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/updates/pages/updates_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/verification/pages/verifying_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: AppRoutes.splash.path,
      theme: ThemeData(),
      routes: {
        AppRoutes.splash.path: (context) {
          return const SplashScreen();
        },
        AppRoutes.onBoarding.path: (context) {
          return const OnBoardingScreen();
        },
        AppRoutes.autentication.path: (context) {
          return const AutenticationScreen();
        },
        AppRoutes.verifying.path: (context) {
          return const VerifyingScreen();
        },
        AppRoutes.profil.path: (context) {
          return const ProfileInfo();
        },
        AppRoutes.mainScreen.path: (context) {
          return const MainScreen();
        },
        AppRoutes.chatScreen.path: (context) {
          return const ChatScreen();
        },
        AppRoutes.groupScreen.path: (context) {
          return const GroupScreen();
        },
        AppRoutes.updateScreen.path: (context) {
          return const UpdateStatusScreen();
        },
        AppRoutes.callscreen.path: (context) {
          return const CallScreen();
        },
        AppRoutes.settingScreen.path: (context) {
          return const SettingScreen();
        },
        AppRoutes.profilScreen.path: (context) {
          return const ProfilScreen();
        },
        AppRoutes.accountScreen.path: (context) {
          return const AccountScreen();
        },
        AppRoutes.cameraPreviewScreen.path: (context) {
          return const CameraPreviewsScreen();
        },
      },
    );
  }
}
