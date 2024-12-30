import 'package:bookbloom/BaseClasses/TextStyleClass.dart';
import 'package:flutter/material.dart';
import 'package:bookbloom/BaseClasses/ColorClass.dart'; // استيراد ColorClass
import 'package:bookbloom/BaseClasses/TextClass.dart'; // استيراد TextClass
import 'package:bookbloom/ShapesClasses/LoginShape.dart';

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
              offset: const Offset(40, 30), // المسافات
              child: CustomPaint(
                size: const Size(307, 231),
                painter: RPSSCustomPainter(),
              ),
            ),
            // استدعاء الكلمة "LOGIN" من Textclass واستخدام النمط FirstMed من TextStyles
        
          ],
        ),
      ),
    );
  }
}
