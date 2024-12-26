import 'package:bookbloom/BaseClasses/ColorClass.dart';
import 'package:flutter/material.dart';
// استيراد الكلاس الذي يحتوي على الألوان

class GradientButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gradient Button Demo'),
        ),
        body: Center(
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // زوايا مستديرة
                ),
              ),
            ),
            onPressed: () {
              // التنقل إلى الشاشة الثانية
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            },
            child: Ink(
              decoration: BoxDecoration(
                gradient: Colorclass.gradient,
                borderRadius: BorderRadius.circular(30), // زوايا مستديرة
              ),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                    horizontal: 40, vertical: 15), // حجم الزر
                child: Text(
                  'Go',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Second Screen!',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
