import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../View/Courses_Page.dart';
import '../View/home.dart';
import '../View/profile_screen.dart';
import '../View/team.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => MyDrawerState();
}

class MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[800],
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Color(0xff810000)),
            child: Column(
              children: const [
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 121, 116, 116),
                  radius: 45,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Shahzain Ahmed",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: TextButton.icon(
                  onPressed: () => Get.to(Homescreen()),
                  label:
                      const Text("HOME", style: TextStyle(color: Colors.white)),
                  icon: const Icon(Icons.home, color: Colors.white),
                ),
              ),
              ListTile(
                leading: TextButton.icon(
                  onPressed: () => Get.to(ProfileScreen()),
                  label: const Text("PROFILE",
                      style: TextStyle(color: Colors.white)),
                  icon: const Icon(Icons.person, color: Colors.white),
                ),
              ),
              ListTile(
                leading: TextButton.icon(
                  onPressed: () => Get.to(Courses()),
                  label: const Text("COURSES",
                      style: TextStyle(color: Colors.white)),
                  icon: const Icon(Icons.my_library_books_sharp,
                      color: Colors.white),
                ),
              ),
              ListTile(
                leading: TextButton.icon(
                  onPressed: () => Get.to(Team()),
                  label:
                      const Text("TEAM", style: TextStyle(color: Colors.white)),
                  icon: const Icon(Icons.group, color: Colors.white),
                ),
              ),
              ListTile(
                leading: TextButton.icon(
                  onPressed: () => {},
                  label: const Text("LOG OUT",
                      style: TextStyle(color: Colors.white)),
                  icon: const Icon(Icons.logout, color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
