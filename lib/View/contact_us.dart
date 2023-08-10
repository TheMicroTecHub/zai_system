// ignore_for_file: unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zai_system/Widget/constants.dart';
import 'package:zai_system/Widget/round_button.dart';
import 'package:zai_system/model/contact_user.dart';
import 'package:zai_system/View/drawer.dart';
import 'package:zai_system/Components/footer.dart';
import 'package:zai_system/Components/getintouch.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();
  bool load = false;
  bool showSpinner = false;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  void dispose() {
    namecontroller.dispose();
    emailcontroller.dispose();
    phoneNumberController.dispose();
    subjectController.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> launchFacebook(String fbUrl, String fbWebUrl) async {
      try {
        bool launched = await launch(fbUrl, forceSafariVC: false);
        print("Launched Native app $launched");

        if (!launched) {
          await launch(fbWebUrl, forceSafariVC: false);
          print("Launched browser $launched");
        }
      } catch (e) {
        await launch(fbWebUrl, forceSafariVC: false);
        print("Inside catch");
      }
    }

    void launchWhatsApp({
      required int phone,
      required String message,
    }) async {
      String url() {
        if (Platform.isAndroid) {
          // add the [https]
          return "https://wa.me/$phone/?text=${Uri.parse(message)}"; // new line
        } else {
          // add the [https]
          return "https://api.whatsapp.com/send?phone=$phone=${Uri.parse(message)}"; // new line
        }
      }

      if (await canLaunch(url())) {
        await launch(url());
      } else {
        throw 'Could not launch ${url()}';
      }
    }

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Contact Us",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        drawer: MyDrawer(),
        body: Container(
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Text("Contact Us",
                            style: TextStyle(
                                color: Color(0xFFE4393C),
                                fontSize: 50,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                            "You will find yourself working in a true partnership that results in an incredible experience, and an end product that is the best.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Text("Contact Form",
                            style: TextStyle(
                                color: Color(0xFFE4393C),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 30,
                        ),
                        Text("Our Contact Address",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text("Mails",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      ImageSlideshow(
                        width: 270,
                        height: 200,
                        initialPage: 0,
                        indicatorColor: Colors.red,
                        indicatorBackgroundColor: Colors.grey,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 10.0, right: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assests/website.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ContactUsScreen()));
                                      },
                                      child: Text(
                                        "CEO",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ContactUsScreen()));
                                      },
                                      child: Text(
                                        "ceo@zaisystems.com",
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 10.0, right: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assests/website.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ContactUsScreen()));
                                      },
                                      child: Text(
                                        "HR",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ContactUsScreen()));
                                      },
                                      child: Text(
                                        "hr@zaisystems.com",
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 10.0, right: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assests/website.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ContactUsScreen()));
                                      },
                                      child: Text(
                                        "Our Emil Address",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ContactUsScreen()));
                                      },
                                      child: Text(
                                        "zaisystems@gmail.com",
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 10.0, right: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assests/website.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ContactUsScreen()));
                                      },
                                      child: Text(
                                        "Our Info",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ContactUsScreen()));
                                      },
                                      child: Text(
                                        "info@zaisystems.com",
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text("Phone/Address",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.headphones,
                            size: 30,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                "Contact Phone Number",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                onPressed: () => {
                                  launchWhatsApp(
                                      phone: 03332959077, message: 'Hello'),
                                },
                                child: Text(
                                  "0334-6906960",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.maps_home_work,
                            size: 30,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                "Our Location",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Lahore, Pakistan",
                                style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "Follow Us",
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(width: 5),
                                InkWell(
                                  onTap: () {
                                    if (Platform.isAndroid) {
                                      var fbUrl =
                                          "https://www.facebook.com/zaisystems"; //for android
                                      launchFacebook(
                                          fbUrl,
                                          "https://www.facebook.com/zaisystems"
                                              .toString());
                                    } else if (Platform.isIOS) {
                                      var fbUrl =
                                          "https://www.facebook.com/zaisystems"; //for IOS
                                      launchFacebook(
                                          fbUrl,
                                          "https://www.facebook.com/zaisystems"
                                              .toString());
                                    }
                                  },
                                  child: Image.asset(
                                    "assests/facebook.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                InkWell(
                                  onTap: () {
                                    if (Platform.isAndroid) {
                                      var fbUrl =
                                          "https://www.instagram.com/zaisystems/"; //for android
                                      launchFacebook(
                                          fbUrl,
                                          "https://www.instagram.com/zaisystems/"
                                              .toString());
                                    } else if (Platform.isIOS) {
                                      var fbUrl =
                                          "https://www.instagram.com/zaisystems/"; //for IOS
                                      launchFacebook(
                                          fbUrl,
                                          "https://www.instagram.com/zaisystems/"
                                              .toString());
                                    }
                                  },
                                  child: Image.asset(
                                    "assests/insta.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                InkWell(
                                  onTap: () {
                                    if (Platform.isAndroid) {
                                      var fbUrl =
                                          "https://www.linkedin.com/company/zai-systems-smc-private-limited/mycompany/"; //for android
                                      launchFacebook(
                                          fbUrl,
                                          "https://www.linkedin.com/company/zai-systems-smc-private-limited/mycompany/"
                                              .toString());
                                    } else if (Platform.isIOS) {
                                      var fbUrl =
                                          "https://www.linkedin.com/company/zai-systems-smc-private-limited/mycompany/"; //for IOS
                                      launchFacebook(
                                          fbUrl,
                                          "https://www.linkedin.com/company/zai-systems-smc-private-limited/mycompany/"
                                              .toString());
                                    }
                                  },
                                  child: Image.asset(
                                    "assests/linkedin.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
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
                            hintText: 'Your Name',
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
                          controller: emailcontroller,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'required';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Email Address',
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
                            hintText: 'Phone Number',
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
                      const SizedBox(
                        height: 15,
                      ),
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
                            hintText: 'Subject',
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
                          minLines: 1,
                          maxLines: 5,
                          enabled: !load,
                          controller: messageController,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'required';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Your Message',
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
                          title: 'Submit Now',
                          loading: load,
                          onTap: load
                              ? null
                              : () async {
                                  if (_formKey.currentState!.validate()) {
                                    setState(() {
                                      load = true;
                                    });
                                    await contactUs();
                                  }
                                },
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const GetInTouch(),
                  Container(
                      decoration: const BoxDecoration(color: Colors.black),
                      child: Footer()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> contactUs() async {
    final name = namecontroller.text;
    final email = emailcontroller.text;
    final number = phoneNumberController.text;
    final subject = subjectController.text;
    final message = messageController.text;

    if (_formKey.currentState!.validate()) {
      postDetailsToFirestore();
      Fluttertoast.showToast(msg: "Message sent successfully");
    }
  }

  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    AppUser userModel = AppUser();

    userModel.email = emailcontroller.text;
    userModel.name = namecontroller.text;
    userModel.phone = phoneNumberController.text;
    userModel.subject = subjectController.text;
    userModel.message = messageController.text;

    await firebaseFirestore
        .collection("contact")
        .doc(userModel.uid as String?)
        .set(AppUser.toMap(userModel));
    setState(() {
      load = false;
    });
    Future.delayed(
      const Duration(milliseconds: 100),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const ContactUsScreen(),
        ),
      ),
    );
  }
}
