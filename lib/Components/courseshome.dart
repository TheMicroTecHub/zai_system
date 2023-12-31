import 'package:flutter/material.dart';
import 'package:zai_system/model/courses_model.dart';
import 'package:get/get.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class CoursesHome extends StatefulWidget {
  const CoursesHome({super.key});

  @override
  State<CoursesHome> createState() => _CoursesHomeState();
}

class _CoursesHomeState extends State<CoursesHome> {
  final data = model.getCoursesData();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: const Text("Courses",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFFE4393C),
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "\nZai Systems offers a variety of IT courses that cover the fundamentals of web development, cybersecurity, data science, cloud computing, and digital marketing. Students have access to a dedicated instructor and a supportive community of learners. \n",
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 18,
            ),
          ),
        ),
        ImageSlideshow(
            width: 600,
            height: 350,
            initialPage: 0,
            indicatorColor: Colors.grey,
            indicatorBackgroundColor: Colors.grey.shade400,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Graphic Design",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image(image: AssetImage('assests/course/Graphics.PNG')),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Angular",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image(image: AssetImage('assests/course/Angular.PNG')),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Java",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image(image: AssetImage('assests/course/java.PNG')),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "JavaScript",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image(
                            image: AssetImage('assests/course/Javascript.PNG')),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Wordpress",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image(
                            image: AssetImage('assests/course/wordpress.PNG')),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "App Development",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image(
                            image: AssetImage(
                                'assests/course/App_Development.PNG')),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "React JS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image(image: AssetImage('assests/course/React.PNG')),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "ASP Net",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image(image: AssetImage('assests/course/ASP_Net.PNG')),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Frontend Development",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image(image: AssetImage('assests/course/Frontend.PNG')),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Python",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image(image: AssetImage('assests/course/Python.PNG')),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Node JS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image(image: AssetImage('assests/course/NodeJS.PNG')),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Block Chain",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image(
                            image: AssetImage('assests/course/Blockchain.PNG')),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Vue JS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image(image: AssetImage('assests/course/Vue_JS.PNG')),
                      ],
                    ),
                  ),
                ),
              ),
            ]),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: InkWell(
            onTap: () {
              Get.offNamed("/courses");
            },
            child: Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 156, 27, 27),
                      Color.fromARGB(255, 238, 22, 7)
                    ],
                    begin: FractionalOffset(0.7, 0.9),
                    end: FractionalOffset(0.0, 0.5),
                    stops: [0.0, 0.5],
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Text(
                    "Courses we offer",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        //   child: Column(
        //     children: [
        //       ClipRRect(
        //         borderRadius: BorderRadius.circular(10.0),
        //         child: Image.asset("assests/webdevelopment.jpg"),
        //       ),
        //       const SizedBox(
        //         height: 30,
        //       ),
        //       Padding(
        //         padding:
        //             const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        //         child: Container(
        //           decoration: BoxDecoration(
        //               color: Colors.black,
        //               borderRadius: BorderRadius.circular(10)),
        //           child: Padding(
        //             padding: const EdgeInsets.all(10.0),
        //             child: Column(
        //               children: [
        //                 const Align(
        //                   alignment: Alignment.topLeft,
        //                   child: Text(
        //                     "Web Developement",
        //                     style: TextStyle(
        //                         color: Colors.white,
        //                         fontSize: 20,
        //                         fontWeight: FontWeight.bold),
        //                   ),
        //                 ),
        //                 const SizedBox(
        //                   height: 10,
        //                 ),
        //                 Text(
        //                   "Web development refers to the tasks associated with websites. Websites are an essential part of a business or an organization.",
        //                   style: TextStyle(
        //                       color: Colors.grey.shade400,
        //                       fontSize: 15,
        //                       fontWeight: FontWeight.normal),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //       Padding(
        //         padding:
        //             const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        //         child: Container(
        //           decoration: BoxDecoration(
        //               color: Colors.black,
        //               borderRadius: BorderRadius.circular(10)),
        //           child: Padding(
        //             padding: const EdgeInsets.all(10.0),
        //             child: Column(
        //               children: [
        //                 const Align(
        //                   alignment: Alignment.topLeft,
        //                   child: Text(
        //                     "App Development",
        //                     style: TextStyle(
        //                         color: Colors.white,
        //                         fontSize: 20,
        //                         fontWeight: FontWeight.bold),
        //                   ),
        //                 ),
        //                 const SizedBox(
        //                   height: 10,
        //                 ),
        //                 Text(
        //                   "App development is the act or process by which a mobile app is developed for mobile devices, such as personal mobile phones.",
        //                   style: TextStyle(
        //                       color: Colors.grey.shade400,
        //                       fontSize: 15,
        //                       fontWeight: FontWeight.normal),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //       Padding(
        //         padding:
        //             const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        //         child: Container(
        //           decoration: BoxDecoration(
        //               color: Colors.black,
        //               borderRadius: BorderRadius.circular(10)),
        //           child: Padding(
        //             padding: const EdgeInsets.all(10.0),
        //             child: Column(
        //               children: [
        //                 const Align(
        //                   alignment: Alignment.topLeft,
        //                   child: Text(
        //                     "Graphic Designing",
        //                     style: TextStyle(
        //                         color: Colors.white,
        //                         fontSize: 20,
        //                         fontWeight: FontWeight.bold),
        //                   ),
        //                 ),
        //                 const SizedBox(
        //                   height: 10,
        //                 ),
        //                 Text(
        //                   "Graphic design is a profession and an applied art whose activity consists in projecting visual communications intended to transmit specific messages to social groups.",
        //                   style: TextStyle(
        //                       color: Colors.grey.shade400,
        //                       fontSize: 15,
        //                       fontWeight: FontWeight.normal),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.symmetric(vertical: 30),
        //         child: InkWell(
        //           onTap: () {
        //             Navigator.push(context,
        //                 MaterialPageRoute(builder: (context) => Courses()));
        //           },
        //           child: Align(
        //             alignment: Alignment.center,
        //             child: Container(
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(8),
        //                 gradient: const LinearGradient(
        //                   colors: [
        //                     Color.fromARGB(255, 156, 27, 27),
        //                     Color.fromARGB(255, 238, 22, 7)
        //                   ],
        //                   begin: FractionalOffset(0.7, 0.9),
        //                   end: FractionalOffset(0.0, 0.5),
        //                   stops: [0.0, 0.5],
        //                 ),
        //               ),
        //               child: const Padding(
        //                 padding:
        //                 EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        //                 child: Text(
        //                   "Courses we offer",
        //                   style: TextStyle(
        //                     color: Colors.white,
        //                     fontWeight: FontWeight.normal,
        //                     fontSize: 19,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
