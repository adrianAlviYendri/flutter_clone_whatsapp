// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class CallsFloatingActionButton extends StatelessWidget {
  const CallsFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: AppColors.tealDarkGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: const Icon(
          Icons.add_call,
          color: Colors.white,
        ),
        onPressed: () {});
  }
}
