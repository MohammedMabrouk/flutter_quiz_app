import 'package:flutter/material.dart';
import 'package:flutter_course_quiz_app/data/questions.dart';
import 'package:flutter_course_quiz_app/pages/loginRegister/login_screen.dart';
import 'package:flutter_course_quiz_app/pages/questions/questions_screen.dart';
import 'package:flutter_course_quiz_app/pages/results/results_screen.dart';
import 'package:flutter_course_quiz_app/pages/onboarding/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    // Widget activeWidget = StartScreen(switchScreen);
    Widget activeWidget = const LoginScreen();

    if (activeScreen == 'questions-screen') {
      activeWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    } else if (activeScreen == 'results-screen') {
      activeWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        restartQuiz: restartQuiz,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepPurple,
                Colors.purple,
              ],
            ),
          ),
          child: activeWidget,
        ),
      ),
    );
  }
}
