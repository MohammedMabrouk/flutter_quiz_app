import 'package:flutter/material.dart';
import 'package:flutter_course_quiz_app/components/button.dart';

import '../../components/profile_headline_title.dart';
import '../../components/profile_headline_value.dart';
import '../../constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue6,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.person,
                    size: 80,
                    color: AppColor.blue4,
                  ),
                ),
                const Text(
                  'John Smith',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 20, right: 25, left: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: const [
                      TableRow(
                        children: [
                          ProfileHeadlineTitle(text: 'Level'),
                          ProfileHeadlineTitle(text: 'Completed\nLevels'),
                          ProfileHeadlineTitle(text: 'Points'),
                        ],
                      ),
                      TableRow(
                        children: [
                          ProfileHeadLineValue(text: 'Begginer'),
                          ProfileHeadLineValue(text: '5'),
                          ProfileHeadLineValue(text: '56'),
                        ],
                      ),
                    ],
                  ),
                ),
                // form input
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          icon: Icon(Icons.person),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          icon: Icon(Icons.mail),
                        ),
                      ),
                    ],
                  ),
                ),
                // logout button
                Container(
                  width: 200,
                  child: AppButton(
                    text: 'Log out',
                    onTap: () {},
                    isPrimary: true,
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
