import 'package:flutter/material.dart';
import 'package:zai_system/View/drawer.dart';
import 'package:zai_system/Components/footer.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:zai_system/Components/getintouch.dart';
import 'package:zai_system/View/demo.dart';

class AllSolutions extends StatefulWidget {
  const AllSolutions({super.key});

  @override
  State<AllSolutions> createState() => _AllSolutionsState();
}

class _AllSolutionsState extends State<AllSolutions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "All Solutions",
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
                        Text("IMPULSE HCM 360°",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFFE4393C),
                                fontSize: 50,
                                fontWeight: FontWeight.bold)),
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
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                            "Cloud-based Human Capital Management (HCM) Software Solution",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Impulse HCM is a premier cloud-based Human Capital Management (HCM) software solution. We specialize in providing comprehensive services and innovative solutions for efficient human capital management in Pakistan and the USA, all at competitive prices.\n \nAt Impulse HCM, we are dedicated to revolutionizing the way organizations manage their workforce. Our cutting-edge software empowers businesses to streamline their HR operations, enhance employee engagement, and drive productivity to new heights. With a strong focus on delivering exceptional value, we ensure that organizations of all sizes can benefit from our expertise.\n \nOur robust platform offers a wide range of features and functionalities to effectively manage critical HR functions, including talent acquisition, employee onboarding, performance management, training and development, and more. With an intuitive user interface and advanced analytics and reporting capabilities, our software equips businesses with actionable insights to make informed decisions and foster continuous improvement.\n \nAt Impulse HCM, we pride ourselves on delivering excellence in customer service. Our team of professionals is committed to providing comprehensive support throughout the implementation process and beyond. We strive to build long-term partnerships with our clients, working closely with them to understand their unique needs and deliver solutions that align with their organizational goals.",
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
                const SizedBox(
                  height: 30,
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
                                                      AllSolutions()));
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
                                                      AllSolutions()));
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
                                                      AllSolutions()));
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
                                                      AllSolutions()));
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
                                                      AllSolutions()));
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
                                                      AllSolutions()));
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
                                                      AllSolutions()));
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
                                                      AllSolutions()));
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
                                                      AllSolutions()));
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
                                                      AllSolutions()));
                                        },
                                        child: Text(
                                          "Benefits & Expenses Tracking",
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
                                      "Create unlimited custom benefits and track payments for each benefit, including travel tickets. Register and approve employee expenses seamlessly through Impulse HCM’s intuitive interface.",
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
                                                      AllSolutions()));
                                        },
                                        child: Text(
                                          "Custody Management",
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
                                      "Assign and track employee custodies effortlessly. Generate QR codes for custodies, facilitating assignment and return tracking.",
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
                                                      AllSolutions()));
                                        },
                                        child: Text(
                                          "Work Days Notice and Warning Management",
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
                                      "Create and send notices and warnings to employees via email and mobile notifications. Design and print notice and warning forms seamlessly within Impulse HCM.",
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
                                                      AllSolutions()));
                                        },
                                        child: Text(
                                          "Workflow & Approvals",
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
                                      "Define unlimited approval levels for requests and decisions. Customize statuses and actions for each workflow, ensuring efficient processes throughout your organization.",
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
                                                      AllSolutions()));
                                        },
                                        child: Text(
                                          "Memo Communication",
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
                                      "Create and send memos to your team via email or mobile notifications. Keep track of the read status for each memo, promoting effective internal communication.",
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
                                                      AllSolutions()));
                                        },
                                        child: Text(
                                          "Decision Management",
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
                                      "Effectively manage, approve, and track decisions such as employee transfers, salary adjustments, and deductions. Impulse HCM simplifies decision-making processes for seamless operations.",
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
                                                      AllSolutions()));
                                        },
                                        child: Text(
                                          "End-of-Service",
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
                                      "Calculations Automatically calculate entitlements, end-of-service rewards, leave balances, and obligations for employees based on labor laws. Ensure compliance and accuracy effortlessly.",
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
                                                      AllSolutions()));
                                        },
                                        child: Text(
                                          "Insightful Dashboard",
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
                                      "Create and customize your personalized dashboard with rich diagrams, charts, and tables. Gain valuable insights and make informed decisions promptly.",
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
                                                      AllSolutions()));
                                        },
                                        child: Text(
                                          "Automated Rules & Regulations",
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
                                      "Define organizational rules and regulations, empowering Impulse HCM to automatically apply penalties for violations. Streamline compliance effortlessly.",
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
                            "AND MORE ...",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
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
