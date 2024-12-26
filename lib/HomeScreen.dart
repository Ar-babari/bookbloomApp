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
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
            ),
            onPressed: () {
              // Action when button is pressed
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Gradient Button Pressed!')),
              );
            },
            child: Ink(
              decoration: BoxDecoration(
                gradient: Colorclass.gradient,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Gradient Button',
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
