import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kheti_shayak_my_version/controllers/sigh_up_controller.dart';
import 'package:kheti_shayak_my_version/widgets/top_logo.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showPass = false;
  bool showConfirm = false;

  showConfPress() {
    setState(() {
      showConfirm = !showConfirm;
    });
  }

  showPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  @override
  Widget build(BuildContext context) {
    //??
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TopLogo(width: 250.0),
                const SizedBox(height: 40),
                CustomTextField(
                  controller: controller.fullName,
                  hintText: 'Name',
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  controller: controller.email,
                  hintText: "Email",
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  controller: controller.phoneNo,
                  hintText: 'Phone Number',
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  controller: controller.password,
                  hintText: 'Password',
                  onPressed: showPassword,
                  obscureText: showPass ? false : true,
                  icon: showPass ? Icons.visibility_off : Icons.visibility,
                ),
                const SizedBox(height: 50),
                CustomButton(
                  customColor: const Color.fromARGB(255, 10, 185, 121),
                  text: 'Sign Up',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      SignUpController.instance.registerUser(
                        controller.email.text.trim(),
                        controller.password.text.trim(),
                      );
                      // SignUpController.instance.phoneAuthentication(
                      //   controller.phoneNo.text.trim(),
                      // );
                      // Get.to(() => const OTPScreen());
                    }
                  },
                ),
                const SizedBox(height: 20),
                const Text(
                  'or Sign Up With',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade700),
                  ),
                  child: Image.asset(
                    'assets/images/google.png',
                    width: 50,
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account  ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          letterSpacing: 0.6,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'LOG-IN',
                          style: TextStyle(
                            color: Color.fromARGB(255, 10, 185, 121),
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            letterSpacing: 0.6,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
