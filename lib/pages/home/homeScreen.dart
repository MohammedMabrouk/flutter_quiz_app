import 'package:flutter/material.dart';
import 'package:flutter_course_quiz_app/components/category_item.dart';

import '../../components/active_category_item.dart';
import '../../constants/colors.dart';
import '../../constants/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue6,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 10,
                ),
                child: Text(
                  'My Progrss',
                  style: TextStyle(
                    color: AppColor.blue4,
                    fontSize: 18,
                  ),
                ),
              ),
              // List of progress items
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ActiveCategoryItem(),
                    ActiveCategoryItem(),
                    ActiveCategoryItem(),
                    ActiveCategoryItem()
                  ],
                ),
              ),
              // Categories
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 10,
                ),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    color: AppColor.blue4,
                    fontSize: 18,
                  ),
                ),
              ),
              // Categories Items

              GridView.count(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 3,
                children: <Widget>[
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                ].toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
