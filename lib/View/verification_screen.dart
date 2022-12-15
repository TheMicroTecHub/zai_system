import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/View/home.dart';
import 'package:zai_system/View/otp_verification2.dart';
import 'package:zai_system/Widget/constants.dart';

class VerificationScr extends StatefulWidget {
  const VerificationScr({Key? key}) : super(key: key);

  @override
  State<VerificationScr> createState() => _VerificationScrState();
}

class _VerificationScrState extends State<VerificationScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [Colors.red,Colors.black])),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                const Image( height: 150, width: 150, image: AssetImage('assests/splashScreen/spWhite.png')),
                const Text('Building the Future with Tech', style: TextStyle(fontSize:15,color:whitecolor,fontWeight: FontWeight.w500),),
                const SizedBox(height: 50,),
                const Text('OTP Verification', style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                const SizedBox(height: 30,),
                const Text('Enter your phone number to receive',style: TextStyle(fontSize:15,color:whitecolor,fontWeight: FontWeight.w500)),
                const Text('verification code',style: TextStyle(fontSize:15,color:whitecolor,fontWeight: FontWeight.w500)),
                const SizedBox(height: 30,),
                Padding(
                  padding: apppaddings,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '0300 1234567',
                      hintStyle: const TextStyle(fontFamily: 'Rubik Medium',fontSize: 16),
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: const Icon(Icons.perm_contact_cal_outlined,color: iconcolor,),
                      focusedBorder: fbbutton,
                      enabledBorder: ebbutton,
                    ),
                  ),
                ),
                const SizedBox(height: 90,),
                Padding(
                  padding:apppaddings,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: redcolor,
                            borderRadius: BorderRadius.circular(20)),
                        height: 50,
                        width: 300,
                        child: TextButton(
                          child:const Center(child: Text('GET OTP',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: 'Rubik Medium',),
                          ),
                          ),
                          onPressed: () => Get.to(const OTPVerificationScr()),
                        ),
                      ),

                    ],),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

