import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/Components/aboutcompany.dart';
import 'package:zai_system/Components/companyhome.dart';
import 'package:zai_system/Components/expertise.dart';
import 'package:zai_system/Components/experts.dart';
import 'package:zai_system/Components/footer.dart';
import 'package:zai_system/Components/imagecarousel.dart';
import 'package:zai_system/Components/imgslider.dart';
import 'package:zai_system/Components/testimonial.dart';
import 'package:zai_system/View/Courses_Page.dart';
import 'package:zai_system/View/courseshome.dart';
import 'package:zai_system/View/drawer.dart';
import 'package:zai_system/View/loginscreen.dart';

import 'package:zai_system/model/current_appuser.dart';



class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
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
      drawer: MyDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.red],
            begin: FractionalOffset(0.0, 0.9),
            end: FractionalOffset(0.9, 0.0),
            stops: [0.3, 1.0],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(children: const [
            Carousel(),
            Companyhome(),
            CoursesHome(),
            AboutCompany(),
            Expertise(),
            ImageSlider(),
            Experts(),
            Testimonials(),
            Footer(),
          ]),
        ),
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }
  // Image(){

  // }
}
