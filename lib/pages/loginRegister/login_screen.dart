import 'package:flutter/material.dart';
import 'package:flutter_course_quiz_app/components/button.dart';
import 'package:flutter_course_quiz_app/components/square_tile.dart';
import 'package:flutter_course_quiz_app/components/textfield.dart';
import 'package:flutter_course_quiz_app/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue6,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Image.asset('assets/images/quiz.png', height: 100),
                const SizedBox(height: 50),
                Text(
                  Strings.loginScreenWelcomeText,
                  style: GoogleFonts.lato(
                      color: AppColor.blue3,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                AppTextField(
                  controller: userNameController,
                  hintText: Strings.loginScreenUsernameHintText,
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                AppTextField(
                  controller: passwordController,
                  hintText: Strings.loginScreenPasswordHintText,
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        Strings.loginScreenForgotPasswordText,
                        style: TextStyle(
                          color: AppColor.blue3,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                AppButton(onTap: () {}),
                const SizedBox(height: 50),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          Strings.loginScreenContinueWihText,
                          style: TextStyle(color: AppColor.blue4),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: "assets/images/google.png"),
                    SizedBox(width: 25),
                    SquareTile(imagePath: "assets/images/facebook.png"),
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Strings.loginScreenNotMemberText,
                      style: TextStyle(color: AppColor.blue4),
                    ),
                    SizedBox(width: 4),
                    Text(
                      Strings.loginScreenResisterNowText,
                      style: TextStyle(
                          color: AppColor.blue3, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
