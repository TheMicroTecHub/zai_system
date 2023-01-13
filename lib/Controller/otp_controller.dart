import 'package:get/get.dart';
import 'package:zai_system/Authentications/authentication_repository.dart';
import 'package:zai_system/Components/home_screen.dart';



class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const HomeScreen()) : Get.back();
  }
}