import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ActiveCategoryItem extends StatelessWidget {
  const ActiveCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 110,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.white_50,
      ),
      child: Column(
        children: [
          Image.asset('assets/images/quiz.png', height: 50),
          const SizedBox(height: 10),
          Text(
            'Historical',
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: AppColor.blue3),
          ),
          const SizedBox(height: 10),
          LinearProgressIndicator(
            value: 0.5,
          )
        ],
      ),
    );
  }
}
