import 'package:flutter/material.dart';
import 'package:zai_system/View/drawer.dart';
import 'package:zai_system/Components/footer.dart';
import 'package:zai_system/Components/getintouch.dart';
import 'package:zai_system/View/demo.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Attendance",
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
                      Text("Attendance",
                          style: TextStyle(
                              color: Color(0xFFE4393C),
                              fontSize: 50,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                          "Follow up attendance records from everywhere & anytime",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      Image(image: AssetImage("assests/attendance.png")),
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
                          Text(
                            "Impulse HCM: Managing Workforce Attendance",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          Text(
                            "Streamline your attendance management with Impulse HCM, empowering you to effortlessly track attendance records anytime, anywhere.",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 20.0,
                            ),
                          ),
                          Image(image: AssetImage("assests/attendance.png")),
                          Text(
                            "Mobile App Punch-In/Out",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                          Text(
                            "Equip your team with the convenience of punching in and out using their mobile phones. Impulse HCM takes care of workplace and employee location verification automatically, ensuring accuracy and efficiency.",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 20.0,
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
                    child: Column(
                      children: [
                        Text(
                          "Flexible Work Shifts",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          "Define work shifts and effortlessly set working hours and days for each employee. Impulse HCM also simplifies the process of assigning work shifts to your workforce.",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 20.0,
                          ),
                        )
                      ],
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
                    child: Column(
                      children: [
                        Image(image: AssetImage("assests/fingerprint.png")),
                        Text(
                          "Fingerprint Records",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          "Effortlessly track and manage fingerprint records from various devices, including fingerprint scanners, mobile devices, web platforms, or even Excel file uploads.",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 20.0,
                          ),
                        )
                      ],
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
                    child: Column(
                      children: [
                        Text(
                          "Working Hours & Overtime",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          "Let Impulse HCM handle the automatic calculation of working hours, overtime, late arrivals, and absent deductions. Also, customize and define how our system calculates overtime and late deductions to suit your unique needs.",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 20.0,
                          ),
                        )
                      ],
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
                    child: Column(
                      children: [
                        Text(
                          "Device Integration",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          "Integrate your fingerprint devices with Impulse HCM effortlessly. Our user-friendly platform fetches records and performs the necessary calculations for you, saving you valuable time and effort.",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 20.0,
                          ),
                        )
                      ],
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
                    child: Column(
                      children: [
                        Text(
                          "AND MORE ...",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          "For more information please request a demo",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
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
                              "Request a Demo",
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
                                      builder: (context) => DemoScreen()));
                            },
                          )),
                    ),
                  ),
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
