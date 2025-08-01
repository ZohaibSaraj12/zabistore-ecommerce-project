import 'package:flutter/material.dart';
import 'package:project_learning/screens/home/home_screen.dart';
import 'package:project_learning/widgets/custom_scroll_behavior.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
       builder: (context, child) {
    return ScrollConfiguration(
      
      behavior: CustomScrollBehavior(),
      child: child!,
    );
  },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
        ),
        textTheme: TextTheme(
          titleSmall: TextStyle(
            fontFamily: "PoppinsRegular",
            fontSize: 13,
            fontWeight: FontWeight.w600
          )
        )
      ),
      home: HomeScreen(),
    );
  }
}
