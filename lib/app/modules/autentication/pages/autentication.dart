// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class AutenticationScreen extends StatelessWidget {
  const AutenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Enter your phone number',
            style: TextStyle(color: AppColors.tealGreen)),
        actions: const [
          Icon(
            Icons.more_vert,
            color: AppColors.grey,
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: 'WhatsApp will need to verify your account.',
                style: TextStyle(fontSize: 15),
                children: [
                  TextSpan(
                    text: " What's my number?",
                    style: TextStyle(color: AppColors.blue),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
              readOnly: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Chosee a country',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.verifying.path);
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 24.0,
                    color: AppColors.green,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.tealGreen)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
