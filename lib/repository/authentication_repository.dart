import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:kheti_shayak_my_version/screens/auth/login_signup_screen.dart';
import 'package:kheti_shayak_my_version/screens/home/home_screen.dart';
import 'package:kheti_shayak_my_version/utils/helper.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
    super.onReady();
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const LoginSignupScreen())
        : Get.offAll(() => const HomeScreen());
  }

  //?? for signUp
  Future<void> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      firebaseUser.value != null
          ? Get.offAll(() => const HomeScreen())
          : Get.offAll(() => const LoginSignupScreen());
    } on FirebaseAuthException {
      showSnackBar('Error', 'Something went wrong');
    }
  }

  //?? for login
  Future<void> loginWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      firebaseUser.value != null
          ? Get.offAll(() => const HomeScreen())
          : Get.offAll(() => const LoginSignupScreen());
    } on FirebaseAuthException {
      showSnackBar('Error', 'Something went wrong');
    }
  }

  //?? logout
  Future<void> logout() async => await _auth.signOut();
}
