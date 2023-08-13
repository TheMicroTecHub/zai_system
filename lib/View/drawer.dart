// ignore_for_file: unused_field, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zai_system/View/loginscreen.dart';
import 'package:zai_system/model/current_appuser.dart';
import 'package:get/get.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? name;
  @override
  void initState() {
    super.initState();
    name = CurrentAppUser.currentUserData.name ?? "";
    setState(() {});
  }

  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return buildDrawer();
  }

  buildDrawer() {
    final String image = CurrentAppUser.currentUserData.image ??
        "https://firebasestorage.googleapis.com/v0/b/zai-system-1f2c7.appspot.com/o/images%2Fdefault.png?alt=media&token=0b0b0b0b-0b0b-0b0b-0b0b-0b0b0b0b0b0b";
    return SingleChildScrollView(
      child: Container(
        padding:
            const EdgeInsets.only(left: 16.0, right: 40, top: 40, bottom: 100),
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
          boxShadow: const [
            BoxShadow(color: Colors.black45),
          ],
        ),
        width: 300,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage(image),
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                " $name",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 30.0),
              InkWell(
                  onTap: () {
                    Get.offNamed("/home");
                  },
                  child: _buildRow(Icons.home, "Home")),
              _buildDivider(),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    Get.offNamed("/hcm");
                  },
                  child: _buildRow(Icons.design_services, "HCM 360°")),
              _buildDivider(),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    Get.offNamed("/services");
                  },
                  child: _buildRow(Icons.miscellaneous_services, "Services")),
              _buildDivider(),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    Get.offNamed("/courses");
                  },
                  child:
                      _buildRow(Icons.my_library_books_sharp, "IT Training")),
              _buildDivider(),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    Get.offNamed("/team");
                  },
                  child: _buildRow(Icons.group, "Team")),
              _buildDivider(),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    Get.offNamed("/contact");
                  },
                  child: _buildRow(Icons.contact_page, "Contact Us")),
              _buildDivider(),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    Get.offNamed("/profile");
                  },
                  child: _buildRow(Icons.person_pin, "My profile")),
              _buildDivider(),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () async {
                    await logout(context);
                  },
                  child: _buildRow(Icons.logout, "Logout")),
              _buildDivider(),
            ],
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return const Divider(
      color: Color.fromARGB(255, 225, 225, 225),
    );
  }

  Widget _buildRow(IconData icon, String title, {bool showBadge = false}) {
    final TextStyle tStyle =
        const TextStyle(color: Colors.grey, fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(width: 10.0),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const Spacer(),
      ]),
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const LoginScreen()));
  }
}
