import 'package:flutter/material.dart';
import 'package:flutter_course_quiz_app/constants/colors.dart';
import 'package:flutter_course_quiz_app/pages/home/homeScreen.dart';

import '../../constants/strings.dart';

class HomeScreenContainer extends StatefulWidget {
  const HomeScreenContainer({super.key});

  @override
  State<HomeScreenContainer> createState() => _HomeScreenContainerState();
}

class _HomeScreenContainerState extends State<HomeScreenContainer> {
  int currentPageIndex = 0;
  String pageTitle = Strings.homeScreenHomeLabelText;

  var titleMap = {
    0: Strings.homeScreenHomeLabelText,
    1: Strings.homeScreenLeaderBoardLabelText,
    2: Strings.homeScreenProfileLabelText,
    3: Strings.homeScreenSettingsLabelText,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleMap[currentPageIndex]!),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: AppColor.blue4,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_rounded),
            label: Strings.homeScreenHomeLabelText,
          ),
          NavigationDestination(
            icon: Icon(Icons.trending_up_rounded),
            label: Strings.homeScreenLeaderBoardLabelText,
          ),
          NavigationDestination(
            icon: Icon(Icons.person_2_rounded),
            label: Strings.homeScreenProfileLabelText,
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: Strings.homeScreenSettingsLabelText,
          ),
        ],
      ),
      body: <Widget>[
        HomeScreen(),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 4'),
        ),
      ][currentPageIndex],
    );
  }
}
