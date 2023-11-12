import 'package:flutter/material.dart';

class ProfileHeadLineValue extends StatelessWidget {
  final String text;

  const ProfileHeadLineValue({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.orange),
        textAlign: TextAlign.center,
      ),
    );
  }
}
