import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class VerifyingScreen extends StatelessWidget {
  const VerifyingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
          child: Text(
            'Verifying your number',
            style: TextStyle(fontSize: 20, color: AppColors.tealGreen),
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: AppColors.grey,
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              const Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                    text:
                        'Waiting to automatically delect an SMS sent to +65814891490.',
                    style: TextStyle(fontSize: 15),
                    children: [
                      TextSpan(
                        text: 'wrong number?',
                        style: TextStyle(color: AppColors.blue),
                      ),
                    ]),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.tealGreen))),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 25, bottom: 20),
                child: Text(
                  'Enter 6-digit code',
                  style: TextStyle(
                      fontSize: 15,
                      color: AppColors.grey,
                      fontWeight: FontWeight.w400),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.profil.path);
                },
                child: const Text(
                  "Didn't receive code?",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 120, 120, 120),
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text.rich(
                  TextSpan(
                      text: 'You may request a new code in',
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                            text: ' 1:19',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 120, 120, 120),
                            ))
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
