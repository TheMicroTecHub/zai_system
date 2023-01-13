import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/Authentications/authentication_repository.dart';


class VerificationController extends GetxController{
  static VerificationController get instance => Get.find();

  final phoneNo = TextEditingController();

  void phoneAuthentication (String phoneNo){
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }



}