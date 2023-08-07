import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
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

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            Container(
                child: const Image(image: AssetImage("assests/location.png"))),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage("assests/logowhite.png"),
                    width: 100,
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Zai Systems a software company for those professionals who seek passion in the world of IT. Zai Systems integrates technology and human potential to provide intelligent business solutions for entrepreneurs and enterprises.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "We Also Provide",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Custom Software \nDevelopment",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Mobile App Development",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              "Discovery Workshop",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "Web Development",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "UI/UX Design",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Our Services",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "CRM Systems Provider",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "ERP Systems Provider",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "POS Systems Provider",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "E-commerce Solution",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Software Provider",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                      const SizedBox(height: 20),
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
                            const SizedBox(width: 5),
                            InkWell(
                              onTap: () {
                                if (Platform.isAndroid) {
                                  var fbUrl =
                                      "https://www.zaisystems.com"; //for android
                                  launchFacebook(fbUrl,
                                      "https://www.zaisystems.com".toString());
                                } else if (Platform.isIOS) {
                                  var fbUrl =
                                      "https://www.zaisystems.com"; //for IOS
                                  launchFacebook(fbUrl,
                                      "https://www.zaisystems.com".toString());
                                }
                              },
                              child: Image.asset(
                                "assests/website.png",
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Working Hours",
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Monday-Friday",
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "11:00am to 8:00pm",
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (() {}),
                  child: Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                InkWell(
                  onTap: (() {}),
                  child: Text(
                    "About Us",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                InkWell(
                  onTap: (() {}),
                  child: Text(
                    "Contact Us",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "© 2022 – Zai Systems – All Rights Reserved",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
