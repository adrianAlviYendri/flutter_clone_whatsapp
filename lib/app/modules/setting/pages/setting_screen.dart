import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.tealDarkGreen,
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.mainScreen.path);
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text('Setelan'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 32,
                  backgroundColor: AppColors.grey,
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Hello World',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'sibuk',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(
                  Icons.qr_code,
                  color: AppColors.tealDarkGreen,
                  size: 35,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.accountScreen.path);
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 5),
                child: ListTile(
                  leading: Icon(
                    Icons.key,
                    size: 40,
                    color: AppColors.grey,
                  ),
                  title: Text(
                    'Akun',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Notifikasi keamanan, ganti nomor',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Icon(
                  Icons.lock,
                  size: 40,
                  color: AppColors.grey,
                ),
                title: Text(
                  'Privasi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Blokir kontak, pesan sementara',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Icon(
                  Icons.share_arrival_time_sharp,
                  size: 40,
                  color: AppColors.grey,
                ),
                title: Text(
                  'Avatar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Buat, edit, foto profil',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Icon(
                  Icons.chat,
                  size: 40,
                  color: AppColors.grey,
                ),
                title: Text(
                  'Chat',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Tema, wallpaper, riwayat chat',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Icon(
                  Icons.notifications,
                  size: 40,
                  color: AppColors.grey,
                ),
                title: Text(
                  'Notifikasi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Pesan, grup & nada dering panggilan',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Icon(
                  Icons.pending,
                  size: 40,
                  color: AppColors.grey,
                ),
                title: Text(
                  'Penyimpanan dan data',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Penggunaan jaringan, unduh otomatis',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Icon(
                  Icons.language,
                  size: 40,
                  color: AppColors.grey,
                ),
                title: Text(
                  'Bahasa aplikasi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Indonesia',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Icon(
                  Icons.add_task_outlined,
                  size: 40,
                  color: AppColors.grey,
                ),
                title: Text(
                  'Bantuan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Pusat bantuan, hubungi kami, kebijakan privasi',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Icon(
                  Icons.group,
                  size: 40,
                  color: AppColors.grey,
                ),
                title: Text(
                  'Undang teman',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'from',
                    style: TextStyle(
                      color: AppColors.grey.shade600,
                      fontSize: 16,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.stream_outlined),
                      Text(
                        'Meta',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
