// ignore: unnecessary_import
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';
import 'package:image_picker/image_picker.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  XFile? pickedImage;

  Future<void> openGallery() async {
    final picker = ImagePicker();
    final images = await picker.pickMedia(
      requestFullMetadata: false,
      imageQuality: 100,
    );

    if (images != null) {
      pickedImage = images;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.tealDarkGreen,
        leading: const Icon(Icons.arrow_back),
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  showDragHandle: true,
                  context: context,
                  builder: (_) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Profile Photo',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Icon(
                                Icons.delete,
                                color: AppColors.blueGrey,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: AppColors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.photo_camera,
                                      color: AppColors.tealGreen,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2),
                                    child: Text(
                                      'Camera',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.grey.shade900,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        openGallery();
                                      },
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: AppColors.grey,
                                            width: 2,
                                          ),
                                        ),
                                        child: const Icon(Icons.photo,
                                            color: AppColors.tealGreen),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2),
                                      child: Text(
                                        'Gallery',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: AppColors.grey.shade900,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: AppColors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    child: const Icon(Icons.face,
                                        color: AppColors.tealGreen),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2),
                                    child: Text(
                                      'Avatar',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.grey.shade900,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  });
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: AppColors.grey,
                      backgroundImage: pickedImage == null
                          ? null
                          : FileImage(File(pickedImage!.path)),
                    ),
                    const Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: AppColors.tealGreen,
                          child: Icon(
                            Icons.photo_camera,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.person,
              size: 40,
              color: AppColors.blueGrey,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(fontSize: 16, color: AppColors.blueGrey),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  child: Text(
                    'Adrian Alvi Yendri',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'This is npot your name or pin, this name will be visible to your WhatsApp contacts',
                  style: TextStyle(fontSize: 14, color: AppColors.blueGrey),
                ),
              ],
            ),
            trailing: Icon(
              Icons.mode,
              color: AppColors.tealGreen,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: Icon(
                Icons.info,
                size: 40,
                color: AppColors.blueGrey,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: TextStyle(fontSize: 16, color: AppColors.blueGrey),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    child: Text(
                      'Sibuk',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.mode,
                color: AppColors.tealGreen,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                size: 40,
                color: AppColors.blueGrey,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone',
                    style: TextStyle(fontSize: 16, color: AppColors.blueGrey),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    child: Text(
                      '+62 852-6310-0075',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.mode,
                color: AppColors.tealGreen,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
