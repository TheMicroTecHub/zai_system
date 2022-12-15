import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/Widget/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'home.dart';

class OTPVerificationScr extends StatefulWidget {
  const OTPVerificationScr({Key? key}) : super(key: key);

  @override
  State<OTPVerificationScr> createState() => _OTPVerificationScrState();
}

class _OTPVerificationScrState extends State<OTPVerificationScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [Colors.red,Colors.black])),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Image( height: 150, width: 150, image: AssetImage('assests/splashScreen/spWhite.png')),
                  const Text('Building the Future with Tech', style: TextStyle(fontSize:15,color:whitecolor,fontWeight: FontWeight.w500),),
                  const SizedBox(height: 50,),
                  const Text('Enter OTP', style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 30,),
                  const Text('Enter the 4 digit OTP that we sent',style: TextStyle(fontSize:15,color:whitecolor,fontWeight: FontWeight.w500)),
                  const Text('to 0300 1234567',style: TextStyle(fontSize:15,color:whitecolor,fontWeight: FontWeight.w500)),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 61.0),
                    child: PinCodeTextField(appContext: context,
                        length: 4,
                        keyboardType: TextInputType.number,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(10),
                          fieldWidth: 40,
                          fieldHeight: 50,

                        ),
                        onChanged: (value){

                        }
                    ),
                  ),
                  const SizedBox(height: 1,),
                  Padding(
                    padding: apppaddings,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Didn't receive OTP?"),

                        TextButton(
                            onPressed: (){

                            },
                            child: const Text('Resend OTP', style: TextStyle(color: whitecolor,fontSize: 15, fontWeight: FontWeight.bold,decoration: TextDecoration.underline),))
                      ],),
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
                            child:const Center(child: Text('VERIFY & PROCEED',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'Rubik Medium',),
                            ),
                            ),
                            onPressed: () => Get.to(const Homescreen()),
                          ),
                        ),

                      ],),
                  ),
                  const SizedBox(height: 155,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
