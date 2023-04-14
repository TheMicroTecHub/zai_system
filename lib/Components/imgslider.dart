import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      width: double.infinity,
      height: 220,
      initialPage: 0,
      indicatorColor: Colors.red,
      indicatorBackgroundColor: Colors.grey,
      children: [
        Container(
            // height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  //height: 300,
                  child: Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset("assests/img1.PNG"),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Quadient Inspire Services",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Your Custom CCM Development Partner",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Zai Systems has partnered with Quadient to provide its clients best in class CCM Development Services",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        )
                      ]),
                ),
              ])),
            )),
        Container(
            // height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  // height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset("assests/img2.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 8),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Development Teams",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Technical Resourses When You Need Them.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Zai Systems provides cost-effective onsite & virtual staffing solutions by building strong relationships and connecting people",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            )
                          ]),
                    )
                  ])),
            )),
        Container(
            // height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                // height: 300,
                width: MediaQuery.of(context).size.width,
                child: Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset("assests/img3.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 8),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Process Automation",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Innovative Automation Techniques at your Finger Tips",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "We expertise in Robotic Process Automation, Process Mining, Webscraping and Document Processing.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          )
                        ]),
                  ),
                ]),
              ),
            )),
        Container(
            // height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  // height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset("assests/img4.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 8),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CallMiner Solutions",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "The CallMiner one-stop-shop",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Zai Systems is a certified CallMiner strategic partner helping customers leverage all the platform’s capabilities.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            )
                          ]),
                    ),
                  ])),
            )),
        Container(
            // height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  // height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset("assests/img.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 8),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Legacy Migration",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Migrate VFP, VB6 and Classic ASP Applications To .NET",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Zai Systems is your migration partner in converting legacy applications for security, performance & competitive advantages.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            )
                          ]),
                    ),
                  ])),
            )),
      ],
      onPageChanged: (value) {
        print('Page changed: $value');
      },
      autoPlayInterval: 5000,
      isLoop: true,
    );
  }
}
