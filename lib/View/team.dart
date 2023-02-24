import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/View/Courses_Page.dart';
import 'package:zai_system/View/detailscreen.dart';
import 'package:zai_system/View/home.dart';
import 'package:zai_system/View/profile_screen.dart';
import 'package:zai_system/model/company_model.dart';

import '../Controller/drawer.dart';

class Team extends StatelessWidget {
  final companydata = Company_model.CompanyModels();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            "Our Team",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      drawer: const MyDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.red],
            begin: FractionalOffset(1.0, 0.0),
            end: FractionalOffset(0.0, 0.9),
            stops: [0.0, 1.0],
          ),
        ),
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.black, Colors.red],
                begin: FractionalOffset(1.0, 0.0),
                end: FractionalOffset(0.0, 0.9),
                stops: [0.0, 1.0],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListView.separated(
                itemCount: companydata.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(color: Colors.transparent),
                itemBuilder: (BuildContext context, int index) {
                  return Column(children: [
                    const SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        int id = companydata[index].id;
                        Get.to(DetailScreen(id: id));
                      },
                      child: Row(children: [
                        const SizedBox(
                          height: 20,
                          width: 10,
                        ),
                        Row(children: [
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 130,
                            width: 130,
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: ClipOval(
                                    child: Image.asset(
                                      companydata[index].image,
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                            ),
                          ),
                        ]),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 170,
                          height: 100,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  companydata[index].name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  companydata[index].position,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ]),
                        ),
                        const Icon(
                          Icons.arrow_right,
                          color: Colors.red,
                        ),
                      ]),
                    ),
                    const SizedBox(height: 10),
                  ]);
                }),
          ),
        ]),
      ),
    ));
  }
}
