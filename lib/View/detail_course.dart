// ignore_for_file: duplicate_import, unused_import, must_be_immutable

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/model/courses_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zai_system/Components/PDFView.dart';

class DetailPage extends StatefulWidget {
  int id;
  DetailPage({Key? key, required this.id}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState(id);
}

class _DetailPageState extends State<DetailPage> {
  final data = model.getCoursesData();
  int id;
  _DetailPageState(this.id);

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

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
                top: 50,
                left: 10,
                child: IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                )),
            Positioned(
              top: 120,
              left: 0,
              height: 100,
              width: width,
              child: Container(
                width: width,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(data[id].image),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[id].name,
                            style: const TextStyle(
                                // color: Colors.black,
                                color: Colors.white,
                                fontSize: 18,
                                decoration: TextDecoration.none),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(Icons.watch_later,
                                      color: Color(0xFF69c5df)),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        data[id].name,
                                        style: const TextStyle(
                                            fontSize: 11,
                                            // color: Colors.black,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const Text(
                                        "Deadline",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFFacacac)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(Icons.monetization_on,
                                      color: Color(0xFFfb8483)),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '${data[id].rate}',
                                        style: const TextStyle(
                                            fontSize: 11,
                                            // color: Colors.black,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const Text(
                                        "Prize",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFFacacac)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 320,
              left: 0,
              width: width,
              height: height,
              child: Container(
                width: 80,
                height: 100,
              ),
            ),
            Positioned(
                top: 250,
                left: 0,
                right: 0,
                child: Container(
                    margin: const EdgeInsets.only(left: 25, right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // color: Colors.white,
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 20,
                              spreadRadius: 1,
                              offset: const Offset(0, 10),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    height: 435,
                    width: width,
                    child: Column(children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 170),
                        child: Text(
                          "Description",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 270,
                        width: 300,
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        child: SingleChildScrollView(
                          child: Text(
                            data[id].description,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                                fontSize: 15,
                                //color: Color(0xFFb8b8b8),
                                color: Colors.white,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "PDF",
                                style: TextStyle(
                                    fontSize: 11,
                                    // color: Colors.black,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                              TextButton.icon(
                                onPressed: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyPdfViewer(
                                        path: data[id].pdf,
                                      ),
                                    ),
                                  )
                                },
                                icon: const FaIcon(
                                  FontAwesomeIcons.solidFilePdf,
                                  color: Colors.white,
                                ),
                                label: const Text(''),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "WhatsApp",
                                style: TextStyle(
                                    fontSize: 11,
                                    // color: Colors.black,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                              TextButton.icon(
                                onPressed: () => {
                                  launchWhatsApp(
                                      phone: 03332959077, message: 'Hello'),
                                },
                                icon: const FaIcon(
                                  FontAwesomeIcons.whatsapp,
                                  color: Colors.green,
                                ),
                                label: const Text(''),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ])))

            //))
          ],
        ),
      ),
    );
  }
}
