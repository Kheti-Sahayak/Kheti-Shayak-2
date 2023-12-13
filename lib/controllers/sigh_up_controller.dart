import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kheti_shayak_my_version/model/user_model.dart';
import 'package:kheti_shayak_my_version/repository/authentication_repository.dart';

import '../repository/user_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //*** TEC ->
  final email = TextEditingController(text: '');
  final password = TextEditingController(text: '');
  final fullName = TextEditingController(text: '');
  final phoneNo = TextEditingController(text: '');

  final userRepo = Get.put(UserRepository());

  //?? register user ->
  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }

  //?? phone number
  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneNumberAuthentication(phoneNo);
  }

  //?? create user
  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    registerUser(user.email, user.password);
  }
}
