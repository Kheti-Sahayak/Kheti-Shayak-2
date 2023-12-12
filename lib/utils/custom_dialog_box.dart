import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kheti_shayak_my_version/repository/authentication_repository.dart';
import 'package:kheti_shayak_my_version/screens/auth/login_signup_screen.dart';

void customDialogBox(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        // <-- SEE HERE
        title: const Text('Cancel booking'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Are you sure want to logout?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('No'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Yes'),
            onPressed: () {
              AuthenticationRepository.instance.logout();
              Get.offAll(const LoginSignupScreen());
            },
          ),
        ],
      );
    },
  );
}
