import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zai_system/Utils/utils.dart';
import 'package:zai_system/View/profile_screen.dart';
import 'package:zai_system/View/verification_screen.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Color(0xff810000)])),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Zai Systems"),
        backgroundColor: Colors.black,
      ),
    
    );
  }
}
