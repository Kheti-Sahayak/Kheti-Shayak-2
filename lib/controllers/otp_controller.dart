import 'package:get/get.dart';
import 'package:kheti_shayak_my_version/repository/authentication_repository.dart';
import 'package:kheti_shayak_my_version/screens/home/home_screen.dart';

class OtpController extends GetxController {
  static OtpController get instance => Get.find();

  //??
  void verifyOtp(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOtp(otp);

    isVerified ? Get.offAll(() => const HomeScreen()) : Get.back();
  }
}
