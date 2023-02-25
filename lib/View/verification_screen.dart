import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:zai_system/Utils/utils.dart';
import 'package:zai_system/View/loginscreen.dart';
import 'package:zai_system/View/otp_verification2.dart';
import 'package:zai_system/Widget/constants.dart';
import 'package:zai_system/Widget/round_button.dart';
import 'package:zai_system/model/app_user.dart';

class VerificationScr extends StatefulWidget {
  const VerificationScr({Key? key}) : super(key: key);

  @override
  State<VerificationScr> createState() => _VerificationScrState();
}

class _VerificationScrState extends State<VerificationScr> {
  final _formKey = GlobalKey<FormState>();
  static const String id = '/signup';
  String username = "", email = "", password = "", contact = "";
  bool load = false;
  bool showSpinner = false;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.red, Colors.black])),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                    height: 150,
                    width: 150,
                    image: AssetImage('assests/splashScreen/spWhite.png')),
                const Text(
                  'Building the Future with Tech',
                  style: TextStyle(
                      fontSize: 15,
                      color: whitecolor,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'SIGNUP',
                  style: TextStyle(
                      fontSize: 35,
                      color: whitecolor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  key: _formKey,
                  child: Column(children: [
                    Padding(
                      padding: apppaddings,
                      child: TextFormField(
                        controller: namecontroller,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'required';
                          } else
                            return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'FULL NAME',
                          hintStyle: const TextStyle(
                              fontFamily: 'Rubik Medium', fontSize: 16),
                          fillColor: const Color(0xffF8F9FA),
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.person_outlined,
                            color: iconcolor,
                          ),
                          focusedBorder: fbbutton,
                          enabledBorder: ebbutton,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: apppaddings,
                      child: TextFormField(
                        controller: emailcontroller,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'required';
                          } else
                            return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'EMAIL',
                          hintStyle: const TextStyle(
                              fontFamily: 'Rubik Medium', fontSize: 16),
                          fillColor: const Color(0xffF8F9FA),
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: iconcolor,
                          ),
                          focusedBorder: fbbutton,
                          enabledBorder: ebbutton,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: apppaddings,
                      child: TextFormField(
                        controller: passwordcontroller,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'required';
                          } else
                            return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'PASSWORD',
                          hintStyle: const TextStyle(
                              fontFamily: 'Rubik Medium', fontSize: 16),
                          fillColor: const Color(0xffF8F9FA),
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.lock_outlined,
                            color: iconcolor,
                          ),
                          suffixIcon: const Icon(
                            Icons.remove_red_eye_outlined,
                            color: iconcolor,
                          ),
                          focusedBorder: fbbutton,
                          enabledBorder: ebbutton,
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 15,
                    // ),
                    // Padding(
                    //   padding: apppaddings,
                    //   child: TextFormField(
                    //     keyboardType: TextInputType.visiblePassword,
                    //     decoration: InputDecoration(
                    //       hintText: 'CONFIRM PASSWORD',
                    //       hintStyle: const TextStyle(
                    //           fontFamily: 'Rubik Medium', fontSize: 16),
                    //       fillColor: const Color(0xffF8F9FA),
                    //       filled: true,
                    //       prefixIcon: const Icon(
                    //         Icons.lock_outlined,
                    //         color: iconcolor,
                    //       ),
                    //       suffixIcon: const Icon(
                    //         Icons.remove_red_eye_outlined,
                    //         color: iconcolor,
                    //       ),
                    //       focusedBorder: fbbutton,
                    //       enabledBorder: ebbutton,
                    //     ),
                    //   ),
                    // ),
                    // const Text(
                    //   'OTP Verification',
                    //   style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 25,
                    //       fontWeight: FontWeight.bold),
                    // ),
                    // const SizedBox(
                    //   height: 30,
                    // ),

                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: apppaddings,
                      child: TextFormField(
                        controller: phoneNumberController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Provide Contact in +92 format required';
                          } else
                            return null;
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: '+923001234567',
                          hintStyle: const TextStyle(
                              fontFamily: 'Rubik Medium', fontSize: 16),
                          fillColor: const Color(0xffF8F9FA),
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.perm_contact_cal_outlined,
                            color: iconcolor,
                          ),
                          focusedBorder: fbbutton,
                          enabledBorder: ebbutton,
                        ),
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Enter your phone number to receive',
                    style: TextStyle(
                        fontSize: 14,
                        color: whitecolor,
                        fontWeight: FontWeight.w500)),
                const Text('verification code',
                    style: TextStyle(
                        fontSize: 14,
                        color: whitecolor,
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: apppaddings,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundButton(
                        title: 'GET OTP',
                        loading: load,
                        onTap: () async {
                          setState(() {
                            load = true;
                          });
                          await signUp(emailcontroller.text.toString(),
                              passwordcontroller.text.toString());
                          _auth.verifyPhoneNumber(
                              phoneNumber: phoneNumberController.text,
                              verificationCompleted: (_) {
                                setState(() {
                                  load = false;
                                });
                              },
                              verificationFailed: (e) {
                                setState(() {
                                  load = false;
                                });
                                Utils().toastMessage(e.toString());
                              },
                              codeSent: (String verificationId, int? token) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            OTPVerificationScr(
                                              verificationId: verificationId,
                                            )));
                                setState(() {
                                  load = false;
                                });
                              },
                              codeAutoRetrievalTimeout: (e) {
                                Utils().toastMessage(e.toString());
                                setState(() {
                                  load = false;
                                });
                              });
                        },
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an Account',
                        style: TextStyle(
                            fontSize: 14,
                            color: whitecolor,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          (context),
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen())),
                      child: Text('Login',
                          style: TextStyle(
                              fontSize: 14,
                              color: whitecolor,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signUp(String email, String password) async {
    print('111 ${emailcontroller.text}');
    print('111 ${namecontroller.text}');
    print('111 ${passwordcontroller.text}');
    print('111 ${phoneNumberController.text}');
    if (_formKey.currentState!.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => {postDetailsToFirestore()})
            .catchError((e) {
          Fluttertoast.showToast(msg: e!.message);
        });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }

  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    AppUser userModel = AppUser();

    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.name = namecontroller.text;
    userModel.phone = phoneNumberController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(AppUser.toMap(userModel));
    Fluttertoast.showToast(msg: "Account created successfully");
  }
}
