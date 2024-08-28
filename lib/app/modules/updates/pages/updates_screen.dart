// ignore_for_file: avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class UpdateStatusScreen extends StatelessWidget {
  const UpdateStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: ListTile(
              leading: Text(
                'Status',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.more_vert,
                size: 25,
                color: Colors.grey,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 1),
            child: ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage:
                        AssetImage('assets/images/profil-pictures.jpg'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Icon(
                      Icons.add_circle,
                      color: AppColors.tealGreen,
                    ),
                  ),
                ],
              ),
              title: Text(
                'My ststus',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Tap to add ststus update'),
            ),
          ),
          const ListTile(
            title: Text(
              'Recent Updates',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 32,
              backgroundImage: const AssetImage('assets/images/Laura.jpg'),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.green, width: 3),
                ),
              ),
            ),
            title: const Text(
              'Laura',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text('29 menit lalu'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              title: const Text(
                'Channels',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Stay update on topics that matter to you. Find channels to follow below.',
                style: TextStyle(
                  color: AppColors.grey.shade600,
                ),
              ),
              trailing: const Icon(
                Icons.add,
                color: AppColors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
