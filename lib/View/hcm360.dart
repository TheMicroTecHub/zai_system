// ignore_for_file: unused_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/View/drawer.dart';
import 'package:zai_system/View/home_screen.dart';
import 'package:zai_system/View/profile_screen.dart';
import 'package:zai_system/View/team.dart';
import 'package:zai_system/Widget/constants.dart';
import 'package:zai_system/View/Payroll.dart';
import 'package:zai_system/View/Attendance.dart';
import 'package:zai_system/View/Letter&Forms.dart';
import 'package:zai_system/View/All_Solutions.dart';

// ignore: must_be_immutable
class hcm extends StatefulWidget {
  const hcm({super.key});

  @override
  State<hcm> createState() => _hcmState();
}

class _hcmState extends State<hcm> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text(
              "HCM 360°",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            )),
        drawer: const MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 130, horizontal: 10.0),
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  InkWell(
                      onTap: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payroll()))
                            .then((value) => setState(() {}));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.red,
                              size: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Payrolls",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                Container(
                                  width: 272.0,
                                  child: Text(
                                    "Powerfull & Flexible Payroll",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Attendance()))
                            .then((value) => setState(() {}));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.red,
                              size: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Attendance",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                Container(
                                  width: 272.0,
                                  child: Text(
                                    "Follow up attendance records from everywhere & anytime",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LetterFroms()))
                            .then((value) => setState(() {}));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.red,
                              size: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Letter & Forms",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                Container(
                                  width: 272.0,
                                  child: Text(
                                    "Create, edit and design HR forms and official letters in a smart way",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AllSolutions()))
                            .then((value) => setState(() {}));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.red,
                              size: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "All Solutions",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                // Container(
                                //   width: 272.0,
                                //   child: Text(
                                //     "Follow up attendance records from everywhere & anytime",
                                //     style: TextStyle(
                                //       color: Colors.white,
                                //       fontSize: 20,
                                //       fontStyle: FontStyle.italic,
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
