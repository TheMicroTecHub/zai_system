import 'package:flutter/material.dart';

const Color redcolor = Color(0xff8B0000);
const Color whitecolor = Colors.white;
const Color iconcolor = Color(0xff323F4B);

const apppaddings = EdgeInsets.only(left: 20, right: 20);

final fbbutton =OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.black),
    borderRadius: BorderRadius.circular(10)
);

 final ebbutton =OutlineInputBorder(
borderSide: const BorderSide(color: Color(0xffE4E7Eb),),
borderRadius: BorderRadius.circular(10));


class Mybutton extends StatelessWidget {
 final String title;
 const Mybutton({Key? key, required this.title}) : super(key: key);
@override
Widget build(BuildContext context) {
 return Container(
  decoration: BoxDecoration(
      color: redcolor,
      borderRadius: BorderRadius.circular(20)),
  height: 50,
  width: 150,
  child:  Center(child: Text(title,
   style: const TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontFamily: 'Rubik Medium',),
  ),
  ),
 );
}
}

