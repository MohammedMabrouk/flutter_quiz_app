import 'package:flutter/material.dart';
import 'package:flutter_course_quiz_app/components/button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/textfield.dart';
import '../../constants/colors.dart';
import '../../constants/strings.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Image.asset('assets/images/quiz.png', height: 100),
            const SizedBox(height: 50),
            Text(
              Strings.registerScreenTitleText,
              style: GoogleFonts.lato(
                  color: AppColor.blue3,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            AppTextField(
              controller: null,
              hintText: Strings.registerScreenUsernameHintText,
              obscureText: false,
            ),
            const SizedBox(height: 10),
            AppTextField(
              controller: null,
              hintText: Strings.registerScreenEmailHintText,
              obscureText: false,
            ),
            const SizedBox(height: 10),
            AppTextField(
              controller: null,
              hintText: Strings.registerScreenPasswordHintText,
              obscureText: false,
            ),
            const SizedBox(height: 10),
            AppTextField(
              controller: null,
              hintText: Strings.registerScreenConfirmPasswordHintText,
              obscureText: false,
            ),
            const SizedBox(height: 25),
            AppButton(
              text: Strings.registerScreenRegisterText,
              onTap: () {},
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.registerScreenAlreadyUserText,
                  style: TextStyle(color: AppColor.blue4),
                ),
                SizedBox(width: 4),
                Text(
                  Strings.registerScreenLoginText,
                  style: TextStyle(
                      color: AppColor.blue3, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
