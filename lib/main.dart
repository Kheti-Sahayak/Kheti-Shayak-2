import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kheti_shayak_my_version/repository/authentication_repository.dart';
import 'package:kheti_shayak_my_version/screens/auth/login_signup_screen.dart';
import 'package:kheti_shayak_my_version/utils/colors.dart';
import 'package:kheti_shayak_my_version/utils/secret_key.dart';
import 'package:wiredash/wiredash.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //??
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then(
    (value) => Get.put(
      AuthenticationRepository(),
    ),
  );

  //??
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Wiredash(
        projectId: projectId,
        secret: secret,
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            scaffoldBackgroundColor: bgColor,
            appBarTheme: const AppBarTheme(color: appBarColor),
            useMaterial3: true,
          ),
          home: const LoginSignupScreen(),
        ),
      ),
    );
  }
}
