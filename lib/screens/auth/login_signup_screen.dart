import 'package:flutter/material.dart';
import 'package:kheti_shayak_my_version/screens/auth/signup_screen.dart';
import 'package:kheti_shayak_my_version/widgets/top_logo.dart';

import '../../widgets/custom_button.dart';
import 'login_screen.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 140),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TopLogo(
                width: 200.0,
                height: 200.0,
              ),
              const SizedBox(height: 60.0),
              CustomButton(
                customColor: Colors.teal,
                text: "Log In",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 25.0),
              CustomButton(
                customColor: Colors.orangeAccent,
                text: "Sign Up",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(bottom: 40),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Terms of Use",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "Privacy Policy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
