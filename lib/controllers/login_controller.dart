import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kheti_shayak_my_version/repository/authentication_repository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  //*** TEC ->
  final email = TextEditingController(text: '');
  final password = TextEditingController(text: '');

  //?? login user ->
  void loginUser(String email, String password) {
    AuthenticationRepository.instance
        .loginWithEmailAndPassword(email, password);
  }
}
