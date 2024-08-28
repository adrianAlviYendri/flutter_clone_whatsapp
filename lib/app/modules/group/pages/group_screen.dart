// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: AppColors.grey.shade300,
                    child: const Icon(
                      Icons.group,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  const Positioned(
                    bottom: 0,
                    right: 0,
                    child: Icon(
                      Icons.add_circle,
                      color: AppColors.tealGreen,
                    ),
                  ),
                ],
              ),
              title: const Text(
                'New Community',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage('assets/images/beach-pictures.jpg'),
              ),
              title: Text(
                'SG Run Club',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: CircleAvatar(
                radius: 32,
                backgroundColor: Colors.lightGreen.shade100,
                child: const Icon(
                  Icons.volume_up,
                  color: AppColors.tealDarkGreen,
                ),
              ),
              title: const Text(
                'Announcement',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text('You added the group "Runners"'),
              trailing: const Text('20:00 PM'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: CircleAvatar(
                radius: 32,
                backgroundColor: AppColors.grey.shade300,
                child: const Icon(
                  Icons.group,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              title: const Text(
                'Runners',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle:
                  const Text('New participants need admin approval to j...'),
              trailing: const Text('20:00 PM'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ListTile(
              leading: Icon(
                Icons.navigate_next,
                size: 30,
                color: AppColors.grey,
              ),
              title: Text(
                'View all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
