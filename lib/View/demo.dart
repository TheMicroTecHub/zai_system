// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zai_system/Widget/constants.dart';
import 'package:zai_system/Widget/round_button.dart';
import 'package:zai_system/View/drawer.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  final _formKey = GlobalKey<FormState>();
  bool load = false;
  bool showSpinner = false;
  TextEditingController recipientController =
      TextEditingController(text: 'babarmis108@gmail.com');
  TextEditingController subjectController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  @override
  void dispose() {
    recipientController.dispose();
    subjectController.dispose();
    bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Request a Demo",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        drawer: MyDrawer(),
        body: Container(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Text("Demo Request",
                        style: TextStyle(
                            color: Color(0xFFE4393C),
                            fontSize: 50,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Form(
                key: _formKey,
                child: Column(children: [
                  // Padding(
                  //   padding: apppaddings,
                  //   child: TextFormField(
                  //     enabled: !load,
                  //     controller: namecontroller,
                  //     keyboardType: TextInputType.text,
                  //     validator: (value) {
                  //       if (value!.isEmpty) {
                  //         return 'required';
                  //       }
                  //       return null;
                  //     },
                  //     decoration: InputDecoration(
                  //       hintText: 'Name',
                  //       hintStyle: const TextStyle(
                  //           fontFamily: 'Rubik Medium', fontSize: 16),
                  //       fillColor: const Color(0xffF8F9FA),
                  //       filled: true,
                  //       prefixIcon: const Icon(
                  //         Icons.person_outlined,
                  //         color: iconcolor,
                  //       ),
                  //       focusedBorder: fbbutton,
                  //       enabledBorder: ebbutton,
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 15,
                  // ),
                  Padding(
                    padding: apppaddings,
                    child: TextFormField(
                      enabled: !load,
                      controller: subjectController,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'required';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Demo Type',
                        hintStyle: const TextStyle(
                            fontFamily: 'Rubik Medium', fontSize: 16),
                        fillColor: const Color(0xffF8F9FA),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.subject_outlined,
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
                      minLines: 1, // Set this
                      maxLines: 6,
                      enabled: !load,
                      controller: bodyController,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'required';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Details',
                        hintStyle: const TextStyle(
                            fontFamily: 'Rubik Medium', fontSize: 16),
                        fillColor: const Color(0xffF8F9FA),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.message_outlined,
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
                  //     enabled: !load,
                  //     controller: emailcontroller,
                  //     keyboardType: TextInputType.emailAddress,
                  //     validator: (value) {
                  //       if (value!.isEmpty) {
                  //         return 'required';
                  //       }
                  //       return null;
                  //     },
                  //     decoration: InputDecoration(
                  //       hintText: 'Email',
                  //       hintStyle: const TextStyle(
                  //           fontFamily: 'Rubik Medium', fontSize: 16),
                  //       fillColor: const Color(0xffF8F9FA),
                  //       filled: true,
                  //       prefixIcon: const Icon(
                  //         Icons.email_outlined,
                  //         color: iconcolor,
                  //       ),
                  //       focusedBorder: fbbutton,
                  //       enabledBorder: ebbutton,
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 15,
                  // ),
                  // Padding(
                  //   padding: apppaddings,
                  //   child: TextFormField(
                  //     enabled: !load,
                  //     controller: phoneNumberController,
                  //     validator: (value) {
                  //       if (value!.isEmpty) {
                  //         return 'Provide Contact in +92 format required';
                  //       } else
                  //         return null;
                  //     },
                  //     keyboardType: TextInputType.phone,
                  //     decoration: InputDecoration(
                  //       hintText: 'Mobile',
                  //       hintStyle: const TextStyle(
                  //           fontFamily: 'Rubik Medium', fontSize: 16),
                  //       fillColor: const Color(0xffF8F9FA),
                  //       filled: true,
                  //       prefixIcon: const Icon(
                  //         Icons.perm_contact_cal_outlined,
                  //         color: iconcolor,
                  //       ),
                  //       focusedBorder: fbbutton,
                  //       enabledBorder: ebbutton,
                  //     ),
                  //   ),
                  // ),
                ]),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: apppaddings,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RoundButton(
                      title: 'Submit Order',
                      loading: load,
                      onTap: load
                          ? null
                          : () async {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  load = true;
                                });
                                await send();
                              }
                            },
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Future<void> send() async {
    final Email email = Email(
      body: bodyController.text,
      subject: subjectController.text,
      recipients: [recipientController.text],
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (_formKey.currentState!.validate()) {
      sendEmail();
      Fluttertoast.showToast(msg: platformResponse);
    }
  }

  sendEmail() async {
    setState(() {
      load = false;
    });
    Future.delayed(
      const Duration(milliseconds: 100),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const DemoScreen(),
        ),
      ),
    );
  }
}
