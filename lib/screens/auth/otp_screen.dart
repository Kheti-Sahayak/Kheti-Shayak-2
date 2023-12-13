import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:kheti_shayak_my_version/widgets/custom_button.dart';

import '../../utils/colors.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<TextStyle?> otpTextStyles = [];

    TextStyle? createStyle(Color color) {
      ThemeData theme = Theme.of(context);
      return theme.textTheme.displaySmall?.copyWith(color: color);
    }

    otpTextStyles = [
      createStyle(accentPurpleColor),
      createStyle(accentYellowColor),
      createStyle(accentDarkGreenColor),
      createStyle(accentOrangeColor),
      createStyle(accentPinkColor),
      createStyle(accentPurpleColor),
    ];

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'OTP',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 50.0),
            OtpTextField(
              numberOfFields: 6,
              borderColor: Colors.teal,
              styles: otpTextStyles,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 100.0),
            CustomButton(
              customColor: Colors.green,
              text: 'Submit',
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
