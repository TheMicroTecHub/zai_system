// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zai_system/Widget/constants.dart';
import 'package:zai_system/Widget/round_button.dart';
import 'package:zai_system/View/drawer.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:url_launcher/url_launcher.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  final _formKey = GlobalKey<FormState>();
  bool load = false;
  bool showSpinner = false;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController empController = TextEditingController();
  TextEditingController recipientController =
      TextEditingController(text: 'babarmis108@gmail.com');
  TextEditingController subjectController =
      TextEditingController(text: 'Demo Request');
  TextEditingController bodyController = TextEditingController(
    text: 'Hi, I would to request a demo',
  );

  @override
  void dispose() {
    namecontroller.dispose();
    emailcontroller.dispose();
    phoneNumberController.dispose();
    companyController.dispose();
    empController.dispose();
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
                  Padding(
                    padding: apppaddings,
                    child: TextFormField(
                      enabled: !load,
                      controller: namecontroller,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'required';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Name',
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
                      enabled: !load,
                      controller: companyController,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'required';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Company Name',
                        hintStyle: const TextStyle(
                            fontFamily: 'Rubik Medium', fontSize: 16),
                        fillColor: const Color(0xffF8F9FA),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.business_outlined,
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
                      enabled: !load,
                      controller: empController,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'required';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'No. of Employees',
                        hintStyle: const TextStyle(
                            fontFamily: 'Rubik Medium', fontSize: 16),
                        fillColor: const Color(0xffF8F9FA),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.work_outline_outlined,
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
                      enabled: !load,
                      controller: emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'required';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Email',
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
                      enabled: !load,
                      controller: phoneNumberController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Provide Contact in +92 format required';
                        } else
                          return null;
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Mobile',
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
    final name = namecontroller.text;
    final mail = emailcontroller.text;
    final number = phoneNumberController.text;
    final company = companyController.text;
    final employ = empController.text;
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
