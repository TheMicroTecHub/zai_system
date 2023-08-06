import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zai_system/model/current_appuser.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      CurrentAppUser.currentUserData.getCurrentUserData(user.uid);
      Timer(const Duration(seconds: 3), () => Get.offNamed("/home"));
    } else {
      Timer(
          const Duration(seconds: 3),
          () =>
              Timer(const Duration(seconds: 3), () => Get.offNamed("/login")));
    }
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assests/splashScreen/spWhite.png',
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
