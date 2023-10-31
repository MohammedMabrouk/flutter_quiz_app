import 'package:flutter/material.dart';
import 'package:flutter_course_quiz_app/constants/colors.dart';

class AppTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const AppTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.white_50),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.blue4),
          ),
          fillColor: AppColor.blue5,
          filled: true,
          hintText: hintText,
        ),
        obscureText: obscureText,
      ),
    );
  }
}
