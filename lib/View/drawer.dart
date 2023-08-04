// ignore_for_file: unused_field, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zai_system/View/Courses_Page.dart';
import 'package:zai_system/View/home.dart';
import 'package:zai_system/View/loginscreen.dart';
import 'package:zai_system/View/profile_screen.dart';
import 'package:zai_system/View/team.dart';
import 'package:zai_system/View/hcm360.dart';
import 'package:zai_system/model/current_appuser.dart';

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
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 40, top: 40),
      decoration: BoxDecoration(
          color: Colors.grey.shade800,
          boxShadow: [BoxShadow(color: Colors.black45)]),
      width: 300,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage(image),
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              " $name",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 30.0),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homescreen()))
                      .then((value) => setState(() {}));
                },
                child: _buildRow(Icons.home, "Home")),
            _buildDivider(),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => hrm()))
                      .then((value) => setState(() {}));
                },
                child: _buildRow(Icons.design_services, "HCM 360°")),
            _buildDivider(),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Courses()))
                      .then((value) => setState(() {}));
                },
                child: _buildRow(Icons.my_library_books_sharp, "IT Training")),
            _buildDivider(),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Team()))
                      .then((value) => setState(() {}));
                },
                child: _buildRow(Icons.group, "Team")),
            _buildDivider(),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()))
                      .then((value) => setState(() {}));
                },
                child: _buildRow(Icons.person_pin, "My profile")),
            _buildDivider(),
            SizedBox(
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
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: Color.fromARGB(255, 225, 225, 225),
    );
  }

  Widget _buildRow(IconData icon, String title, {bool showBadge = false}) {
    final TextStyle tStyle = TextStyle(color: Colors.grey, fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(width: 10.0),
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        Spacer(),
      ]),
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const LoginScreen()));
  }
}
