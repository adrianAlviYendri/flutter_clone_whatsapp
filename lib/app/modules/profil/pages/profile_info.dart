import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
          child: Text(
            'Profil Info',
            style: TextStyle(color: AppColors.tealGreen, fontSize: 25),
          ),
        ),
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
            padding: EdgeInsets.only(top: 25),
            child: Center(
              child: Text(
                'plese profide your name and an opsional profil photo',
                style: TextStyle(fontSize: 15, color: AppColors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: CircleAvatar(
                backgroundColor: AppColors.grey.shade200,
                radius: 70,
                child: const Icon(
                  Icons.add_a_photo,
                  color: AppColors.grey,
                  size: 50,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Type your name here',
                        hintStyle: TextStyle(color: AppColors.grey),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.tealGreen))),
                  ),
                ),
                const Icon(Icons.emoji_emotions_outlined)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450),
            child: SizedBox(
              width: 80,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.mainScreen.path);
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: AppColors.tealGreen),
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
