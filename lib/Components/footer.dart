import 'package:flutter/material.dart';


class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          
          Container(
              decoration: const BoxDecoration(color: Colors.black),
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
                    "ZaiSystems a software company for those professionals who seek passion in the world of IT. Zaisystems integrates technology and human potential to provide intelligent business solutions for entrepreneurs and enterprises.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
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
                          const Text(
                            "We Also Provide",
                            style: TextStyle(
                                color: Colors.white,
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
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Our Services",
                            style: TextStyle(
                                color: Colors.white,
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const Text(
                      "Follow Us",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 5),
                        Icon(
                          Icons.facebook,
                          color: Colors.grey.shade300,
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          Icons.facebook,
                          color: Colors.grey.shade300,
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          Icons.facebook,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Opening Hours",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Monday-Saturday",
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "9:00am to 6:00pm",
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
    );
  }
}
