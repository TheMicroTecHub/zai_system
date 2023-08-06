import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/Components/aboutcompany.dart';
import 'package:zai_system/Components/companyhome.dart';
import 'package:zai_system/Components/expertise.dart';
import 'package:zai_system/Components/footer.dart';
import 'package:zai_system/Components/imagecarousel.dart';
import 'package:zai_system/Components/testimonial.dart';
import 'package:zai_system/Components/courseshome.dart';
import 'package:zai_system/View/drawer.dart';
import 'package:zai_system/Components/hcm.dart';
import 'package:zai_system/model/current_appuser.dart';
import 'package:zai_system/Components/getintouch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String image = CurrentAppUser.currentUserData.image ??
      "https://firebasestorage.googleapis.com/v0/b/zai-system-app-1f2c7.appspot.com/o/images%2Fdefault.png?alt=media&token=0b0b0b0b-0b0b-0b0b-0b0b-0b0b0b0b0b0b";
  String? name;
  @override
  void initState() {
    super.initState();
    name = CurrentAppUser.currentUserData.name;
    setState(() {});
  }

  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Zai Systems",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Carousel(),
            const Companyhome(),
            const HcmHome(),
            const AboutCompany(),
            const CoursesHome(),
            const Expertise(),
            const Testimonials(),
            const GetInTouch(),
            Container(
                decoration: const BoxDecoration(color: Colors.black),
                child: const Footer()),
          ],
        ),
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Get.offNamed("/login");
  }
  // Image(){

  // }
}
