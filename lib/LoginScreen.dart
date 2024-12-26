import 'package:flutter/material.dart';
import 'package:bookbloom/BaseClasses/ColorClass.dart'; // استيراد ColorClass
import 'package:bookbloom/BaseClasses/TextClass.dart'; // استيراد TextClass
import 'package:bookbloom/ShapesClasses/LoginShape.dart'; // استيراد LoginShape

class TextStyles {
  //Welcome to .. End
  static const FirstBig = TextStyle(
    fontSize: 94.6,
    fontWeight: FontWeight.bold,
    fontFamily: 'Roboto',
    color: Colorclass.brown,
  );
  //BookBloom
  static const FirstBig2 = TextStyle(
    fontSize: 94.6,
    fontWeight: FontWeight.bold,
    fontFamily: 'Roboto',
    color: Colorclass.dustyPink,
  );

  static const FirstMed = TextStyle(
    fontSize: 45.9,
    fontWeight: FontWeight.normal,
    fontFamily: 'DMSans',
    color: Colorclass.gbrown,
  );

  static const inButton = TextStyle(
    fontSize: 45.9,
    fontWeight: FontWeight.normal,
    fontFamily: 'DMSans',
    color: Colorclass.gbrown,
  );
}

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Transform.translate(
              offset: const Offset(40, 30), // المسافات
              child: CustomPaint(
                // رسمة login
                size: const Size(307, 231),
                painter: RPSSCustomPainter(),
              ),
            ),
            // استدعاء الكلمة "LOGIN" من Textclass واستخدام النمط FirstMed من TextStyles
            Text(
              Textclass.Login, // استخدام Login من Textclass
              style: TextStyles.FirstMed, // استخدام FirstMed من TextStyles
            ),
          ],
        ),
      ),
    );
  }
}
