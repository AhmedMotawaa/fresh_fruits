import 'package:flutter/material.dart';
import 'package:fresh_fruits/views/frist_Page.dart';
import 'package:fresh_fruits/views/second_Page.dart';
import 'package:fresh_fruits/views/splash_Screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //scaffoldBackgroundColor: Color(0xFFFDC44B),
          ),
      debugShowCheckedModeBanner: false,
      home: splash_Screens(),
    );
  }
}
