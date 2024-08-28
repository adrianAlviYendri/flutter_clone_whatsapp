import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class UpdatesFloatingActionButton extends StatelessWidget {
  const UpdatesFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton.small(
          backgroundColor: Colors.green.shade300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Icon(Icons.star_purple500_rounded),
          onPressed: () {},
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.cameraPreviewScreen.path);
          },
          backgroundColor: AppColors.tealDarkGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Icon(
            Icons.photo_camera,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
