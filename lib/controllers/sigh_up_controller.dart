import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kheti_shayak_my_version/repository/authentication_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //*** TEC ->
  final email = TextEditingController(text: '');
  final password = TextEditingController(text: '');
  final fullName = TextEditingController(text: '');
  final phoneNo = TextEditingController(text: '');

  //?? register user ->
  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }

  //?? phone number
  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneNumberAuthentication(phoneNo);
  }
}
