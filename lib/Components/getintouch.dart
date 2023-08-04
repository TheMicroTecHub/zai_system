import 'package:flutter/material.dart';

class GetInTouch extends StatefulWidget {
  const GetInTouch({super.key});

  @override
  State<GetInTouch> createState() => _GetInTouchState();
}

class _GetInTouchState extends State<GetInTouch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(alignment: Alignment.topCenter, children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(
              top: 50 / 2.0,
            ),
            child: Container(
              height: 320.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color.fromARGB(255, 48, 47, 47),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8.0,
                    offset: Offset(0.0, 5.0),
                  ),
                ],
              ),
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    bottom: 15.0,
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Get in Touch',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 34.0,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'You will find yourself working in a true partnership that results in an incredible experience, and an end product that is the best.',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.0,
                              color: Colors.grey.shade400),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  color: Colors.grey.shade400,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'zaisystems@gmail.com',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.grey.shade400),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Colors.grey.shade400,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '03346906960',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.grey.shade400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ])),
            )),
      ]),
    );
  }
}
