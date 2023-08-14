import 'package:flutter/material.dart';
import 'package:zai_system/View/drawer.dart';
import 'package:zai_system/Components/footer.dart';
import 'package:zai_system/Components/getintouch.dart';
import 'package:zai_system/View/demo.dart';

class LetterFroms extends StatefulWidget {
  const LetterFroms({super.key});

  @override
  State<LetterFroms> createState() => _LetterFromsState();
}

class _LetterFromsState extends State<LetterFroms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Letter & Forms",
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
                      Text("Letters & Forms",
                          style: TextStyle(
                              color: Color(0xFFE4393C),
                              fontSize: 50,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                          "Create, edit and design HR forms and official letters in a smart way",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      Image(image: AssetImage("assests/letter.png")),
                    ],
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
                              "IMPULSE HCM: Simplifying Letters & Forms for HR",
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
                              "Create, edit, and design HR forms and official letters with the smart capabilities of Impulse HCM.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 20.0,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Image(image: AssetImage("assests/text.jpg")),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Text Editor",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Our robust text editor allows you to create and design official letters and forms with ease. Set fields such as employee name, job information, salary details, and contract data, which are automatically replaced by Impulse HCM.",
                              textAlign: TextAlign.justify,
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
                          Image(image: AssetImage("assests/forms.png")),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Ready-to-Use HR Forms",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Discover a range of pre-designed HR forms at your fingertips, ready for customization. Whether it’s contracted, service certificates, end-of-service settlements, warnings, notices, or more, Impulse HCM offers editable templates to streamline your HR processes.",
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
                          Image(image: AssetImage("assests/official.png")),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Unlimited Official Letters",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Set free your creativity and generate unlimited official letters with Impulse HCM. Assign a unique name to each letter and specify the required fields such as employee name, salary information, job details, and more.",
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
