// ignore_for_file: unused_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/View/detail_course.dart';
import 'package:zai_system/View/drawer.dart';
import 'package:zai_system/View/home.dart';
import 'package:zai_system/View/profile_screen.dart';
import 'package:zai_system/View/team.dart';
import 'package:zai_system/model/courses_model.dart';

// ignore: must_be_immutable
class Courses extends StatelessWidget {
  final data = model.getCoursesData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Course Screen",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: Container(
        decoration: const BoxDecoration(color: Colors.black),
        child: ListView.separated(
          itemCount: data.length,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(color: Colors.white),
          itemBuilder: (BuildContext context, int index) {
            return TextButton(
              onPressed: () {
                int id = data[index].id;
                Get.to(DetailPage(id: id));
              },
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Row(children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 80,
                      width: 129,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        // color: Colors.white
                      ),
                      child: Image(
                        image: AssetImage(data[index].image),
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 190,
                      height: 90,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[index].name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                "${data[index].Shortdescription}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                          ]),
                    ),
                  ]),
                  const Row(children: [
                    SizedBox(
                      width: 270,
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Text(
                        'More',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 7,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
