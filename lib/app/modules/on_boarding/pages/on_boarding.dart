import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';
import 'package:flutter_clone_whatsapp/app/modules/on_boarding/extensions/app_language_extension.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(80),
            ),
            Center(
              child: Image.asset(
                'assets/images/on-boarding.png',
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Welcome to WhatsApp',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: 'Read our',
                style: TextStyle(
                  color: AppColors.blueGrey,
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: ' Privacy Policy',
                    style: TextStyle(
                      color: AppColors.blue,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: ' Tap "Agree and continue" to accept the',
                    style: TextStyle(
                      color: AppColors.blueGrey,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: ' Term of Service',
                    style: TextStyle(
                      color: AppColors.blue,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 300,
              height: 45,
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.autentication.path);
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      backgroundColor: AppColors.tealGreen),
                  child: const Text(
                    'Agree & continue',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  showDragHandle: true,
                  builder: (_) {
                    return Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            children: [
                              Icon(Icons.clear, color: Colors.grey, size: 24),
                              SizedBox(
                                width: 16,
                              ),
                              Text('App Language',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        ListView.builder(
                          itemCount: AppLanguage.values.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            var appLanguage = AppLanguage.values[index];
                            return RadioListTile(
                              selected: true,
                              value: 'value',
                              groupValue: 'groupValue',
                              title: Text(
                                appLanguage.name,
                                style: const TextStyle(fontSize: 14),
                              ),
                              subtitle: Text(
                                appLanguage.name,
                                style: const TextStyle(fontSize: 12),
                              ),
                              onChanged: (value) {},
                            );
                          },
                        )
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  backgroundColor: AppColors.grey.shade100),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.language,
                    color: AppColors.tealGreen,
                    size: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      'English',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.tealGreen),
                    ),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: AppColors.tealGreen,
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
