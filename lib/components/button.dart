import 'package:flutter/material.dart';
import 'package:flutter_course_quiz_app/constants/colors.dart';
import '../../constants/strings.dart';

class AppButton extends StatelessWidget {
  final Function() onTap;

  const AppButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: AppColor.blue1,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            Strings.loginScreenSignInText,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
