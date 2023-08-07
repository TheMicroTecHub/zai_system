import 'package:flutter/material.dart';
import 'package:zai_system/View/Courses_Page.dart';
import 'package:zai_system/model/courses_model.dart';
// import 'package:get/get.dart';
// import 'package:zai_system/View/detail_course.dart';

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
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: Table(
            defaultColumnWidth: FixedColumnWidth(160.0),
            children: [
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Grphic Design',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Angular',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Java',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'JavaScript',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'WordPress',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'App Dev',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'React JS',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'ASP Net',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Frontend Dev',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Python',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Node JS',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Block Chain',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Vue JS',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Flutter',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Courses()));
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
