import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:kheti_shayak_my_version/model/user_model.dart';

import '../utils/helper.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  //??
  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async {
    await _db
        .collection("users")
        .add(user.toJson())
        .whenComplete(
          () => showSnackBar(
            'Success',
            'Account Created',
          ),
        )
        .catchError(
      (error, stackTrace) {
        showSnackBar(
          'Error',
          'Something went Wrong',
        );
      },
    );
  }
}
