import 'package:flutter/material.dart';
import 'package:flutter_course_quiz_app/constants/colors.dart';

class ProfileHeadlineTitle extends StatelessWidget {
  final String text;

  const ProfileHeadlineTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 14, color: AppColor.blue3),
      textAlign: TextAlign.center,
    );
  }
}
