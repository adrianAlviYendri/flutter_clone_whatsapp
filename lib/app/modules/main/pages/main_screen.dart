// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';
import 'package:flutter_clone_whatsapp/app/modules/calls/pages/calls_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/calls/widget/Calls_floating_action.dart';
import 'package:flutter_clone_whatsapp/app/modules/calls/widget/calls_pop_up_menu_button.dart';
import 'package:flutter_clone_whatsapp/app/modules/chats/pages/chats_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/chats/widgets/chats_floating_action.dart';
import 'package:flutter_clone_whatsapp/app/modules/chats/widgets/chats_pop_up_menu_button.dart';
import 'package:flutter_clone_whatsapp/app/modules/group/pages/group_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/group/widgets/community_pop_up_menu_button.dart';
import 'package:flutter_clone_whatsapp/app/modules/main/controllers/main_controllers.dart';
import 'package:flutter_clone_whatsapp/app/modules/updates/pages/updates_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/updates/widgets/update_pop_up_menu_button.dart';
import 'package:flutter_clone_whatsapp/app/modules/updates/widgets/updates_floating_action.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  MainControllers controllers = MainControllers();

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: controllers.currentIndex,
    );

    tabController.addListener(() {
      setState(() {
        controllers.setCurreIndex(tabController.index);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: setFloatingWidget(),
        body: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: controllers.currentIndex != 1,
                elevation: 0,
                toolbarHeight: 70,
                backgroundColor: AppColors.tealDarkGreen,
                title: const Text(
                  'WhatsApp',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.cameraPreviewScreen.path);
                    },
                    icon: const Icon(
                      Icons.photo_camera_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  if (controllers.currentIndex != 0)
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  setPopUpMenuButtonWidget()
                ],
              ),
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                toolbarHeight: 5,
                backgroundColor: AppColors.tealDarkGreen,
                flexibleSpace: TabBar(
                  controller: tabController,
                  labelStyle: const TextStyle(color: Colors.white),
                  onTap: (index) {
                    setState(() {
                      controllers.setCurreIndex(index);
                    });
                  },
                  unselectedLabelStyle: const TextStyle(color: Colors.white),
                  dividerColor: Colors.transparent,
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(
                      icon: Icon(
                        Icons.group,
                      ),
                    ),
                    Tab(text: 'Chats'),
                    Tab(text: 'Updates'),
                    Tab(text: 'Calls')
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: tabController,
            children: const [
              GroupScreen(),
              ChatScreen(),
              UpdateStatusScreen(),
              CallScreen(),
            ],
          ),
        ),
      ),
    );
  }

  Widget? setFloatingWidget() {
    switch (tabController.index) {
      case 0:
        return null;
      case 1:
        return const ChatFloatingActionButton();
      case 2:
        return const UpdatesFloatingActionButton();
      case 3:
        return const CallsFloatingActionButton();
      default:
        return null;
    }
  }

  Widget setPopUpMenuButtonWidget() {
    switch (tabController.index) {
      case 0:
        return const CommunityPopupMenuButton();
      case 1:
        return const ChatsPopupMenuButton();
      case 2:
        return const UpdatePopupMenuButton();
      case 3:
        return const CallsPopupMenuButton();
      default:
        return const SizedBox.shrink();
    }
  }
}
