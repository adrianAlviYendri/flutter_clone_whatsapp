import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';

class CallsPopupMenuButton extends StatelessWidget {
  const CallsPopupMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
        color: Colors.white,
        elevation: 1,
        surfaceTintColor: Colors.white,
        icon: const Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
        offset: const Offset(0, 46),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onSelected: (String select) {
          if (select == 'seting') {
            Navigator.pushNamed(context, AppRoutes.settingScreen.path);
          }
        },
        itemBuilder: (BuildContext context) {
          return [
            const PopupMenuItem<String>(
              value: "menuOption",
              child: SizedBox(
                width: 140,
                child: Text(
                  'Clear call log ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const PopupMenuItem<String>(
              value: "seting",
              child: SizedBox(
                width: 140,
                child: Text(
                  'Setting',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ];
        });
  }
}
