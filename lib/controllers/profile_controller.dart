import 'package:get/get.dart';
import 'package:kheti_shayak_my_version/repository/authentication_repository.dart';
import 'package:kheti_shayak_my_version/repository/user_repository.dart';
import 'package:kheti_shayak_my_version/utils/helper.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  //??
  getUserData() {
    final email = _authRepo.firebaseUser.value?.email;
    if (email != null) {
      return _userRepo.getUserDetails(email);
    } else {
      showSnackBar('Error', 'Something went wrong!!');
    }
  }
}
