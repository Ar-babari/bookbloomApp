import 'package:bookbloom/HomeScreen.dart';
import 'package:bookbloom/LoginScreen.dart';
import 'package:bookbloom/SignUpScreen.dart';
import 'package:bookbloom/readbookScreen.dart';
import 'package:bookbloom/writeingspaceScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signupscreen(),
    );
  }
}
