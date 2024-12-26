import 'package:bookbloom/ShapesClasses/LoginShape.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Transform.translate(
              offset: const Offset(40, 30), //المسافات
              child: CustomPaint(
                // رسمة login
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
