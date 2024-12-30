// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookbloom/BaseClasses/ColorClass.dart';

import 'package:bookbloom/ShapesClasses/LoginShape.dart'; // كلاس الرسمة
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorclass.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // الرسمة في الأعلى
            Transform.translate(
              offset: const Offset(90, 7), // المسافات للرسمة
              child: CustomPaint(
                size: const Size(307, 231),
                painter: RPSSCustomPainter(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
