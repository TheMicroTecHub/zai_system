import 'package:flutter/material.dart';
import 'package:zai_system/View/drawer.dart';
import 'package:zai_system/Components/footer.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:zai_system/Components/getintouch.dart';
import 'package:zai_system/View/contact_us.dart';

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
          "Services",
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
                                            builder: (context) =>
                                                ContactUsScreen()));
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
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                    child: Text(
                                      "User Experience Design",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
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
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                    child: Text(
                                      "Managed Cloud Services",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
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
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                    child: Text(
                                      "DevOps",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
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
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                    child: Text(
                                      "Web and Mobile",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
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
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                    child: Text(
                                      "E-commerce",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
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
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                    child: Text(
                                      "Bespoke IT Solutions for Business",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
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
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                    child: Text(
                                      "Data Analytics",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
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
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                    child: Text(
                                      "Business Intelligence",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
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
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                    child: Text(
                                      "Information Strategy",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
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
                const SizedBox(
                  height: 10,
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
                ImageSlideshow(
                  width: 600,
                  height: 300,
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
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(9, 40, 51, 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 8.0,
                                      offset: Offset(0.0, 5.0),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                      child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "1",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFE4393C),
                                        fontSize: 50.0,
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Services()));
                                  },
                                  child: Text(
                                    "Discussion",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "We meet customers in set place to discuss the details about needs and demands before.",
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
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(32, 4, 4, 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 8.0,
                                      offset: Offset(0.0, 5.0),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                      child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "2",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFE4393C),
                                        fontSize: 50.0,
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Services()));
                                  },
                                  child: Text(
                                    "Concepts Initiatives",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Our experts come up with all kinds of ideas and initiatives for delivering the best.",
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
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(24, 12, 68, 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 8.0,
                                      offset: Offset(0.0, 5.0),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                      child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "3",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFE4393C),
                                        fontSize: 50.0,
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Services()));
                                  },
                                  child: Text(
                                    "Testing Trying",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "After agreeing on the ideas and plans, we will conduct meetings as scheduled and give comments.",
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
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(48, 4, 28, 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 8.0,
                                      offset: Offset(0.0, 5.0),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                      child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "4",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFE4393C),
                                        fontSize: 50.0,
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Services()));
                                  },
                                  child: Text(
                                    "Execute install",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Once the final plan is approved, everything will be conducted according to the agreed contract.",
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
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 10,
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
                ImageSlideshow(
                  width: 600,
                  height: 350,
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
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(9, 40, 51, 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 8.0,
                                      offset: Offset(0.0, 5.0),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                      child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "1",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFE4393C),
                                        fontSize: 50.0,
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Services()));
                                  },
                                  child: Text(
                                    "Top Rated Digital Agency",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Top Rated Web Design & Digital Agency over the internet with 97% client retention rate. Zai Systems team is named as 'Hard working' 'Quick' 'intell...",
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
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(32, 4, 4, 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 8.0,
                                      offset: Offset(0.0, 5.0),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                      child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "2",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFE4393C),
                                        fontSize: 50.0,
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Services()));
                                  },
                                  child: Text(
                                    "Certified Web Specialists",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "W3C, ITIL Certified Specialists at Zai Systems have worked with 50+ Technologies and tens of diverse business industries to get you all the experience requ...",
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
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(24, 12, 68, 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 8.0,
                                      offset: Offset(0.0, 5.0),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                      child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "3",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFE4393C),
                                        fontSize: 50.0,
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Services()));
                                  },
                                  child: Text(
                                    "24 Hours of Work Support",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "COPC, Six Sigma Certified Customer Support Team at Zai Systems is available 24 hours a day according to GMT and US EST timezones. We're always here when yo...",
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
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(48, 4, 28, 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 8.0,
                                      offset: Offset(0.0, 5.0),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                      child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "4",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFE4393C),
                                        fontSize: 50.0,
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Services()));
                                  },
                                  child: Text(
                                    "Affordable Transparent Prices",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Super Affordable Prices with 100% transparency that makes it easier for SMEs and Web Agencies to easily sub-contract work. We never over charge our custo...",
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
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(9, 40, 51, 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 8.0,
                                      offset: Offset(0.0, 5.0),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                      child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "3",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFE4393C),
                                        fontSize: 50.0,
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Services()));
                                  },
                                  child: Text(
                                    "Ability to take up any load",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Zai Systems team work under controlled project management system which enables our customers to sub-contract any amount of work load. We have all the resou...",
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
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(9, 40, 51, 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 8.0,
                                      offset: Offset(0.0, 5.0),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                      child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "4",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFE4393C),
                                        fontSize: 50.0,
                                      ),
                                    ),
                                  )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Services()));
                                  },
                                  child: Text(
                                    "Proven Code Standards",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Zai Systems code standards are proven and being utilized by web companies globally. Code produced by the developers is tested for W3C & Search Engine param...",
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
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const GetInTouch(),
                Container(
                    decoration: const BoxDecoration(color: Colors.black),
                    child: Footer()),
              ]),
        ),
      ),
    );
  }
}
