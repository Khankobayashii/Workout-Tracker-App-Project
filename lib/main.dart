import 'package:flutter/material.dart';
// import 'package:workout_fitness/view/home/home_view.dart';
 import 'package:workout_fitness/view/login/auth.dart';

// import 'package:workout_fitness/view/exercise/exercise_view.dart';
// import 'package:workout_fitness/view/meal_plan/meal_plan_view.dart';
// import 'package:workout_fitness/view/menu/menu_view.dart';
// import 'package:workout_fitness/view/menu/yoga_view.dart';
// import 'package:workout_fitness/view/menu/menu_view.dart';
import 'common/color_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workout Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Quicksand",
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: false,
      ),
      home: const AuthScreen(),
    );
  }
}


