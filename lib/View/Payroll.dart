import 'package:flutter/material.dart';
import 'package:zai_system/View/drawer.dart';
import 'package:zai_system/Components/footer.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:zai_system/Components/getintouch.dart';
import 'package:zai_system/View/demo.dart';

class Payroll extends StatefulWidget {
  const Payroll({super.key});

  @override
  State<Payroll> createState() => _PayrollState();
}

class _PayrollState extends State<Payroll> {
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
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text("Payroll",
                            style: TextStyle(
                                color: Color(0xFFE4393C),
                                fontSize: 50,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 30,
                        ),
                        Text("Powerfull & Flexible Payroll",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Image(image: AssetImage("assests/payroll.png")),
                      ],
                    ),
                  ),
                ),
                Divider(
                  indent: 140,
                  endIndent: 140,
                  color: Colors.white,
                  thickness: 1,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "Impulse HCM: Empowering Your Payroll Needs",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Impulse HCM offers a complete payroll solution designed to meet and exceed your organization's needs. Our payroll system is fully customizable, ensuring it aligns perfectly with all your requirements.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 20.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ImageSlideshow(
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
                                padding: const EdgeInsets.all(20.0),
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
                                                      Payroll()));
                                        },
                                        child: Text(
                                          "Payroll Management",
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
                                      "Streamline your payroll processes with ease. The issue, approve, and seamlessly transfer salaries to bank accounts in just one click. Impulse HCM automatically calculates deductions, and additions, and ensures accuracy.",
                                      textAlign: TextAlign.justify,
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
                                padding: const EdgeInsets.all(20.0),
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
                                                      Payroll()));
                                        },
                                        child: Text(
                                          "Attendance Tracking",
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
                                      "Effortlessly monitor attendance and fingerprint records while automating the calculation of working hours, overtime, additions, and deductions. Impulse HCM simplifies workforce management, saving you time and effort.",
                                      textAlign: TextAlign.justify,
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
                                padding: const EdgeInsets.all(20.0),
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
                                                      Payroll()));
                                        },
                                        child: Text(
                                          "Customizable Leave Management",
                                          textAlign: TextAlign.center,
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
                                      "Create and customize leave types and effortlessly calculate leave balances according to your organization's policies. Bind specific leave types to specific contracts and define unpaid leaves seamlessly.",
                                      textAlign: TextAlign.justify,
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
                                padding: const EdgeInsets.all(20.0),
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
                                                      Payroll()));
                                        },
                                        child: Text(
                                          "Employee Self-Service",
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
                                      "Empower your team with over 10 services and request options through Impulse HCM's intuitive self-service platform. Enhance employee satisfaction and streamline HR processes simultaneously.",
                                      textAlign: TextAlign.justify,
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
                                padding: const EdgeInsets.all(23.0),
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
                                                      Payroll()));
                                        },
                                        child: Text(
                                          "Performance Evaluation",
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
                                      "Simple create evaluation forms, define competence criteria and weight, and assign them to employees based on job title or department. Impulse HCM facilitates the review and approval process, ensuring comprehensive performance evaluations.",
                                      textAlign: TextAlign.justify,
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
                                padding: const EdgeInsets.all(20.0),
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
                                                      Payroll()));
                                        },
                                        child: Text(
                                          "Job Portal",
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
                                      "Attract top talent by creating unlimited job posts and sharing your company's private URL with applicants. Utilize Impulse HCM’s filtering capabilities to view applicant CVs efficiently and make informed hiring decisions.",
                                      textAlign: TextAlign.justify,
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
                                padding: const EdgeInsets.all(20.0),
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
                                                      Payroll()));
                                        },
                                        child: Text(
                                          "Task Management",
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
                                      "Create and assign tasks to your teams, effortlessly track their progress, and generate insightful reports. Link tasks to evaluation forms, promoting holistic performance management.",
                                      textAlign: TextAlign.justify,
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
                                padding: const EdgeInsets.all(20.0),
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
                                                      Payroll()));
                                        },
                                        child: Text(
                                          "Letters & Forms",
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
                                      "Design and create professional letters, including contracts and other official documents. Let Impulse HCM automatically populate employee information, streamlining the printing process.",
                                      textAlign: TextAlign.justify,
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
                                padding: const EdgeInsets.all(20.0),
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
                                                      Payroll()));
                                        },
                                        child: Text(
                                          "Loans Management",
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
                                      "Register and approve employee loans while specifying duration. Impulse HCM automates loan deductions in the payroll, simplifying the repayment process.",
                                      textAlign: TextAlign.justify,
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
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  indent: 140,
                  endIndent: 140,
                  color: Colors.white,
                  thickness: 1,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "Customizable Payroll",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Our payroll system can easily fit your specific needs. With Impulse HCM, you have the freedom to customize every aspect of your payroll process, ensuring seamless integration with your existing workflows.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  indent: 140,
                  endIndent: 140,
                  color: Colors.white,
                  thickness: 1,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "Salary Transfers",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Simplify your salary transfer process with Impulse HCM. Our system allows you to effortlessly transfer employee salaries directly to their bank accounts, streamlining your payroll operations. Additionally, you can conveniently upload WPS files in just one step, enhancing efficiency and reducing manual effort.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  indent: 140,
                  endIndent: 140,
                  color: Colors.white,
                  thickness: 1,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "Bank Integration",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Exporting local bank files and WPF files for uploading to the bank portal has never been easier. Impulse HCM enables you to generate these files with minimal steps, facilitating seamless integration with your chosen banking system.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  indent: 140,
                  endIndent: 140,
                  color: Colors.white,
                  thickness: 1,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "Accountant System Integration",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Impulse HCM seamlessly integrates with accountant systems. After payroll approval, you can effortlessly send the payroll data to your accountant system in just one click, eliminating the need for manual data entry and reducing the chances of errors.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  indent: 140,
                  endIndent: 140,
                  color: Colors.white,
                  thickness: 1,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "Overtime Calculation",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Calculating overtime hours for your employees is a breeze with Impulse HCM. Our user-friendly interface simplifies the process, allowing you to accurately track and manage overtime hours in a few simple steps.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  indent: 140,
                  endIndent: 140,
                  color: Colors.white,
                  thickness: 1,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "Work Days",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Impulse HCM allows you to configure workdays according to your organization's requirements. Whether you prefer a standard 30-day month or need to account for actual month days, our system can accommodate your preferences effortlessly.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  indent: 140,
                  endIndent: 140,
                  color: Colors.white,
                  thickness: 1,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
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
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "For more information please request a demo",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
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
                const SizedBox(
                  height: 10,
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
