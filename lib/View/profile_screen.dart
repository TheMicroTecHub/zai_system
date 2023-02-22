import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zai_system/Components/home_screen.dart';
import 'package:zai_system/View/loginscreen.dart';
import 'package:zai_system/model/current_appuser.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? name;
  String? email;
  @override
  void initState() {
    super.initState();
    name = CurrentAppUser.currentUserData.name;
    email = CurrentAppUser.currentUserData.email;
    setState(() {});
  }

  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const HomeScreen())));
            },
            icon: const Icon(
              Icons.close,
              size: 35,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Color(0xff810000)])),
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Center(
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('images/pictures.jpg'),
                  backgroundColor: Colors.grey,
                  radius: 60,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "$name",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '$email +2',
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '+923341234567',
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  height: 230,
                  width: 350,
                  padding: const EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                        offset: Offset(
                          2.0,
                          2,
                        ),
                      )
                    ],
                  ),
                  child: ListView(children: [
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        debugPrint('Privacy Policy');
                      },
                      child: const ListTile(
                        leading: Icon(
                          Icons.privacy_tip_outlined,
                          size: 30,
                        ),
                        title: Text(
                          'Privacy Policy',
                          style: TextStyle(fontSize: 25),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 26,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        debugPrint('Terms and condition');
                      },
                      child: const ListTile(
                        leading: Icon(
                          Icons.document_scanner_outlined,
                          size: 30,
                        ),
                        title: Text(
                          'Terms & Conditions',
                          style: TextStyle(fontSize: 25),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 26,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await logout(context);
                      },
                      child: const ListTile(
                        leading: Icon(
                          Icons.logout,
                          size: 30,
                        ),
                        title: Text(
                          'Log Out',
                          style: TextStyle(fontSize: 25),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 26,
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> logout(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => LoginScreen()));
}

void toastMessage(String message) {
  Fluttertoast.showToast(
      msg: message.toString(),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.SNACKBAR,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}
