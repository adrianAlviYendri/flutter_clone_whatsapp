// ignore_for_file: avoid_unnecessary_containers, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: AppColors.tealGreen,
                  radius: 32,
                  child: Icon(
                    Icons.link,
                    size: 35,
                  ),
                ),
                title: const Text(
                  'Create call link',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Shere a link for your WhatsApp',
                  style: TextStyle(
                    color: AppColors.grey.shade600,
                  ),
                ),
              ),
            ),
            const ListTile(
              title: Text(
                'Ongoing',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.lightGreen,
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 32,
                  backgroundColor: AppColors.grey.shade400,
                  child: const Icon(
                    Icons.group,
                    size: 45,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Laura Moena & chika',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: const Text('Tap to join'),
                trailing: const CircleAvatar(
                    backgroundColor: AppColors.tealGreen,
                    child: Icon(
                      Icons.call,
                      color: Colors.white,
                    )),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Recent',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.grey.shade400,
                radius: 32,
                child: const Icon(
                  Icons.person,
                  size: 45,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'Laura moena',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Row(
                children: [
                  const Icon(
                    Icons.call_received,
                    color: Colors.red,
                  ),
                  Text(
                    'Just now',
                    style: TextStyle(
                      color: AppColors.grey.shade700,
                    ),
                  ),
                ],
              ),
              trailing: const CircleAvatar(
                backgroundColor: Color.fromARGB(135, 229, 224, 224),
                child: Icon(
                  Icons.call,
                  color: AppColors.green,
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.grey.shade400,
                radius: 32,
                child: const Icon(
                  Icons.person,
                  size: 45,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'Laura moena',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Row(
                children: [
                  const Icon(
                    Icons.call_made,
                    color: AppColors.tealGreen,
                  ),
                  Text(
                    '1 minutes ago',
                    style: TextStyle(
                      color: AppColors.grey.shade700,
                    ),
                  ),
                ],
              ),
              trailing: const CircleAvatar(
                backgroundColor: Color.fromARGB(135, 229, 224, 224),
                child: Icon(
                  Icons.call,
                  color: AppColors.green,
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.grey.shade400,
                radius: 32,
                child: const Icon(
                  Icons.person,
                  size: 45,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'Laura moena',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Row(
                children: [
                  const Icon(
                    Icons.call_made,
                    color: AppColors.tealGreen,
                  ),
                  Text(
                    '2 minutes ago',
                    style: TextStyle(
                      color: AppColors.grey.shade700,
                    ),
                  ),
                ],
              ),
              trailing: const CircleAvatar(
                backgroundColor: Color.fromARGB(135, 229, 224, 224),
                child: Icon(
                  Icons.video_call,
                  color: AppColors.green,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock,
                    size: 18,
                  ),
                  Text.rich(
                    TextSpan(
                        text: ' You personal call are',
                        style: TextStyle(
                          color: AppColors.grey,
                        ),
                        children: [
                          TextSpan(
                              text: ' end-to-end encrypted',
                              style: TextStyle(color: AppColors.green))
                        ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
