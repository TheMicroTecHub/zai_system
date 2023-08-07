// ignore_for_file: unused_import, unused_field

import 'dart:io';
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zai_system/View/loginscreen.dart';
import 'package:zai_system/model/current_appuser.dart';
import 'package:zai_system/Widget/round_button.dart';
import 'package:zai_system/Widget/constants.dart';
import 'package:zai_system/View/email_verification.dart';
import 'package:zai_system/View/drawer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? name;
  String? email;
  String? phone;
  @override
  void initState() {
    super.initState();
    name = CurrentAppUser.currentUserData.name;
    email = CurrentAppUser.currentUserData.email;
    phone = CurrentAppUser.currentUserData.phone;
    setState(() {});
  }

  bool showSpinner = false;
  final ref = FirebaseStorage.instance.ref('images');
  bool isUploading = false;
  User? user = FirebaseAuth.instance.currentUser;

  void uploadImage() {
    setState(() {
      isUploading = true;
    });
    final _user = _auth.currentUser;
    if (_user != null && _image != null) {
      final _uid = _user.uid;
      final imageExt = _image!.path.split('.').last;
      final _ref = FirebaseStorage.instance.ref('images/$_uid.$imageExt');
      _ref.putFile(_image!).then((value) {
        value.ref.getDownloadURL().then((value) async {
          print(value);
          Fluttertoast.showToast(msg: "Image Uploaded");
          var _ref = FirebaseFirestore.instance.collection('users');
          if ((await _ref.doc(_uid).get()).exists) {
            await _ref.doc('$_uid').update({'image': value});
          }
          setState(() {
            isUploading = false;
          });
        });
      });
    }
  }

  File? _image;
  final picker = ImagePicker();
  Future getCameraImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        uploadImage();
      } else {
        print("No Image Selected");
      }
    });
  }

  Future getGalleryImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        uploadImage();
      } else {
        print("No Image Selected");
      }
    });
  }

  void dialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Container(
              height: 120,
              child: Column(
                children: [
                  InkWell(
                      onTap: () {
                        getCameraImage();
                        Navigator.pop(context);
                      },
                      child: const ListTile(
                        leading: Icon(Icons.camera_alt),
                        title: Text("Camera"),
                      )),
                  InkWell(
                      onTap: () {
                        getGalleryImage();
                        Navigator.pop(context);
                      },
                      child: const ListTile(
                        leading: Icon(Icons.photo_library),
                        title: Text("Gallery"),
                      ))
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Center(child: Text("My Profile")),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        drawer: const MyDrawer(),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Column(children: [
              Center(
                  child: Badge(
                badgeStyle: BadgeStyle(
                  badgeColor: Colors.white70,
                ),
                position: BadgePosition.bottomEnd(),
                badgeContent: InkWell(
                  onTap: () => dialog(context),
                  child: isUploading
                      ? const CircularProgressIndicator()
                      : const Icon(
                          Icons.camera_alt,
                          // color: Colors.grey.shade500,
                          size: 30.0,
                        ),
                ),
                child: Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 5)),
                  child: ClipOval(
                    // borderRadius: BorderRadius.circular(100),
                    child: Image(
                        image: NetworkImage(
                          CurrentAppUser.currentUserData.image ?? "",
                        ),
                        fit: BoxFit.fill,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const Center(
                              child: CircularProgressIndicator());
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            child: const Icon(
                              Icons.error_outline,
                              color: Colors.red,
                            ),
                          );
                        }),
                  ),
                ),
              )),
              Text(
                "$name",
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '$email',
                style: const TextStyle(fontSize: 17, color: Colors.grey),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '$phone',
                style: const TextStyle(fontSize: 17, color: Colors.grey),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: apppaddings,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: InkWell(
                        onTap: () async {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) =>
                                      const EmailVerificationScreen()));
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 156, 27, 27),
                                  Color.fromARGB(255, 238, 22, 7)
                                ],
                                begin: FractionalOffset(0.7, 0.9),
                                end: FractionalOffset(0.0, 0.5),
                                stops: [0.0, 0.5],
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 25),
                              child: Text(
                                "Verify",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
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
              )
            ]),
          ),
        ));
  }
}

Future<void> logout(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const LoginScreen()));
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
