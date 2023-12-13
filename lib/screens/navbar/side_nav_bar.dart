import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kheti_shayak_my_version/screens/auth/otp_screen.dart';
import 'package:kheti_shayak_my_version/utils/custom_dialog_box.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          //?? for user ppf, name and email ->
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Shashwat Shandilya',
              style: TextStyle(
                fontFamily: 'poppins_bold',
                letterSpacing: 0.8,
              ),
            ),
            accountEmail: const Text(
              'tshashwat856@gmail.com',
              style: TextStyle(
                fontFamily: 'poppins_medium',
                letterSpacing: 0.8,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://cdn.mos.cms.futurecdn.net/LndMc2zktYjtJmVRvfN7SH-1200-80.jpg.webp',
                  width: 90.0,
                  height: 90.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://img.freepik.com/free-photo/old-black-background-grunge-texture-dark-wallpaper-blackboard-chalkboard-room-wall_1258-28312.jpg?w=1480&t=st=1681537156~exp=1681537756~hmac=4d6ddae3bcfcc3473fab0c574688a6ec68b44e51d42ccdb439553fd2eac6d1e9',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8.0),

          //?? list of contents ->
          ListTile(
            leading: const Icon(Icons.cleaning_services_outlined),
            title: const Text(
              'Tools',
              style: TextStyle(
                fontFamily: 'poppins',
                letterSpacing: 0.8,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.shutter_speed_sharp),
            title: const Text(
              'Crops',
              style: TextStyle(
                fontFamily: 'poppins',
                letterSpacing: 0.8,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.landscape),
            title: const Text(
              'Land',
              style: TextStyle(
                fontFamily: 'poppins',
                letterSpacing: 0.8,
              ),
            ),
            onTap: () {},
          ),

          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text(
              'Notifications',
              style: TextStyle(
                fontFamily: 'poppins',
                letterSpacing: 0.8,
              ),
            ),
            trailing: ClipOval(
              child: Container(
                color: Colors.green,
                width: 20.0,
                height: 20.0,
                child: const Center(
                  child: Text(
                    '7',
                    style: TextStyle(
                      fontFamily: 'poppins_bold',
                      letterSpacing: 0.8,
                    ),
                  ),
                ),
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.share_sharp),
            title: const Text(
              'Share',
              style: TextStyle(
                fontFamily: 'poppins',
                letterSpacing: 0.8,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text(
              'About Us',
              style: TextStyle(
                fontFamily: 'poppins',
                letterSpacing: 0.8,
              ),
            ),
            onTap: () {
              Get.to(() => const OTPScreen());
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout_sharp),
            title: const Text(
              'Logout',
              style: TextStyle(
                fontFamily: 'poppins',
                letterSpacing: 0.8,
              ),
            ),
            onTap: () => customDialogBox(context),
          ),

          const SizedBox(height: 140.0),

          const Center(
            child: Text(
              'by Kheti Shayak',
              style: TextStyle(
                fontFamily: 'poppins_medium',
                letterSpacing: 0.8,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          const Center(
            child: Text(
              'version v1',
              style: TextStyle(
                fontFamily: 'poppins_medium',
                letterSpacing: 0.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
