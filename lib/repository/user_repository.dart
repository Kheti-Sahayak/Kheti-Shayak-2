import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:kheti_shayak_my_version/model/user_model.dart';

import '../utils/helper.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  //??
  final _db = FirebaseFirestore.instance;

  //?? create user ->
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

  //?? single user details
  Future<UserModel> getUserDetails(String email) async {
    final snapshot =
        await _db.collection("users").where("Email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;

    return userData;
  }

  //?? all user details
  Future<List<UserModel>> getAllUserDetails() async {
    final snapshot = await _db.collection("users").get();
    final userData =
        snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();

    return userData;
  }
}
