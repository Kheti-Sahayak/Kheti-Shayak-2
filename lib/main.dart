import 'package:flutter/material.dart';
import 'package:kheti_shayak_my_version/screens/auth/login_signup_screen.dart';
import 'package:kheti_shayak_my_version/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        appBarTheme: const AppBarTheme(color: appBarColor),
        useMaterial3: true,
      ),
      home: const LoginSignupScreen(),
    );
  }
}
