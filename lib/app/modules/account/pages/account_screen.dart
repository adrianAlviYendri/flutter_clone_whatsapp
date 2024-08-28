// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.tealDarkGreen,
        leading: InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.settingScreen.path);
            },
            child: Icon(Icons.arrow_back)),
        title: const Text(
          'Account',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(
              leading:
                  const Icon(Icons.security, size: 40, color: AppColors.grey),
              title: Text(
                'Security notifications',
                style: TextStyle(
                  color: AppColors.grey.shade600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(
              leading:
                  const Icon(Icons.more_horiz, size: 40, color: AppColors.grey),
              title: Text(
                'Security notifications',
                style: TextStyle(
                  color: AppColors.grey.shade600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(
              leading: const Icon(Icons.send_to_mobile,
                  size: 40, color: AppColors.grey),
              title: Text(
                'Security notifications',
                style: TextStyle(
                  color: AppColors.grey.shade600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(
              leading: const Icon(Icons.feed, size: 40, color: AppColors.grey),
              title: Text(
                'Security notifications',
                style: TextStyle(
                  color: AppColors.grey.shade600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(
              leading:
                  const Icon(Icons.delete, size: 40, color: AppColors.grey),
              title: Text(
                'Security notifications',
                style: TextStyle(
                  color: AppColors.grey.shade600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
