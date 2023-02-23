import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zai_system/View/loginscreen.dart';
import 'package:zai_system/Widget/constants.dart';

class ForgotPScreen extends StatefulWidget {
  const ForgotPScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPScreen> createState() => _ForgotPScreenState();
}

class _ForgotPScreenState extends State<ForgotPScreen> {
  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final _auth = FirebaseAuth.instance;
  bool load = false;
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
                    padding: const EdgeInsets.symmetric(vertical: 80),
                    child: SingleChildScrollView(
                      child: Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Image(
                                  height: 150,
                                  width: 150,
                                  image: AssetImage(
                                      'assests/splashScreen/spWhite.png')),
                              const Text(
                                'Forgot Password',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Building the Future with Tech',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: whitecolor,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Form(
                                  key: _formkey,
                                  child: Column(children: [
                                    Padding(
                                      padding: apppaddings,
                                      child: TextFormField(
                                        controller: emailController,
                                        keyboardType: TextInputType.text,
                                        validator: (value) {
                                          if (value!.isEmpty)
                                            return "Email is required*";

                                          Pattern pattern =
                                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

                                          RegExp regex =
                                              RegExp(pattern.toString());

                                          if (!regex.hasMatch(value.trim())) {
                                            return "Email address is not valid";
                                          }

                                          return null;
                                        },
                                        decoration: InputDecoration(
                                          hintText: 'EMAIL',
                                          hintStyle: const TextStyle(
                                              fontFamily: 'Rubik Medium',
                                              fontSize: 16),
                                          fillColor: const Color(0xffF8F9FA),
                                          filled: true,
                                          prefixIcon: const Icon(
                                            Icons.email_outlined,
                                            color: iconcolor,
                                          ),
                                          // focusedBorder: fbbutton,
                                          // enabledBorder: ebbutton,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    Padding(
                                      padding: apppaddings,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: redcolor,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            height: 50,
                                            width: 200,
                                            child: TextButton(
                                              child: Center(
                                                child: Text(
                                                  'Recover Password',
                                                  style: const TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    fontFamily: 'Rubik Medium',
                                                  ),
                                                ),
                                              ),
                                              onPressed: () async {
                                                if (_formkey.currentState!
                                                    .validate()) {
                                                  setState(() {
                                                    load = false;
                                                  });
                                                  try {
                                                    _auth
                                                        .sendPasswordResetEmail(
                                                            email:
                                                                emailController
                                                                    .text
                                                                    .toString())
                                                        .then((value) {
                                                      setState(() {
                                                        load = false;
                                                      });
                                                      toastMessage(
                                                          'Please Check your email, a reset link has been sent to your email');
                                                    }).onError((error,
                                                            stackTrace) {
                                                      toastMessage(
                                                          error.toString());
                                                      setState(() {
                                                        load = false;
                                                      });
                                                    });
                                                  } catch (e) {
                                                    print(e.toString());
                                                    toastMessage(e.toString());
                                                  }
                                                  Get.to(() => LoginScreen());
                                                }
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ]))
                            ]),
                      ),
                    )))));
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

  Future<void> signIn(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
                  // CurrentAppUser.currentUserData
                  //     .getCurrentUserData(uid.user!.uid),
                  Fluttertoast.showToast(msg: "Login Successful"),
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
}
