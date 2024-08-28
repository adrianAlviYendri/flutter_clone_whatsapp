import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class ChatFloatingActionButton extends StatelessWidget {
  const ChatFloatingActionButton({
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
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {});
  }
}
