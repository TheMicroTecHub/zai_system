import 'package:flutter/material.dart';
import 'package:zai_system/View/drawer.dart';
import 'package:zai_system/Components/footer.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Payroll",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: MyDrawer(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text("About Services",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 30,
                      ),
                      Text("Our Wide Range Of Services",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 156, 27, 27),
                                  Color.fromARGB(255, 238, 22, 7)
                                ],
                                begin: FractionalOffset(0.7, 0.9),
                                end: FractionalOffset(0.0, 0.5),
                                stops: [0.0, 0.5],
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 25),
                                child: TextButton(
                                  child: const Text(
                                    "Contact Us",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Services()));
                                  },
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text("What We Can Do For You",
                              style: TextStyle(
                                  color: Color(0xFFE4393C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "Services provide for you",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ImageSlideshow(
                    width: 600,
                    height: 230,
                    initialPage: 0,
                    indicatorColor: Colors.red,
                    indicatorBackgroundColor: Colors.grey,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 10.0, right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    child: Text(
                                      "User Experience Design",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "We focus on what engages and delights users and combine it with what is technologically feasible and economically viable within a product.",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
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
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    child: Text(
                                      "Managed Cloud Services",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "We help businesses manage their cloud infrastructures as well as architecture, develop and deploy on the AWS cloud by leveraging our demonstrated skills.",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
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
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    child: Text(
                                      "DevOps",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "We know what it takes to deliver robust, secure, high-performance, and enterprise-grade applications and products and expertise in the cloud services domain.",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
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
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    child: Text(
                                      "Web and Mobile",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "We develop unique and fully customized web and mobile applications. We have a creative team capable of adopting different styles for various business...",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
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
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    child: Text(
                                      "E-commerce",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Through our honed engagement process we are able to add value and enrich your ecommerce propositions at every step of the project life cycle for both...",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
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
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    child: Text(
                                      "Bespoke IT Solutions for Business",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Our IT Solutions and Services give you access to our proficiency in advanced technologies and proven practices along the entire IT life.",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
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
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    child: Text(
                                      "Data Analytics",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Data should help you run your business better. That’s why we take a business-led approach to data analytics, to help you create sustained business insight.",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
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
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    child: Text(
                                      "Business Intelligence",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "To drive your business forward you need fast and accurate reporting, swift implementation of processes and answers to simple questions.",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
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
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    child: Text(
                                      "Information Strategy",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Information Strategy brings together everything that can have an impact on or be impacted by data analytics.",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text("Services",
                              style: TextStyle(
                                  color: Color(0xFFE4393C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "Our standard approach is to help your business find the right serviceto use",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text("What We Can Do For You",
                              style: TextStyle(
                                  color: Color(0xFFE4393C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "Why SMBs, Ecommerce And Web Agencies Fully Rely On Zai Systems As Their Sole Digital Partner?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                    decoration: const BoxDecoration(color: Colors.black),
                    child: Footer()),
              ]),
        ),
      ),
    );
  }
}
