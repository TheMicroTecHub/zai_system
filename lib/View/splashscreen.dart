import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zai_system/View/home.dart';
import 'package:zai_system/View/verification_screen.dart';
import 'package:zai_system/model/current_appuser.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    var user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      CurrentAppUser.currentUserData.getCurrentUserData(user.uid);
      Timer(
          const Duration(seconds: 3),
          () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Homescreen())));
    } else {
      Timer(
          const Duration(seconds: 3),
          () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const VerificationScr())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assests/splashScreen/spBlack.png',
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
